using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using StockManagementProjectApp.BLL;
using StockManagementProjectApp.DAL.Gateway;
using StockManagementProjectApp.DAL.Models;

namespace StockManagementProjectApp.UI
{
    public partial class CompanySetupUI : System.Web.UI.Page
    {
        CompanySetupManager companySetupManager = new CompanySetupManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                companySetupGridView.DataSource = companySetupManager.GetAllCompanySetup();
                companySetupGridView.DataBind();
            }

        }

        protected void saveCompanyNameButton_Click(object sender, EventArgs e)
        {
            string intCheck = saveCompanyNameTextBox.Text;
            int count = 0, z=0;
            for (int i = 0; i < intCheck.Length; i++)
            {
                if ((intCheck[i] >= '0' && intCheck[i] <= '9') )
                { count++; }
                if((intCheck[i] >= 'a' && intCheck[i] <= 'z') || (intCheck[i] >= 'A' && intCheck[i] <= 'Z'))
                {
                    z++;
                }
                
            }
            if (count> 0 || z==0)
            {
                outputLabel.Text = "Number (0-9) and special characters (@,#,$..) are not allowed! ";
                saveCompanyNameTextBox.Text = "";

            }
            else
            {
                CompanySetup companySetup = new CompanySetup();
                companySetup.CompanyName = saveCompanyNameTextBox.Text;
                outputLabel.Text = companySetupManager.Save(companySetup);
                saveCompanyNameTextBox.Text = "";

                companySetupGridView.DataSource = companySetupManager.GetAllCompanySetup();
                companySetupGridView.DataBind();
            }
            }
            
    }
}