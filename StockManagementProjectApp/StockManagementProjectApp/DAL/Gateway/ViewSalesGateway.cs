using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using StockManagementProjectApp.DAL.Models;

namespace StockManagementProjectApp.DAL.Gateway
{
    public class ViewSalesGateway:CommonGateway
    {


        public List<ViewSell> SearchByDate(string fromdate, string todate)
        {
            string query ="SELECT Item.ItemName,Company.CompanyName,StockOut.Sell From StockOutSell as StockOut INNER JOIN ItemSetup as Item on StockOut.ItemId=Item.ID INNER JOIN CompanySetup as Company on Item.CompanyID=Company.ID AND Date between  '" + fromdate + "' AND '" + todate + "'";


            //  string query ="SELECT Company.CompanyName,Item.ItemName,Quantity=SUM(StockOut.Quantity) FROM  StockOutSell as StockOut INNER JOIN ItemSetup as Item ON StockOut.ItemId =Item.ItemID INNER JOIN CompanySetup as Company ON Item.CompanyID = Company.CompanyID AND ItemType='sell' AND Date between '" + fromdate + "' AND '" + todate + "' GROUP BY  Company.CompanyName,Item.ItemName ";
            // string query = "SELECT Item.ItemName,StockOut.Quantity FROM Item INNER JOIN StockOut ON Item.ItemID = StockOut.ItemId AND ItemType='sell' AND Date between '" + fromdate + "' AND '" + todate + "'";
            SqlCommand command = new SqlCommand(query, Connection);
            Connection.Open();

            List<ViewSell> AllCompanyItem = new List<ViewSell>();

            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                string CompanyName = reader["CompanyName"].ToString();
                string ItemName = reader["ItemName"].ToString();
                string SellQuantity = reader["Sell"].ToString();

                ViewSell aviewSell = new ViewSell();
                aviewSell.CompanyName = CompanyName;
                aviewSell.ItemName = ItemName;
                aviewSell.SaleQuantity = SellQuantity;
                AllCompanyItem.Add(aviewSell);


            }
            reader.Close();
            Connection.Close();

            return AllCompanyItem;
        }
    }
}