using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using StockManagementProjectApp.BLL;
using StockManagementProjectApp.DAL.Gateway;
using StockManagementProjectApp.DAL.Models;

namespace StockManagementProjectApp.UI
{
    public partial class StockOutUI : System.Web.UI.Page
    {
        CompanySetupManager companySetupManager = new CompanySetupManager();
        ItemSetupManager itemSetupManager = new ItemSetupManager();
        StockInManager stockInManager = new StockInManager();
        StockOutManager stockOutManager = new StockOutManager();
        StockOutSellManager stockOutSellManager = new StockOutSellManager();
        //public List<StockOut> stockOutList  = new List<StockOut>();
           
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                // jehetu save e click korle prottekbar page load age hocche ebong automatically dropdown er prothom value ta niye nicche  tai 
                //ami chai eta shudhu prothombar load hobe mane save button e click korar agei, tai aei if lekhchi
               
                 //count = 0;
               

                //itemDropDownList.DataSource = stockInManager.GetItemByCompany() //itemSetupManager.GetAllItems();
                //itemDropDownList.DataTextField = "ItemName";
                //itemDropDownList.DataValueField = "Id";
                //itemDropDownList.DataBind();


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
                string code = "--Select--";
                companyDropDownList.Items.Insert(0, new ListItem(code, ""));
                itemDropDownList.Items.Insert(0, new ListItem(code, ""));
            }
            //else
            //{
            //    string checkCompany = companyDropDownList.SelectedItem.Text;
            //    string checkItem = itemDropDownList.SelectedItem.Text;
            //    int companyid = 0;
            //    int itemid = 0;

            //    if (!checkCompany.Equals("--Select--") && checkItem.Equals("--Select--") )
            //    {
                    
            //        companyid = Convert.ToInt32(companyDropDownList.SelectedValue);
            //        itemDropDownList.DataSource = itemSetupManager.GetAllItemsByCompany(companyid);
            //        itemDropDownList.DataTextField = "ItemName";
            //        itemDropDownList.DataValueField = "Id";
            //        itemDropDownList.DataBind();
            //        itemDropDownList.Items.Insert(0, new ListItem("--Select--", ""));
            //    }
                
            //    else if (!(checkCompany.Equals("--Select--") || checkItem.Equals("--Select--")))
            //    {
                    
            //        companyid = Convert.ToInt32(companyDropDownList.SelectedValue);
            //        itemid = Convert.ToInt32(itemDropDownList.SelectedValue);
            //        reorderLevelTextBox.Text = itemSetupManager.GetReorderLevelByDropDown(companyid);
            //        availableQuantityTextBox.Text = stockInManager.GetQuantityByDropDown(companyid, itemid);
                   
            //    }




            //}
            //outputLabelForSubtract.Text = "";
        }

        protected void stockOutAddButton_Click(object sender, EventArgs e)
        {
            StockOut stockOut = new StockOut();
            StockIn stockIn = new StockIn();
            string checkCompany = companyDropDownList.SelectedItem.Text;
            string checkItem = itemDropDownList.SelectedItem.Text;
            int companyid = 0;
            int itemid = 0;




            if (stockOutQuantityTextBox.Text == "" && !(checkCompany.Equals("--Select--") || checkItem.Equals("--Select--")))
            {
                outputLabelForSubtract.Text = "Please fill Up quantity textBox.";
            }
 
            
            else if (!(checkCompany.Equals("--Select--") || checkItem.Equals("--Select--")))
            {
                companyid = Convert.ToInt32(companyDropDownList.SelectedValue);
                itemid = Convert.ToInt32(itemDropDownList.SelectedValue);
                string stockinCheck = stockOutQuantityTextBox.Text;
                int z = 0;

                for (int i = 0; i < stockinCheck.Length; i++)
                {
                    if ((stockinCheck[i] >= 'a' && stockinCheck[i] <= 'z') || (stockinCheck[i] >= 'A' && stockinCheck[i] <= 'Z') || !(stockinCheck[i] >= '0' && stockinCheck[i] <= '9'))
                    { z++; }

                }
               
                
                
                if (stockInManager.GetQuantityByDropDown(companyid, itemid)=="0" || !(stockInManager.checkAvailability(companyid, itemid)))
                {
                    outputLabelForSubtract.Text = "Before adding anything, quantity Should be available. ";
                }
                else if (z > 0)
                {
                    outputLabelForSubtract.Text = "Please enter an integer value at stock quantity textbox";
                }
                else if (ViewState["stockOutVS"] == null && ViewState["stockInVS"] == null)
                {
                    List<StockOut> stockOutList = new List<StockOut>();
                    List<StockIn> stockInList = new List<StockIn>();
                    stockIn.CompanyId = Convert.ToInt32(companyDropDownList.SelectedValue);
                    stockIn.ItemId = Convert.ToInt32(itemDropDownList.SelectedValue);
                    stockIn.StockQuantity = Convert.ToInt32(stockOutQuantityTextBox.Text);
                    stockInList.Add(stockIn);

                    ViewState["stockInVS"] = stockInList;
                    stockOut.Company = companyDropDownList.SelectedItem.Text;
                    stockOut.Item = itemDropDownList.SelectedItem.Text;
                    stockOut.StockQuantity = Convert.ToInt32(stockOutQuantityTextBox.Text);
                    stockOutList.Add(stockOut);
                    ViewState["stockOutVS"] = stockOutList;
                    stockOutGridView.DataSource =  ViewState["stockOutVS"];
                    stockOutGridView.DataBind();
                }
                else
                {

                    List<StockIn> stockInList = (List<StockIn>)ViewState["stockInVS"];
                    stockIn.CompanyId = Convert.ToInt32(companyDropDownList.SelectedValue);
                    stockIn.ItemId = Convert.ToInt32(itemDropDownList.SelectedValue);
                    stockIn.StockQuantity = Convert.ToInt32(stockOutQuantityTextBox.Text);
                    stockInList.Add(stockIn);
                    ViewState["stockInVS"] = stockInList;

                    List<StockOut> stockOutList = (List<StockOut>)ViewState["stockOutVS"];
                    stockOut.Company = companyDropDownList.SelectedItem.Text;
                    stockOut.Item = itemDropDownList.SelectedItem.Text;
                    stockOut.StockQuantity = Convert.ToInt32(stockOutQuantityTextBox.Text);
                    stockOutList.Add(stockOut); 
                    ViewState["stockOutVS"] = stockOutList;
                    stockOutGridView.DataSource = ViewState["stockOutVS"];
                    stockOutGridView.DataBind();
                    
                }
                
                

            }
            
            else
            {
                outputLabelForSubtract.Text = "Please select your desired things from dropdown list !";
            }
            stockOutQuantityTextBox.Text = "";
        }

        protected void sellButton_Click(object sender, EventArgs e)
        {
            
            
           
             StockOutSell stockOutSell = new StockOutSell();
            if (ViewState["stockOutVS"] == null && ViewState["stockInVS"] == null)
            {
                outputLabelForSubtract.Text = "Please add in the grid first !";

            }
            else
            {
                List<StockOut> stockOutSellList = (List<StockOut>)ViewState["stockOutVS"];
                List<StockIn> stockInSellList = (List<StockIn>)ViewState["stockInVS"];
                foreach (var stockInlistVar in stockInSellList)
                {
                    stockOutSell.ItemId = stockInlistVar.ItemId;
                    stockOutSell.Sell = stockInlistVar.StockQuantity; // sell koto hocche ta rakhlam
                    DateTime time = DateTime.Now;              // Use current time
                    string dateTime = time.ToString("yyyy-MM-dd HH':'mm':'ss");    // modify the format depending upon input required in the column in database 

                    stockOutSell.Date = dateTime;
                    stockOutSellManager.SaveSellManager(stockOutSell);


                    outputLabelForSubtract.Text = stockInManager.DeleteManager(stockInlistVar);

                }
                int companyid = Convert.ToInt32(companyDropDownList.SelectedValue);
                int itemid = Convert.ToInt32(itemDropDownList.SelectedValue);

                reorderLevelTextBox.Text = itemSetupManager.GetReorderLevelByDropDown(companyid);
                availableQuantityTextBox.Text = stockInManager.GetQuantityByDropDown(companyid, itemid);
                ViewState["stockOutVS"] = null;
                ViewState["stockInVS"] = null;
                stockOutGridView.DataSource = null;
                stockOutGridView.DataBind();
            }
               
            
            stockOutQuantityTextBox.Text = "";


        }

        protected void damageButton_Click(object sender, EventArgs e)
        {
            StockOutSell stockOutSell = new StockOutSell();
            if (ViewState["stockOutVS"] == null && ViewState["stockInVS"] == null)
            {
                outputLabelForSubtract.Text = "Please add in the grid first !!";

            }

            else
            {
                List<StockOut> stockOutSellList = (List<StockOut>)ViewState["stockOutVS"];
                List<StockIn> stockInSellList = (List<StockIn>)ViewState["stockInVS"];
                foreach (var stockInlistVar in stockInSellList)
                {


                    outputLabelForSubtract.Text = stockInManager.DeleteManager(stockInlistVar);

                }

                int companyid = Convert.ToInt32(companyDropDownList.SelectedValue);
                int itemid = Convert.ToInt32(itemDropDownList.SelectedValue);

                reorderLevelTextBox.Text = itemSetupManager.GetReorderLevelByDropDown(companyid);
                availableQuantityTextBox.Text = stockInManager.GetQuantityByDropDown(companyid, itemid);

                ViewState["stockOutVS"] = null;
                ViewState["stockInVS"] = null;
                stockOutGridView.DataSource = null;
                stockOutGridView.DataBind(); 
            }
            

            stockOutQuantityTextBox.Text = "";

            

        }

        protected void lostButton_Click(object sender, EventArgs e)
        {
            StockOutSell stockOutSell = new StockOutSell();
            if (ViewState["stockOutVS"] == null && ViewState["stockInVS"] == null)
            {
                outputLabelForSubtract.Text = "Please add in the grid first !";

            }
            else
            {
                List<StockOut> stockOutSellList = (List<StockOut>)ViewState["stockOutVS"];
                List<StockIn> stockInSellList = (List<StockIn>)ViewState["stockInVS"];
                foreach (var stockInlistVar in stockInSellList)
                {


                    outputLabelForSubtract.Text = stockInManager.DeleteManager(stockInlistVar);

                }


                int companyid = Convert.ToInt32(companyDropDownList.SelectedValue);
                int itemid = Convert.ToInt32(itemDropDownList.SelectedValue);

                reorderLevelTextBox.Text = itemSetupManager.GetReorderLevelByDropDown(companyid);
                availableQuantityTextBox.Text = stockInManager.GetQuantityByDropDown(companyid, itemid);
                ViewState["stockOutVS"] = null;
                ViewState["stockInVS"] = null;
                stockOutGridView.DataSource = null;
                stockOutGridView.DataBind();
            }
            

            stockOutQuantityTextBox.Text = "";
            //availableQuantityTextBox.Text = "";
            //reorderLevelTextBox.Text = "";
        }

        protected void companyDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            string checkCompany = companyDropDownList.SelectedItem.Text;
            if (!(checkCompany.Equals("--Select--")))
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