using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XEx04Quotation
{
    public partial class Confirm : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            //Cast the session object "quote" as class "Quote" and create a local object to hold its properties.
            Quote quote =  (Quote) Session["Quotation"];
            if(quote != null)
            {
                //Use the quote properties (from the saved session state) to populate the labels.
                lblSalesPrice.Text = quote.SalesPrice.ToString("C");
                lblDiscountAmount.Text = quote.DiscountAmount.ToString("C");
                lblTotalPrice.Text = quote.TotalPrice.ToString("C");
            }
            else
            {
                //If page loads with null object in session state, reset form labels to empty.
                lblSalesPrice.Text = "";
                lblDiscountAmount.Text = "";
                lblTotalPrice.Text = "";
            }
            

        }

        protected void btnSendQuotation_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                lblMessage.Text = String.Format("Quotation sent to {0} at {1}", txtName.Text, txtEmail.Text);
                //Set the session state object in "Quotation" to null.
                Session.Remove("Quotation");
            }
        }
    }
}