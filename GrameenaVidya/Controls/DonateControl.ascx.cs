using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GrameenaVidya.AppCode;
using System.Data;
using System.Drawing;

namespace GrameenaVidya.Controls
{
    public partial class DonateControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Control myControl = this;
                var hiddenField = this.Parent.FindControl("hfDCPage") as HiddenField;
                hfDCPage1.Value = hiddenField.Value;
                rbdCountry.Checked = true;
                if (HttpContext.Current.User.Identity.IsAuthenticated)
                {

                    UserDetails ud = new UserDetails();
                    int UserID = Convert.ToInt32(ud.UserID);
                    if (UserID == 0)
                    {
                        LoadCountries();

                    }
                    else
                    {
                        DataSet Doners = GVSchools.DAL.Schools.GetSelectDoner(UserID);
                        DataTable dt = new DataTable();
                        dt = Doners.Tables[0];
                        string UserName = dt.Rows[0]["UserName"].ToString();
                        int CountryID = Convert.ToInt32(dt.Rows[0]["CountryID"]);
                        int StateID = Convert.ToInt32(dt.Rows[0]["StateID"]);
                        string Email = dt.Rows[0]["Email"].ToString();
                        string Address = dt.Rows[0]["Address"].ToString();
                        string CountryName = dt.Rows[0]["CountryName"].ToString();
                        string State = dt.Rows[0]["StateName"].ToString();
                        string Pincode = dt.Rows[0]["Pincode"].ToString();
                        string Mobile = dt.Rows[0]["Mobile"].ToString();
                        txtDonarname.Text = UserName;
                        txtDonarEmail.Text = Email;
                        txtDonarAddress.Text = Address;

                        DataSet StateFinal = GVSchools.DAL.Schools.GetState(State);
                        if (StateFinal.Tables[0].Rows.Count > 0)
                        {
                            ddlState1.DataSource = StateFinal;
                            ddlState1.DataValueField = "StateID";
                            ddlState1.DataTextField = "StateName";
                            ddlState1.DataBind();
                            ddlState1.Enabled = true;
                        }
                        DataSet CountyFinal = GVSchools.DAL.Schools.GetCountry(CountryName);
                        if (CountyFinal.Tables[0].Rows.Count > 0)
                        {
                            ddlcountry.DataSource = CountyFinal;
                            ddlcountry.DataValueField = "CountryId";
                            ddlcountry.DataTextField = "CountryName";
                            ddlcountry.DataBind();
                            ddlcountry.Enabled = true;
                        }
                        //txtDonarCountry.Text = CountryName;
                        //txtDonarState.Text = StateName;
                        txtDonarPin.Text = Pincode;
                        txtDonarMobile.Text = Mobile;


                    }


                }
                else
                {
                    DataSet CountyFinal = GVSchools.DAL.Schools.GetCountry();
                    if (CountyFinal.Tables[0].Rows.Count > 0)
                    {
                        ddlcountry.DataSource = CountyFinal;
                        ddlcountry.DataValueField = "CountryId";
                        ddlcountry.DataTextField = "CountryName";
                        ddlcountry.DataBind();
                        ddlcountry.Enabled = true;
                        //  ddlcountry.SelectedItem.Text = rbdCountry.Text;
                    }
                }


            }
        }

        private void LoadCountries()
        {
            ddlcountry.DataSource = GVSchools.DAL.Schools.GetCountry(); //GrameenaVidya.BLL.Donate.GetCountries().Tables[0];
            ddlcountry.DataTextField = "CountryName";
            ddlcountry.DataValueField = "CountryID";
            ddlcountry.DataBind();
            //    ddlcountry.SelectedItem.Text = rbdCountry.Text;
            //   ddlcountry.Items.Insert(0, new ListItem("Select Country", "0"));
        }

        private void LoadStates(int CountryID)
        {
            ddlState1.DataSource = GrameenaVidya.BLL.Donate.GetStates(CountryID).Tables[0];
            ddlState1.DataTextField = "StateName";
            ddlState1.DataValueField = "StateID";
            ddlState1.DataBind();

            ddlState1.Items.Insert(0, new ListItem("Select State", "0"));
        }

        protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            LoadStates(Convert.ToInt32(ddlcountry.SelectedValue));
        }
        
        protected void lbDonate_Click(object sender, EventArgs e)
        {
            //int PackageTypeID = Convert.ToInt32(hfPackageTypeID.Value);
          //  ScriptManager.RegisterStartupScript(this, typeof(string), "Clear", "MakePayment();", true);
            int PackageTypeID = 0;
            string PackageTypeName = "";
            string Package = "";
            string PackageID = "";
            double PackageAmount = 0;
           
            string UserIDLast = "1";
            try
            {
                UserIDLast = hfUserIDFinal.Value;

            }
            catch (Exception ex)
            {

                lblDError.Text = ex.Message;
            }
         
            if (UserIDLast != "")
            {
                try
                {
                    PackageAmount = Convert.ToDouble(hfPackageAmount.Value);
                    PackageID = hfPackageID.Value;
                    string PackageType = hfPackageTypeID.Value;
                    string packs2 = PackageType.TrimEnd('_');
                    string[] packsmain = packs2.Split('_');
                    string packs1=PackageID.TrimEnd('_');
                    string[] packs = packs1.Split('_');
                    string DonationMode = "";
                    if (rbnetbanking.Checked) DonationMode = "Net Banking";
                    if (rbchequee.Checked) DonationMode = "chequee";
                    int RetVal = 0;

                    lblDError.Text = "RetVal==" + PackageTypeID + "," + PackageID + "," + PackageAmount + "," + UserIDLast + "," + DonationMode;
                    if (packs.Length == 1)
                    {
                        RetVal = GrameenaVidya.BLL.Donate.Insert_Donation(Convert.ToInt32(packsmain[0]), packs[0], PackageAmount, Convert.ToInt32(UserIDLast), DonationMode);
                    }
                    else {
                        for (int i = 0; i < packs.Length;i++ )
                        {
                            RetVal = GrameenaVidya.BLL.Donate.Insert_Donation(Convert.ToInt32(packsmain[i]), packs[i], PackageAmount, Convert.ToInt32(UserIDLast), DonationMode);
                        }
                    
                    }


                    if (RetVal > 0)
                    {
                        Session["QueryValues"] = PackageTypeName + "~" + Package + "~" + PackageAmount + "~" + UserIDLast + "~" + RetVal;
                        Session["DonarDetails"] = txtDonarname.Text + "~" + txtDonarEmail.Text + "~" + txtDonarMobile.Text + "~" + txtDonarAddress.Text + "~" + ddlcountry.SelectedItem.Text + "~" + ddlState1.SelectedItem.Text + "~" + txtDonarPin.Text + "~" + txtDonarLocation.Text;

                        lblDError.Text = "Your Donation Successfully  Submitted";
                        this.lblDError.ForeColor = Color.Green;


                        Response.Redirect("PurchaseOrder.aspx", false);



                    }
                }
                catch (Exception ex)
                {

                    lblDError.Text = "Error <br/>" + ex.Message;
                  //  this.lblDError.ForeColor = Color.Red;
                }

            }
            else
            {
                ScriptManager.RegisterStartupScript(this, typeof(string), "Clear", "MakePayment();", true);
            }

        }


          
    }
}