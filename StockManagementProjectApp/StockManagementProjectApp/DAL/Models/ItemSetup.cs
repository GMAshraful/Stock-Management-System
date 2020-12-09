using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StockManagementProjectApp.DAL.Models
{
    public class ItemSetup
    {
        public int  CompanyId { get; set; }
        public int CategoryId { get; set; }
        public int Id { get; set; }
        public int ReorderLevel { get; set; }
        public string ItemName { get; set; }
    }
}