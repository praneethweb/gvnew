using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Collections.Specialized;
using CCA.Util;
using System.IO;


namespace GrameenaVidya.Donate
{
    public partial class PaymentStatus : System.Web.UI.Page
    {
        string query;
        string WorkingKey = "y8kvclgoroaj0tks84";

        protected void Page_Load(object sender, EventArgs e)
        {
            string OrderID = "";
            if (!Page.IsPostBack)
            {
                try
                {
                    CCACrypto func = new CCACrypto();
                    string encResponse = func.Decrypt(Request.Form["return_url"], WorkingKey);
                    string A = Request.Form["return_url"];
                    string B = Request.Form[0];
                    string C = Request.Form.ToString();

                    NameValueCollection Params = new NameValueCollection();
                    string[] segments = C.Split('&');
                    foreach (string seg in segments)
                    {
                        string[] parts = seg.Split('=');
                        if (parts.Length > 0)
                        {
                            string Key = parts[0].Trim();
                            string Value = parts[1].Trim();

                            Params.Add(Key, Value);
                        }
                    }

                    string strVerify = func.verifychecksum(Params["Merchant_Id"].ToString(), Params["Order_Id"].ToString(), Params["Amount"].ToString(), Params["AuthDesc"].ToString(), WorkingKey, Params["Checksum"].ToString());

                    OrderID = Params["Order_Id"].ToString();

                    if (Params["AuthDesc"].ToString() == "Y")
                    {
                        divSuccess.Visible = true;
                        divFailure.Visible = false;
                        //UPDATE ORDER STATUS
                        //S.UpdateOrderDetails(OrderID);
                        //TLW.BLL.PurchaseOrders.PurchaseOrders_SuccessOrder(Convert.ToInt32(OrderID));
                        //divSuccess.Visible = true;
                        //divError.Visible = false;
                        //lblOrderID.Text = Params["Order_Id"].ToString();
                        //SEND MAIL
                        //try
                        //{
                        //    SendPurchaseMail(Convert.ToInt32(OrderID));
                        //}
                        //catch (Exception ex1) { }

                    }
                    else
                    {
                        //try
                        //{
                        //    TLW.BLL.PurchaseOrders.PurchaseOrders_FailureOrder(Convert.ToInt32(OrderID));
                        //    SendFailureMail(Convert.ToInt32(OrderID));
                        //}
                        //catch (Exception ex2) { }

                        //divSuccess.Visible = false;
                        //divError.Visible = true;

                        divSuccess.Visible = false;
                        divFailure.Visible = true;

                    }

                }
                catch (Exception ex)
                {
                    divSuccess.Visible = false;
                    //divError.Visible = true;
                    //SendFailureMail(Convert.ToInt32(OrderID));
                }

                //UPDATE COUPON DETAILS
                try
                {
                    //S.UpdateCouponStatus(OrderID);
                }
                catch (Exception ex) { }

            }
        }
    }
}