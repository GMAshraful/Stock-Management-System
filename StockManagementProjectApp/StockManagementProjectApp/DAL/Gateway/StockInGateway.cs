using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using StockManagementProjectApp.DAL.Models;

namespace StockManagementProjectApp.DAL.Gateway
{
    public class StockInGateway : CommonGateway
    {
        public int SaveGateway(StockIn stockIn)
        {

            string query = "INSERT INTO StockIn VALUES('" + stockIn.CompanyId + "','" + stockIn.ItemId + "','" + stockIn.StockQuantity + "')";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            int rowAffect = Command.ExecuteNonQuery();
            Connection.Close();
            return rowAffect;
        }

        public bool IsStockExist(StockIn stockIn)
        {
            string query = "SELECT * FROM StockIn WHERE CompanyId=" + stockIn.CompanyId + "AND ItemId =" + stockIn.ItemId ;

            
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            bool isExists = Reader.HasRows;
            Connection.Close();
            return isExists;
        }

        public int StockQuantityAvailable(StockIn stockIn)
        {
            string query = "SELECT * FROM StockIn WHERE CompanyId=" + stockIn.CompanyId + "AND ItemId =" + stockIn.ItemId;

            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            Reader.Read();
            int stockAvailable = Convert.ToInt32(Reader["StockQuantity"]);
            Connection.Close();
            return stockAvailable;
        }

        public int Update(StockIn stockIn)
        {
            //UPDATE StockIn SET CompanyId= 1, ItemId=1 , StockQuantity = 15 WHERE Id= 3
            //"UPDATE Student SET Name ='" + student.Name + "', Email='" + student.Email + "', Phone ='" + student.PhoneNo + "', Address='" + student.Address + "', DepartmentId=" + student.DepartmentId + " WHERE Id=" + student.Id;


            //UPDATE StockIn SET  StockQuantity= 35 WHERE CompanyId=1  AND ItemId = 1
            string query = "UPDATE StockIn SET  StockQuantity=" + stockIn.StockQuantity + " WHERE CompanyId=" + stockIn.CompanyId + "AND ItemId =" + stockIn.ItemId;
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            int rowAffect = Command.ExecuteNonQuery();
            Connection.Close();
            return rowAffect;
        }

        public int GetQuantityByDropDown(int companyid, int itemid)
        {
            string query = "SELECT * FROM StockIn WHERE CompanyId=" + companyid + "AND ItemId =" + itemid;
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            Reader.Read();
            int stock = 0;
                  
             stock = Convert.ToInt32(Reader["StockQuantity"]);

            Connection.Close();
            return stock;
        }

        public bool CheckStockExist(int companyid, int itemid)
        {

            string query = "SELECT * FROM StockIn WHERE CompanyId=" + companyid + "AND ItemId =" + itemid;
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            bool isExists = Reader.HasRows;
            Connection.Close();
            return isExists;
        }

       

    }
}