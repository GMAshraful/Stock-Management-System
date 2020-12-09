using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.AccessControl;
using System.Web;

namespace StockManagementProjectApp.DAL.Models
{
    public class StockOutSell
    {
        public int Id { get; set; }
        public int ItemId { get; set; }
        public int Sell { get; set; }
        public string Date { get; set; }
        //public int Damage { get; set; }
        //public int Lost { get; set; }
    }
}