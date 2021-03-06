<%@ Page Title="TeachLearnWeb.com | Purchase Order" Language="C#" AutoEventWireup="true" CodeBehind="PurchaseOrder.aspx.cs" Inherits="GrameenaVidya.PurchaseOrder" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    
    <title>:: Grameena Vidya ::</title>
	<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" type="image/ico" href="../Images/favicon.ico" />

	<link rel="stylesheet" href="../../foundation-icons/foundation-icons.css" />
    <link rel="stylesheet" href="../../CSS/myfont.css" />
    <script src="../../Scripts/modernizr.js" type="text/javascript"></script>
    <script src="../../Scripts/classie.js" type="text/javascript"></script>

    
    <link href="../CSS/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/custom.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/main.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/style.css" rel="stylesheet" type="text/css" />

    <style>
        .labelName{ text-align:right; padding:15px; display:inline-block;}
        .labelValue{ text-align:left; padding:15px;display:inline-block;}
        
        .edited-table2 th {
            background: #ffd133;
            
            font-size:20px;
            
            
            border: 1px solid #ddd;
        }
        
        .edited-table2 td {
            background: #f7f7f7;
            padding: 5px 10px;
            
            border: 1px solid #ddd;
        }

        .table td
        {
            text-align:left;
        }

        
    </style>

    <script>
        window.onload = function () {
            var d = new Date().getTime();
            document.getElementById("tid").value = d;
        };
    </script>


</head>
<body>


    
    <form method="post" name="customerData" action="ccavRequestHandler.aspx">
        <div class="container">


            <br />
            
            <div class="row">
                <div class="col-md-12 text-center">
                    <img src="../images/logo.png" />
                </div>
            </div>

            <br />
            <div class="row">
    <div class="">
		<div class="purchase radius">
            <div class="row">
                <div class="">
                     <div class="col-md-6 col-md-offset-3 edited-table2">
                         
                            
                        <table class="table">
                            <thead>
                                <tr>
                                    <th colspan="2">
                                        Your Donation Details
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                            
                            
                            <tr>
                            <td class="text-right" width="50%">Transaction ID</td>
                            <td class="text-left label-lbl" width="50%"><b><%=OrderID%></b></td>
                            </tr>
                            <tr>
                            <td class="text-right">Package Type</td>
                            <td class="text-left label-lbl"><b><%=PackageTypeName%></b></td>
                            </tr>

                            <tr>
                            <td class="text-right">Package</td>
                            <td class="text-left label-lbl"><b><%=Package%></b></td>
                            </tr>

                            
                            <tr>
                            <td class="text-right">Donation Amount</td>
                            <td class="text-left amount-lbl"><b>Rs.&nbsp;<%=PackageAmount%> /-</b>
                                <input type="hidden" name="order_id" value="<%=OrderID%>"/>
                                <input type="hidden" name="amount" value="<%=PackageAmount%>"/>
                                <input type="hidden" name="currency" value="INR"/>
                                <input type="hidden" name="redirect_url" value="http://www.grameenavidya.org/Donate/ccavResponseHandler.aspx"/>
                                <input type="hidden" name="cancel_url" value="http://www.grameenavidya.org/Donate/ccavResponseHandler.aspx"/>
                                <input type="hidden" name="language" value="EN"/>
                                <input type="hidden" name="merchant_id" value="<%=MerchantId%>"/>

                                <input type="hidden" name="billing_name" value="<%=DonarName%>"/>
                                <input type="hidden" name="billing_address" value="<%=DonarAddress%>"/>
                                <input type="hidden" name="billing_city" value="<%=DonarLocation%>"/>
                                <input type="hidden" name="billing_state" value="<%=DonarState%>"/>
                                <input type="hidden" name="billing_zip" value="<%=DonarPin%>"/>
                                <input type="hidden" name="billing_country" value="<%=DonarCountry%>"/>
                                <input type="hidden" name="billing_tel" value="<%=DonarMobile%>"/>
                                <input type="hidden" name="billing_email" value="<%=DonarEmail%>"/>
                            </td>
                            </tr>

                            </tbody>
                        </table> 
                        <div class="text-center">

                        <INPUT TYPE="submit" value="Make Payment" class="btn btn-primary btn-lg">

                    <%--<asp:Button ID="btnMakePayment"  runat="server"  CssClass="btn btn-primary btn-lg"
                    Text="Make Payment" PostBackUrl="http://www.ccavenue.com/shopzone/cc_details.jsp" />--%>
                    <br />
                    <br />
                    <asp:HyperLink ID="hlPurchase" runat="server" NavigateUrl="~/Donate/Donate.aspx" Text="Back to Donate"></asp:HyperLink>
                    </div>
                    </div>
                </div>
            </div>
	    </div>
	</div>
</div>
                <%--<asp:HiddenField ID="Merchant_Id" runat="server" />
                <asp:HiddenField ID="encRequest" runat="server" />
                <asp:HiddenField ID="hfUserID" runat="server" />--%>
                <br /><br />
            
        </div>
        
    </form>
</body>

<!-- <script language="javascript" type="text/javascript" src="json.js"></script>-->
<!-- <script src="jquery-1.7.2.min.js"></script>-->
 
<script language="javascript"  src="../js/json.js" type="text/javascript"></script>
<script src="../js/jquery-1.7.2.min.js" type="text/javascript"></script>

<script type="text/javascript">
    $(function () {

        /* json object contains
        1) payOptType - Will contain payment options allocated to the merchant. Options may include Credit Card, Net Banking, Debit Card, Cash Cards or Mobile Payments.
        2) cardType - Will contain card type allocated to the merchant. Options may include Credit Card, Net Banking, Debit Card, Cash Cards or Mobile Payments.
        3) cardName - Will contain name of card. E.g. Visa, MasterCard, American Express or and bank name in case of Net banking. 
        4) status - Will help in identifying the status of the payment mode. Options may include Active or Down.
        5) dataAcceptedAt - It tell data accept at CCAvenue or Service provider
        6)error -  This parameter will enable you to troubleshoot any configuration related issues. It will provide error description.
        */
        var jsonData;
        var access_code = "AVSV69EC67BC47VSCB" // shared by CCAVENUE 
        var amount = "1.00";
        var currency = "INR";

        $.ajax({
            url: 'https://secure.ccavenue.com/transaction/transaction.do?command=getJsonData&access_code=' + access_code + '&currency=' + currency + '&amount=' + amount,
            dataType: 'jsonp',
            jsonp: false,
            jsonpCallback: 'processData',
            success: function (data) {
                jsonData = data;
                // processData method for reference
                processData(data);
                // get Promotion details
                $.each(jsonData, function (index, value) {
                    if (value.Promotions != undefined && value.Promotions != null) {
                        var promotionsArray = $.parseJSON(value.Promotions);
                        $.each(promotionsArray, function () {
                            console.log(this['promoId'] + " " + this['promoCardName']);
                            var promotions = "<option value=" + this['promoId'] + ">"
							  		+ this['promoName'] + " - " + this['promoPayOptTypeDesc'] + "-" + this['promoCardName'] + " - " + currency + " " + this['discountValue'] + "  " +
							  		this['promoType'] + "</option>";
                            $("#promo_code").find("option:last").after(promotions);
                        });
                    }
                });
            },
            error: function (xhr, textStatus, errorThrown) {
                alert('An error occurred! ' + (errorThrown ? errorThrown : xhr.status));
                //console.log("Error occured");
            }
        });

        $(".payOption").click(function () {
            var paymentOption = "";
            var cardArray = "";
            var payThrough, emiPlanTr;
            var emiBanksArray, emiPlansArray;

            paymentOption = $(this).val();
            $("#card_type").val(paymentOption.replace("OPT", ""));
            $("#card_name").children().remove(); // remove old card names from old one
            $("#card_name").append("<option value=''>Select</option>");
            $("#emi_div").hide();

            //console.log(jsonData);
            $.each(jsonData, function (index, value) {
                //console.log(value);
                if (paymentOption != "OPTEMI") {
                    if (value.payOpt == paymentOption) {
                        cardArray = $.parseJSON(value[paymentOption]);
                        $.each(cardArray, function () {
                            $("#card_name").find("option:last").after("<option class='" + this['dataAcceptedAt'] + " " + this['status'] + "'  value='" + this['cardName'] + "'>" + this['cardName'] + "</option>");
                        });
                    }
                }

                if (paymentOption == "OPTEMI") {
                    if (value.payOpt == "OPTEMI") {
                        $("#emi_div").show();
                        $("#card_type").val("CRDC");
                        $("#data_accept").val("Y");
                        $("#emi_plan_id").val("");
                        $("#emi_tenure_id").val("");
                        $("span.emi_fees").hide();
                        $("#emi_banks").children().remove();
                        $("#emi_banks").append("<option value=''>Select your Bank</option>");
                        $("#emi_tbl").children().remove();

                        emiBanksArray = $.parseJSON(value.EmiBanks);
                        emiPlansArray = $.parseJSON(value.EmiPlans);
                        $.each(emiBanksArray, function () {
                            payThrough = "<option value='" + this['planId'] + "' class='" + this['BINs'] + "' id='" + this['subventionPaidBy'] + "' label='" + this['midProcesses'] + "'>" + this['gtwName'] + "</option>";
                            $("#emi_banks").append(payThrough);
                        });

                        emiPlanTr = "<tr><td>&nbsp;</td><td>EMI Plan</td><td>Monthly Installments</td><td>Total Cost</td></tr>";

                        $.each(emiPlansArray, function () {
                            emiPlanTr = emiPlanTr +
							"<tr class='tenuremonth " + this['planId'] + "' id='" + this['tenureId'] + "' style='display: none'>" +
								"<td> <input type='radio' name='emi_plan_radio' id='" + this['tenureMonths'] + "' value='" + this['tenureId'] + "' class='emi_plan_radio' > </td>" +
								"<td>" + this['tenureMonths'] + "EMIs. <label class='merchant_subvention'>@ <label class='emi_processing_fee_percent'>" + this['processingFeePercent'] + "</label>&nbsp;%p.a</label>" +
								"</td>" +
								"<td>" + this['currency'] + "&nbsp;" + this['emiAmount'].toFixed(2) +
								"</td>" +
								"<td><label class='currency'>" + this['currency'] + "</label>&nbsp;" +
									"<label class='emiTotal'>" + this['total'].toFixed(2) + "</label>" +
									"<label class='emi_processing_fee_plan' style='display: none;'>" + this['emiProcessingFee'].toFixed(2) + "</label>" +
									"<label class='planId' style='display: none;'>" + this['planId'] + "</label>" +
								"</td>" +
							"</tr>";
                        });
                        $("#emi_tbl").append(emiPlanTr);
                    }
                }
            });

        });


        $("#card_name").click(function () {
            if ($(this).find(":selected").hasClass("DOWN")) {
                alert("Selected option is currently unavailable. Select another payment option or try again later.");
            }
            if ($(this).find(":selected").hasClass("CCAvenue")) {
                $("#data_accept").val("Y");
            } else {
                $("#data_accept").val("N");
            }
        });

        // Emi section start      
        $("#emi_banks").live("change", function () {
            if ($(this).val() != "") {
                var cardsProcess = "";
                $("#emi_tbl").show();
                cardsProcess = $("#emi_banks option:selected").attr("label").split("|");
                $("#card_name").children().remove();
                $("#card_name").append("<option value=''>Select</option>");
                $.each(cardsProcess, function (index, card) {
                    $("#card_name").find("option:last").after("<option class=CCAvenue value='" + card + "' >" + card + "</option>");
                });
                $("#emi_plan_id").val($(this).val());
                $(".tenuremonth").hide();
                $("." + $(this).val() + "").show();
                $("." + $(this).val()).find("input:radio[name=emi_plan_radio]").first().attr("checked", true);
                $("." + $(this).val()).find("input:radio[name=emi_plan_radio]").first().trigger("click");

                if ($("#emi_banks option:selected").attr("id") == "Customer") {
                    $("#processing_fee").show();
                } else {
                    $("#processing_fee").hide();
                }

            } else {
                $("#emi_plan_id").val("");
                $("#emi_tenure_id").val("");
                $("#emi_tbl").hide();
            }



            $("label.emi_processing_fee_percent").each(function () {
                if ($(this).text() == 0) {
                    $(this).closest("tr").find("label.merchant_subvention").hide();
                }
            });

        });

        $(".emi_plan_radio").live("click", function () {
            var processingFee = "";
            $("#emi_tenure_id").val($(this).val());
            processingFee =
					"<span class='emi_fees' >" +
			 			"Processing Fee:" + $(this).closest('tr').find('label.currency').text() + "&nbsp;" +
			 			"<label id='processingFee'>" + $(this).closest('tr').find('label.emi_processing_fee_plan').text() +
			 			"</label><br/>" +
                			"Processing fee will be charged only on the first EMI." +
                	"</span>";
            $("#processing_fee").children().remove();
            $("#processing_fee").append(processingFee);

            // If processing fee is 0 then hiding emi_fee span
            if ($("#processingFee").text() == 0) {
                $(".emi_fees").hide();
            }

        });


        $("#card_number").focusout(function () {
            /*
            emi_banks(select box) option class attribute contains two fields either allcards or bin no supported by that emi 
            */
            if ($('input[name="payment_option"]:checked').val() == "OPTEMI") {
                if (!($("#emi_banks option:selected").hasClass("allcards"))) {
                    if (!$('#emi_banks option:selected').hasClass($(this).val().substring(0, 6))) {
                        alert("Selected EMI is not available for entered credit card.");
                    }
                }
            }

        });


        // Emi section end 		


        // below code for reference 

        function processData(data) {
            var paymentOptions = [];
            var creditCards = [];
            var debitCards = [];
            var netBanks = [];
            var cashCards = [];
            var mobilePayments = [];
            $.each(data, function () {
                // this.error shows if any error   	
                console.log(this.error);
                paymentOptions.push(this.payOpt);
                switch (this.payOpt) {
                    case 'OPTCRDC':
                        var jsonData = this.OPTCRDC;
                        var obj = $.parseJSON(jsonData);
                        $.each(obj, function () {
                            creditCards.push(this['cardName']);
                        });
                        break;
                    case 'OPTDBCRD':
                        var jsonData = this.OPTDBCRD;
                        var obj = $.parseJSON(jsonData);
                        $.each(obj, function () {
                            debitCards.push(this['cardName']);
                        });
                        break;
                    case 'OPTNBK':
                        var jsonData = this.OPTNBK;
                        var obj = $.parseJSON(jsonData);
                        $.each(obj, function () {
                            netBanks.push(this['cardName']);
                        });
                        break;

                    case 'OPTCASHC':
                        var jsonData = this.OPTCASHC;
                        var obj = $.parseJSON(jsonData);
                        $.each(obj, function () {
                            cashCards.push(this['cardName']);
                        });
                        break;

                    case 'OPTMOBP':
                        var jsonData = this.OPTMOBP;
                        var obj = $.parseJSON(jsonData);
                        $.each(obj, function () {
                            mobilePayments.push(this['cardName']);
                        });
                }

            });

            //console.log(creditCards);
            // console.log(debitCards);
            // console.log(netBanks);
            // console.log(cashCards);
            //  console.log(mobilePayments);

        }
    });
</script>


</html>
