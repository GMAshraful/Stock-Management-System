using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using StockManagementProjectApp.DAL.Models;

namespace StockManagementProjectApp.DAL.Gateway
{
    public class SearchViewGateway:CommonGateway
    {

       
        public List<SearchView> SearchByCompany(int companyId, string companyName)
        {

//            string query = "SELECT Item.ItemName,Item.ReorderLevel,StockIn.StockQuantity From StockIn INNER JOIN ItemSetup as Item on StockIn.ItemId=Item.Id FR ItemSetup WHERE CompanyID=" + companyId;

            string query = "SELECT Item.ItemName,Item.ReorderLevel,StockIn.StockQuantity From StockIn INNER JOIN ItemSetup as Item on StockIn.ItemId=Item.Id AND Item.CompanyID=" + companyId;

            Command = new SqlCommand(query, Connection);
            Connection.Open();

            List<SearchView> AllCompanyItem = new List<SearchView>();

            SqlDataReader reader = Command.ExecuteReader();

            while (reader.Read())
            {

                string itemName = reader["ItemName"].ToString();
              //  int reorderLevel = (int)reader["ReorderLevel"];
                int reorderLevel = Convert.ToInt32(reader["ReorderLevel"]);
              //  int availableQuantity = (int)reader["AvailableQuantity"];

                int availableQuantity = Convert.ToInt32(reader["StockQuantity"]);

                SearchView aitem = new SearchView();
                aitem.Item = itemName;
             //   aitem.ReorderLevel = reorderLevel.ToString();
                aitem.ReorderLevel = reorderLevel;
                aitem.AvailableQuantity = availableQuantity;
                aitem.Company = companyName;
                AllCompanyItem.Add(aitem);
            }
            reader.Close();
            Connection.Close();

            return AllCompanyItem;

        }

        public List<SearchView> SearchByCategory(int CategoryId)
        {
           // SetConnection();
            //string query = "SELECT Item.ItemName,Item.ReorderLevel,Item.AvailableQuantity,Company.CompanyName FROM Item INNER JOIN Company ON Item.CompanyID = Company.CompanyID AND Item.CategoryID=" + CategoryId;
//string query = "SELECT Item.ItemName,Item.ReorderLevel,Company.CompanyName FROM ItemSetup as Item INNER JOIN CompanySetup as Company ON Item.CompanyID = Company.ID AND Item.CategoryID=" + CategoryId;

            string query = "SELECT Item.ItemName,Item.ReorderLevel,Company.CompanyName,StockIn.StockQuantity FROM StockIn INNER JOIN ItemSetup as Item on StockIn.ItemId=Item.Id INNER JOIN CompanySetup as Company ON Item.CompanyID = Company.ID AND Item.CategoryID=" + CategoryId;


          Command = new SqlCommand(query, Connection);
            Connection.Open();

            List<SearchView> AllCompanyItem = new List<SearchView>();

            SqlDataReader reader = Command.ExecuteReader();

            while (reader.Read())
            {

                string itemName = reader["ItemName"].ToString();
                int reorderLevel = Convert.ToInt32(reader["ReorderLevel"]);
                int availableQuantity = Convert.ToInt32(reader["StockQuantity"]);
                string companyName = reader["CompanyName"].ToString();

                SearchView aitem = new SearchView();
              aitem.Item = itemName;
                aitem.ReorderLevel = reorderLevel;
                aitem.AvailableQuantity = availableQuantity;
                aitem.Company = companyName;
                AllCompanyItem.Add(aitem);
            }
            reader.Close();
            Connection.Close();

            return AllCompanyItem;
        }

        public List<SearchView> SearchByCompanyAndCategory(int companyid, int CategoryId)
        {
            
            //string query = "SELECT Item.ItemName,Item.ReorderLevel,Item.AvailableQuantity,Company.CompanyName FROM Item INNER JOIN Company ON Item.CompanyID = Company.CompanyID AND Item.CompanyID=" + companyid + " AND Item.CategoryID=" + CategoryId;

            //string query = "SELECT Item.ItemName,Item.ReorderLevel,Company.CompanyName,StockIn.StockQuantity " +
            //               "FROM ItemSetup as Item INNER JOIN CompanySetup as Company " +
            //               "INNER JOIN StockIn ON Item.CompanyID = Company.ID " +
            //               "AND Item.CompanyID=" + companyid + " " +
            //               "AND Item.CategoryID=" + CategoryId+"AND Item.ID=StockIn.ID";
//string query = "SELECT Item.ItemName,Item.ReorderLevel,Company.CompanyName FROM ItemSetup as Item INNER JOIN CompanySetup as Company ON Item.CompanyID=Company.ID AND Item.CompanyID=" + companyid + "AND Item.CategoryID=" + CategoryId ;
            string query = "SELECT Item.ItemName,Item.ReorderLevel,Company.CompanyName,StockIn.StockQuantity FROM StockIn INNER JOIN ItemSetup as Item on StockIn.ItemId=Item.ID INNER JOIN CompanySetup as Company ON Item.CompanyID=Company.ID AND Item.CompanyID=" + companyid + "AND Item.CategoryID=" + CategoryId;

            
            SqlCommand command = new SqlCommand(query, Connection);
            Connection.Open();

            List<SearchView> AllCompanyItem = new List<SearchView>();

            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {

                string itemName = reader["ItemName"].ToString();
                int reorderLevel =Convert.ToInt32(reader["ReorderLevel"]);

                int availableQuantity = Convert.ToInt32(reader["StockQuantity"]);
                string companyName = reader["CompanyName"].ToString();

                SearchView aitem = new SearchView();
                aitem.Item = itemName;
                aitem.ReorderLevel = reorderLevel;
                aitem.AvailableQuantity = availableQuantity;
                aitem.Company = companyName;
                AllCompanyItem.Add(aitem);
            }
            reader.Close();
            Connection.Close();

            return AllCompanyItem;
        }


        public List<SearchView> SearchByAll()
        {
           
          //  string query = "SELECT Item.ItemName,Item.ReorderLevel,Item.AvailableQuantity,Company.CompanyName FROM Item INNER JOIN Company ON Item.CompanyID = Company.CompanyID";
            string query = "SELECT Item.ItemName,Item.ReorderLevel,Company.CompanyName,StockIn.StockQuantity FROM StockIn INNER JOIN ItemSetup as Item on StockIn.ItemId=Item.ID INNER JOIN CompanySetup as Company ON Item.CompanyID = Company.ID";

            SqlCommand command = new SqlCommand(query, Connection);
            Connection.Open();

            List<SearchView> AllCompanyItem = new List<SearchView>();

            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {

                string itemName = reader["ItemName"].ToString();
                int reorderLevel = Convert.ToInt32(reader["ReorderLevel"]);
               // int availableQuantity = (int)reader["AvailableQuantity"];
                int availableQuantity = Convert.ToInt32(reader["StockQuantity"]);
                
                string companyName = reader["CompanyName"].ToString();

                SearchView aitem = new SearchView();
                aitem.Item = itemName;
                aitem.ReorderLevel = reorderLevel;
                aitem.AvailableQuantity = availableQuantity;
                aitem.Company = companyName;
                AllCompanyItem.Add(aitem);
            }
            reader.Close();
            Connection.Close();

            return AllCompanyItem;
        }
    }
}