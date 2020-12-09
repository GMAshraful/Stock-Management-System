using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using StockManagementProjectApp.DAL.Models;

namespace StockManagementProjectApp.DAL.Gateway
{
    public class ItemSetupGateway : CommonGateway
    {
        public bool IsItemNameExist(string itemName)
        {
            string query = "SELECT * FROM ItemSetup WHERE ItemName= '" + itemName + "' ";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            bool isExists = Reader.HasRows;
            Connection.Close();
            return isExists;
        }
        public bool IsItemNameExist(int companyid)
        {
            string query = "SELECT * FROM ItemSetup WHERE CompanyId =" + companyid;
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            bool isExists = Reader.HasRows;
            Connection.Close();
            return isExists;
        }

        public int SaveGateway(ItemSetup itemSetup)
        {

            string query = "INSERT INTO ItemSetup VALUES('" + itemSetup.CategoryId + "','" + itemSetup.CompanyId + "','" + itemSetup.ItemName + "','" + itemSetup.ReorderLevel + "')";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            int rowAffect = Command.ExecuteNonQuery();
            Connection.Close();
            return rowAffect;
        }

        public List<ItemSetup> GetAllItems()
        {
            string query = "SELECT * FROM ItemSetup";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();

            List<ItemSetup> items = new List<ItemSetup>();
            while (Reader.Read())
            {
                ItemSetup itemSetup = new ItemSetup();
                itemSetup.Id = Convert.ToInt32(Reader["Id"]);
                itemSetup.CategoryId = Convert.ToInt32(Reader["CategoryId"]);
                itemSetup.CompanyId = Convert.ToInt32(Reader["CompanyId"]);
                itemSetup.ReorderLevel = Convert.ToInt32(Reader["ReorderLevel"]);
                itemSetup.ItemName = Reader["ItemName"].ToString();
                

                items.Add(itemSetup);
            }
            Connection.Close();
            return items;
        }

        
        public List<ItemSetup> GetAllItemsByCompany(int id)
        {
            string query = "SELECT * FROM ItemSetup WHERE CompanyId =" + id;
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();

            List<ItemSetup> items = new List<ItemSetup>();
            while (Reader.Read())
            {
                ItemSetup itemSetup = new ItemSetup();
                itemSetup.Id = Convert.ToInt32(Reader["Id"]);
                itemSetup.CategoryId = Convert.ToInt32(Reader["CategoryId"]);
                itemSetup.CompanyId = Convert.ToInt32(Reader["CompanyId"]);
                itemSetup.ReorderLevel = Convert.ToInt32(Reader["ReorderLevel"]);
                itemSetup.ItemName = Reader["ItemName"].ToString();
                

                items.Add(itemSetup);
            }
            Connection.Close();
            return items;
        }


        public int GetReorderLevel(int companyid)
        {
            
            string query = "SELECT * FROM ItemSetup WHERE CompanyId=" + companyid;

            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            Reader.Read();


            int reorder = Convert.ToInt32(Reader["ReorderLevel"]);

           

            
            Connection.Close();
            return reorder;

        }

        public bool CheckReorderExist(int companyid)
        {

            string query = "SELECT * FROM ItemSetup WHERE CompanyId=" + companyid;
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            bool isExists = Reader.HasRows;
            Connection.Close();
            return isExists;
        }

    }
}