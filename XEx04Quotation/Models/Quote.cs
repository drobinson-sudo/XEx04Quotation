using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


    public class Quote
    {
       public decimal SalesPrice { get; set; }
       public decimal DiscountAmount { get; set; }
       public decimal TotalPrice { get; set; }

        //method to get Quote object from session state
        //public static Quote GetQuote()
        //{
        //Quote quote = (Quote)HttpContext.Current.Session["Quotation"];
        //if (quote == null)
        //    HttpContext.Current.Session["Quotation"] = new Quote();
        //return (Quote)HttpContext.Current.Session["Quotation"];
        //}
    }
