using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StockManagementProjectApp.DAL.Models
{
    [Serializable]
    public class SearchView
    {
        public int Id { get; set; }
        public string Company { get; set; }
        public string Item { get; set; }
        //public int StockQuantity { get; set; }
        public int AvailableQuantity { get; set; }

        public int ReorderLevel { get; set; }
    }
}