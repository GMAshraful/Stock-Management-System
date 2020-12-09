using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace StockManagementProjectApp.DAL.Gateway
{
    public class CommonGateway
    {
        public string connectionString =
           WebConfigurationManager.ConnectionStrings["StockManagementDBConString"].ConnectionString;
        public SqlConnection Connection { get; set; }
        public SqlCommand Command { get; set; }
        public SqlDataReader Reader { get; set; }

        public CommonGateway()
        {
            Connection = new SqlConnection(connectionString);
        }
    }
}