using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using StockManagementProjectApp.DAL.Models;

namespace StockManagementProjectApp.DAL.Gateway 
{
    public class ProductCategoryGateway
    {
        private string connectionString = WebConfigurationManager.ConnectionStrings["StockManagementDBConString"].ConnectionString;

        private SqlConnection connection;

        public  SqlCommand Command { get; set; }
        public  SqlDataReader Reader { get; set; }
        public ProductCategoryGateway()
        {
            connection = new SqlConnection(connectionString);
        }




        public List<ProductCategory> GetAllProductCategory()
        {
            string query = "SELECT * FROM ProductCategory";
            Command = new SqlCommand(query, connection);
            connection.Open();
            Reader = Command.ExecuteReader();
            
            List<ProductCategory> categories = new List<ProductCategory>();
            while (Reader.Read())
            {
                ProductCategory category = new ProductCategory();
                category.Id = Convert.ToInt32(Reader["Id"]);
                category.CategoryName = Reader["CategoryName"].ToString();

                categories.Add(category);
            }
            connection.Close();
            return categories;
        }



      

        public int Save(ProductCategory category)
        {


            string query = "INSERT INTO ProductCategory VALUES('" + category.CategoryName + "')";

            Command = new SqlCommand(query, connection);

            connection.Open();
            int rowAffect = Command.ExecuteNonQuery();
            connection.Close();

            return rowAffect;
        }

        public bool IsProCategoryNameExists(string categoryName)
        {
            string query = "SELECT * FROM ProductCategory WHERE CategoryName='" + categoryName + "'";
            Command= new SqlCommand(query, connection);
            connection.Open();
            Reader = Command.ExecuteReader();
            bool isExists = Reader.HasRows;
            connection.Close();
            return isExists;
        }

        public ProductCategory GetProductCategoryById(int id)
        {
            string query = "SELECT * FROM ProductCategory WHERE Id=" + id;
            Command = new SqlCommand(query, connection);
            connection.Open();
            Reader = Command.ExecuteReader();
            Reader.Read();
            ProductCategory category = new ProductCategory();
            category.Id = Convert.ToInt32(Reader["Id"]);
            category.CategoryName = Reader["CategoryName"].ToString();
            
            connection.Close();
            return category;
        }


        public int Update(ProductCategory category)
        {
            string query = "UPDATE ProductCategory SET CategoryName='" + category.CategoryName + "' WHERE Id=" + category.Id;
            Command = new SqlCommand(query, connection);
            connection.Open();
            int rowAffect = Command.ExecuteNonQuery();
            connection.Close();
            return rowAffect;
        }

        public int Delete(int id)
        {
            string query = "DELETE FROM ProductCategory WHERE Id=" + id;
            
            Command = new SqlCommand(query, connection);
            connection.Open();
            int rowAffect = Command.ExecuteNonQuery();
            connection.Close();
            return rowAffect;
        }

        public int DeleteItemSetupCategoryId(int id)
        {
            string query = "DELETE FROM ItemSetup WHERE CategoryId=" + id;
            Command = new SqlCommand(query, connection);
            connection.Open();
            int rowAffect = Command.ExecuteNonQuery();
            connection.Close();
            return rowAffect;
        }
    }
}


