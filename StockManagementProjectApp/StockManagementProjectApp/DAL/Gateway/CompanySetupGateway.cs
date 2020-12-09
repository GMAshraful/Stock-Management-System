using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using StockManagementProjectApp.DAL.Models;

namespace StockManagementProjectApp.DAL.Gateway
{
    public class CompanySetupGateway : CommonGateway
    {
        public int Save(CompanySetup companySetup)

        {


            string query = "INSERT INTO CompanySetup VALUES('" + companySetup.CompanyName + "')";

            Command = new SqlCommand(query, Connection);

            Connection.Open();
            int rowAffect = Command.ExecuteNonQuery();
            Connection.Close();

            return rowAffect;
        }




        public List<CompanySetup> GetAllCompanies()
        {
            string query = "SELECT * FROM CompanySetup";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();

            List<CompanySetup> companies = new List<CompanySetup>();
            while (Reader.Read())
            {
                CompanySetup companySetup = new CompanySetup();
                companySetup.Id = Convert.ToInt32(Reader["Id"]);
                companySetup.CompanyName = Reader["CompanyName"].ToString();

                companies.Add(companySetup);
            }
            Connection.Close();
            return companies;
        }



        public bool IsCompanyNameExists(string companyName)
        {
            string query = "SELECT * FROM CompanySetup WHERE CompanyName='" + companyName + "'";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            bool isExists = Reader.HasRows;
            Connection.Close();
            return isExists;
        }
    }
}