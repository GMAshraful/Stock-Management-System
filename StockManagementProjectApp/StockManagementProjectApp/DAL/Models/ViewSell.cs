using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StockManagementProjectApp.DAL.Models
{
    [Serializable]
    public class ViewSell
    {
        public string CompanyName { get; set; }
        public string ItemName { get; set; }
        public string SaleQuantity { get; set; }
    }
}