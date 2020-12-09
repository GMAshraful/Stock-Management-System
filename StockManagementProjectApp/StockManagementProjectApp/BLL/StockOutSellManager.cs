using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using StockManagementProjectApp.DAL.Gateway;
using StockManagementProjectApp.DAL.Models;

namespace StockManagementProjectApp.BLL
{
    public class StockOutSellManager
    {
        StockOutSellGateway stockOutSellGateway = new StockOutSellGateway();
        public string SaveSellManager(StockOutSell stockOutSell)
        {


            int row = stockOutSellGateway.SaveSellGateway(stockOutSell);
                if (row > 0)
                {
                    return "Save Sell item Successful !";
                }
                else
                {
                    return "Saving Sell item Failed !";
                }
            


        }
    }
}