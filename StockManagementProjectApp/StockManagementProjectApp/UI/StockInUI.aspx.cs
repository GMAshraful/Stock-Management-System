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
    public partial class StockInUI : System.Web.UI.Page
    {
        CompanySetupManager companySetupManager =new CompanySetupManager();
        ItemSetupManager itemSetupManager = new ItemSetupManager();
        StockInManager stockInManager = new StockInManager();
        
        
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // jehetu save e click korle prottekbar page load age hocche ebong automatically dropdown er prothom value ta niye nicche  tai 
                //ami chai eta shudhu prothombar load hobe mane save button e click korar agei, tai aei if lekhchi


                companyDropDownList.DataSource = companySetupManager.GetAllCompanySetup();
                companyDropDownList.DataTextField = "CompanyName";
                companyDropDownList.DataValueField = "Id";
                companyDropDownList.DataBind();

                itemDropDownList.DataSource = itemSetupManager.GetAllItems();
                itemDropDownList.DataTextField = "ItemName";
                itemDropDownList.DataValueField = "Id";
                itemDropDownList.DataBind();

                availableQuantityTextBox.Text = "<View>";
                reorderLevelTextBox.Text = "<View>";


               // reorderLevelTextBox.Text = "0";
                string code = "--Select--";
                companyDropDownList.Items.Insert(0, new ListItem(code, ""));
                itemDropDownList.Items.Insert(0, new ListItem(code, ""));
            }
            
            //else
            //{
            //    string checkCompany = companyDropDownList.SelectedItem.Text;
            //    int companyid = 0;
            //    int itemid = 0;
            //    //companyid = Convert.ToInt32(companyDropDownList.SelectedValue);
            //    string checkItem = itemDropDownList.SelectedItem.Text;

                

            //    if (!(checkCompany.Equals("--Select--") ||checkItem.Equals("--Select--")))
            //    {
            //        companyid = Convert.ToInt32(companyDropDownList.SelectedValue);
            //        itemid = Convert.ToInt32(itemDropDownList.SelectedValue);
            //        reorderLevelTextBox.Text = itemSetupManager.GetReorderLevelByDropDown(companyid);
            //        availableQuantityTextBox.Text = stockInManager.GetQuantityByDropDown(companyid, itemid);
            //    }


                

            //}
        }

        protected void stockInSaveButton_OnClick(object sender, EventArgs e)
        {
            StockIn stockIn = new StockIn();
            string checkCompany = companyDropDownList.SelectedItem.Text;
            string checkItem = itemDropDownList.SelectedItem.Text;


           
           



            //stockIn.Id = Convert.ToInt32(idHiddenField.Value);
            if (stockInQuantityTextBox.Text == "" && !(checkCompany.Equals("--Select--") || checkItem.Equals("--Select--")))
            {
                outputLabel.Text = "Please fill Up quantity textBox!";
            }
            else if (!(checkCompany.Equals("--Select--") || checkItem.Equals("--Select--")))
            {
                string stockinCheck = stockInQuantityTextBox.Text;
                int  z=0;

                for (int i = 0; i < stockinCheck.Length; i++)
                {
                    if ((stockinCheck[i] >= 'a' && stockinCheck[i] <= 'z') || (stockinCheck[i] >= 'A' && stockinCheck[i] <= 'Z') || !(stockinCheck[i] >= '0' && stockinCheck[i] <= '9'))
                    { z++; }

                }
                if (z > 0)
                {
                    outputLabel.Text = "Please enter an integer value in stock quantity textbox";
                }
                else
                {
                    stockIn.CompanyId = Convert.ToInt32(companyDropDownList.SelectedValue);
                    stockIn.ItemId = Convert.ToInt32(itemDropDownList.SelectedValue);
                    stockIn.StockQuantity = Convert.ToInt32(stockInQuantityTextBox.Text);


                    int companyid = Convert.ToInt32(companyDropDownList.SelectedValue);
                    int itemid = Convert.ToInt32(itemDropDownList.SelectedValue);

                    
                    outputLabel.Text = stockInManager.SaveManager(stockIn);
                    reorderLevelTextBox.Text = itemSetupManager.GetReorderLevelByDropDown(companyid);
                    availableQuantityTextBox.Text = stockInManager.GetQuantityByDropDown(companyid, itemid);

                    //companyDropDownList.DataSource = companySetupManager.GetAllCompanySetup();
                    //companyDropDownList.DataTextField = "CompanyName";
                    //companyDropDownList.DataValueField = "Id";
                    //companyDropDownList.DataBind();
                    //string code = "--Select--";
                    //companyDropDownList.Items.Insert(0, new ListItem(code, ""));

                    //itemDropDownList.Items.Clear();
                    //itemDropDownList.Items.Insert(0, new ListItem("--Select--", ""));
                    //reorderLevelTextBox.Text = "";
                    //availableQuantityTextBox.Text = "";

                    
                   
                }
                
                
            }
            else
            {
                outputLabel.Text = "Please select your desired things from dropdown list !";
            }


            stockInQuantityTextBox.Text = "";
            
        }

       

        protected void companyDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            string checkCompany = companyDropDownList.SelectedItem.Text;
            if(!(checkCompany.Equals("--Select--")))
            {
                 int companyid = Convert.ToInt32(companyDropDownList.SelectedValue);
                if (itemSetupManager.IsItemExist(companyid))
                {
                //ViewState["flagItem"] = null;
                itemDropDownList.DataSource = itemSetupManager.GetAllItemsByCompany(companyid);
                itemDropDownList.DataTextField = "ItemName";
                itemDropDownList.DataValueField = "Id";
                itemDropDownList.DataBind();
                itemDropDownList.Items.Insert(0, new ListItem("--Select--", ""));
                }
                else
                {
                    //itemDropDownList.DataSource = itemSetupManager.GetAllItemsFake();
                    //itemDropDownList.DataTextField = "ItemName";
                    //itemDropDownList.DataValueField = "Id";
                    //itemDropDownList.DataBind();
                    //itemDropDownList.SelectedItem.Text = "--Select--";
                    itemDropDownList.Items.Clear();
                    itemDropDownList.Items.Insert(0, new ListItem("--Select--", ""));
                    reorderLevelTextBox.Text = "";
                    availableQuantityTextBox.Text = "";
                }
                
            }
           
            else
            {
                //itemDropDownList.DataSource = itemSetupManager.GetAllItemsFake();
                //itemDropDownList.DataTextField = "ItemName";
                //itemDropDownList.DataValueField = "Id";
                //itemDropDownList.DataBind();
                //itemDropDownList.SelectedItem.Text = "--Select--";
                itemDropDownList.Items.Clear();
                itemDropDownList.Items.Insert(0, new ListItem("--Select--", ""));
                reorderLevelTextBox.Text = "";
                availableQuantityTextBox.Text = "";

            }
           
        }

        protected void itemDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            string checkCompany = companyDropDownList.SelectedItem.Text;
            int companyid = 0;
            int itemid = 0;
            //companyid = Convert.ToInt32(companyDropDownList.SelectedValue);
            string checkItem = itemDropDownList.SelectedItem.Text;



            if (!(checkCompany.Equals("--Select--") || checkItem.Equals("--Select--")))
            {
                companyid = Convert.ToInt32(companyDropDownList.SelectedValue);
                itemid = Convert.ToInt32(itemDropDownList.SelectedValue);
                reorderLevelTextBox.Text = itemSetupManager.GetReorderLevelByDropDown(companyid);
                availableQuantityTextBox.Text = stockInManager.GetQuantityByDropDown(companyid, itemid);
            }
            else
            {
                outputLabel.Text = "Please select company !";
                reorderLevelTextBox.Text = "";
                availableQuantityTextBox.Text = "";
            }

        }
    }
}