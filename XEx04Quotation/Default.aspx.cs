using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XEx04Quotation
{
    public partial class Default : System.Web.UI.Page
    {        
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                decimal salesPrice = Convert.ToDecimal(txtSalesPrice.Text);
                decimal discountPercent = Convert.ToDecimal(txtDiscountPercent.Text) / 100;
                decimal discountAmount = salesPrice * discountPercent;
                decimal totalPrice = salesPrice - discountAmount;

                lblDiscountAmount.Text = discountAmount.ToString("c");
                lblTotalPrice.Text = totalPrice.ToString("c");

                //Create a new Quote object and assign values to its properties.
                Quote quote = new Quote();
                quote.SalesPrice = salesPrice;
                quote.DiscountAmount = discountAmount;
                quote.TotalPrice = totalPrice;

                //Create and set a new session variable called "Quotation" to store the object "quote".
                Session["Quotation"] = quote;
               
            }   
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            //Cast the session object "quote" as type "Quote" and create a local object to hold its properties.
            Quote quote = (Quote)Session["Quotation"];
            //Check for null reference in session object
            if(quote != null)
            {
                Response.Redirect("~/Confirm.aspx");
            }
            lblMessage.Text = "Click the Calculate Button Before You Confirm.";
        }
    }
}