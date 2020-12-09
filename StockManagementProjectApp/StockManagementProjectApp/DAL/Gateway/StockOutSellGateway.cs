using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using StockManagementProjectApp.DAL.Models;

namespace StockManagementProjectApp.DAL.Gateway
{
    public class StockOutSellGateway : CommonGateway
    {
        public int SaveSellGateway(StockOutSell stockOutSell)
        {
            //INSERT INTO StockOutSell VALUES(2,2,'2018-05-04 21:46:12')
            string query = "INSERT INTO StockOutSell VALUES(" + stockOutSell.ItemId + "," + stockOutSell.Sell + ",'" + stockOutSell.Date + "')";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            int rowAffect = Command.ExecuteNonQuery();
            Connection.Close();
            return rowAffect;
                   
            
        }

    }
}