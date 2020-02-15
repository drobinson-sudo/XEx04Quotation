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

            Quote quote =  (Quote) Session["Quotation"];
            lblSalesPrice.Text = quote.SalesPrice.ToString("C");
            lblDiscountAmount.Text = quote.DiscountAmount.ToString("C");
            lblTotalPrice.Text = quote.TotalPrice.ToString("C");
        }

        protected void btnSendQuotation_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                lblMessage.Text = String.Format("Quotation sent to {0} at {1}", txtName.Text, txtEmail.Text);
                Session.Remove("Quotation");
            }
        }
    }
}