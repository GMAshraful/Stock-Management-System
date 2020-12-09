using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using StockManagementProjectApp.DAL.Gateway;
using StockManagementProjectApp.DAL.Models;

namespace StockManagementProjectApp.BLL
{
    public class ViewSellManager
    {
       // ViewSalesGateWay viewSalesGateWay = new ViewSalesGateWay();
        ViewSalesGateway viewSalesGateway=new ViewSalesGateway();
        public List<ViewSell> SearchByDate(string fromdate, string todate)
        {
            return viewSalesGateway.SearchByDate(fromdate, todate);
        }
    }
}