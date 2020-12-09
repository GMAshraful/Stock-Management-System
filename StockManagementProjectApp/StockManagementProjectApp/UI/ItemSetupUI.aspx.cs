using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using StockManagementProjectApp.BLL;
using StockManagementProjectApp.DAL.Models;

namespace StockManagementProjectApp.UI
{
    public partial class ItemSetupUI : System.Web.UI.Page
    {
        CompanySetupManager companySetupManager = new CompanySetupManager();
        ProductCategoryManager productCategoryManager = new ProductCategoryManager();
        ItemSetupManager itemSetupManager = new ItemSetupManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // jehetu save e click korle prottekbar page load age hocche ebong automatically dropdown er prothom value ta niye nicche  tai 
                //ami chai eta shudhu prothombar load hobe mane save button e click korar agei, tai aei if lekhchi
                categoryDropDownList.DataSource = productCategoryManager.GetAllProductCategory();
                categoryDropDownList.DataTextField = "CategoryName";
                categoryDropDownList.DataValueField = "Id";
                categoryDropDownList.DataBind();

                companyDropDownList.DataSource = companySetupManager.GetAllCompanySetup();
                companyDropDownList.DataTextField = "CompanyName";
              companyDropDownList.DataValueField = "Id";
               companyDropDownList.DataBind();
                reorderLevelTextBox.Text = "0";

                string code = "--Select--";
                companyDropDownList.Items.Insert(0, new ListItem(code, ""));
                categoryDropDownList.Items.Insert(0, new ListItem(code, ""));
            }
           
           
        }

        protected void itemSaveButton_Click(object sender, EventArgs e)
        {
            ItemSetup itemSetup = new  ItemSetup();
            string checkCompany = companyDropDownList.SelectedItem.Text;
            string checkCategory = categoryDropDownList.SelectedItem.Text;
            if (itemNameTextBox.Text == ""   && !(checkCompany.Equals("--Select--") || checkCategory.Equals("--Select--")))
            {
                outputLabel.Text = "Please fill Up Item Name textBox!";
                itemNameTextBox.Text = "";
            }
           
            else if (reorderLevelTextBox.Text == "" && !(checkCompany.Equals("--Select--") || checkCategory.Equals("--Select--")))
            {
                 outputLabel.Text = "Please fill Up reorder level textBox!";
                itemNameTextBox.Text = "";
                reorderLevelTextBox.Text = "0";
            }
            
        
            else if (!(checkCompany.Equals("--Select--") || checkCategory.Equals("--Select--")))
            {
                string intCheck = itemNameTextBox.Text;
                string reorderCheck = reorderLevelTextBox.Text;
                int count = 0, z=0;
                for (int i = 0; i < intCheck.Length; i++)
                {
                    if (intCheck[i] >= '0' && intCheck[i] <= '9')
                    { count++; }
                    
                }
                for (int i = 0; i < reorderCheck.Length; i++)
                {
                    if ((reorderCheck[i] >= 'a' && reorderCheck[i] <= 'z') || (reorderCheck[i] >= 'A' && reorderCheck[i] <= 'Z') || !(reorderCheck[i] >= '0' && reorderCheck[i] <= '9'))
                    { z++; }

                }
                if (count > 0)
                {
                    outputLabel.Text = "Please enter a string value in item name textbox";
                    
                }
                else if (z > 0)
                {
                    outputLabel.Text = "Please enter an integer value in reorder level textbox"; 
                }
                else
                {
                    itemSetup.CategoryId = Convert.ToInt32(categoryDropDownList.SelectedValue);
                    itemSetup.CompanyId = Convert.ToInt32(companyDropDownList.SelectedValue);
                    itemSetup.ItemName = itemNameTextBox.Text;

                    itemSetup.ReorderLevel = Convert.ToInt32(reorderLevelTextBox.Text);
                    //int r = Convert.ToInt32(reorderLevelTextBox.Text);
                    ////if (r < 5)
                    ////{
                    ////    outputLabelReorder.Text = "Reorder level is under 5 !";
                    ////}
                    outputLabel.Text = itemSetupManager.SaveManager(itemSetup);

                }
                itemNameTextBox.Text = "";
                reorderLevelTextBox.Text = "";

            }

            else
            {
                outputLabel.Text = "Please select your desired things from dropdown list !";
                itemNameTextBox.Text = "";
                reorderLevelTextBox.Text = "";
            }
            itemNameTextBox.Text = "";
            reorderLevelTextBox.Text = "0";
            
        }
    }
}