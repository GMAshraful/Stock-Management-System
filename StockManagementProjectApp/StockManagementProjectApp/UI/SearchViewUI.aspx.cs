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
    public partial class SearchViewUI : System.Web.UI.Page
    {
        CompanySetupManager companySetupManager = new CompanySetupManager();
        ProductCategoryManager categoryManager=new ProductCategoryManager();
        ItemSetupManager itemSetupManager = new ItemSetupManager();
        StockInManager stockInManager = new StockInManager();
        StockOutManager stockOutManager = new StockOutManager();
        StockOutSellManager stockOutSellManager = new StockOutSellManager();
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
                //     CompanyManger company = new CompanyManger();
                //DropDownCompanyList.DataSource = company.GetAllCompany();
                //DropDownCompanyList.DataTextField = "CompanyName";
                //DropDownCompanyList.DataValueField = "CompanyID";
                //DropDownCompanyList.DataBind();
                //DropDownCompanyList.Items.Insert(0, new System.Web.UI.WebControls.ListItem("Select", "0"));

                //ItemManager itemManager = new ItemManager();
                //DropDownCategoryList.DataSource = itemManager.GetAllCategory();
                //DropDownCategoryList.DataTextField = "CategoryName";
                //DropDownCategoryList.DataValueField = "CategoryID";
                //DropDownCategoryList.DataBind();
                //DropDownCategoryList.Items.Insert(0, new System.Web.UI.WebControls.ListItem("Select", "0"));

                companyDropDownList.DataSource = companySetupManager.GetAllCompanySetup();
                companyDropDownList.DataTextField = "CompanyName";
                companyDropDownList.DataValueField = "Id";
                companyDropDownList.DataBind();


                categoryDropDownList.DataSource = categoryManager.GetAllProductCategory();
             //   categoryDropDownList.DataSource = itemSetupManager.GetAllItemsFake();
                categoryDropDownList.DataTextField = "CategoryName";
                categoryDropDownList.DataValueField = "Id";
                categoryDropDownList.DataBind();

                string code = "--Select--";
                companyDropDownList.Items.Insert(0, new ListItem(code, ""));
                //companyDropDownList.Items.Insert(0, new ListItem(code, ""));
                categoryDropDownList.Items.Insert(0, new ListItem(code, ""));
            }
        }
        //protected void companyDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    string checkCompany = companyDropDownList.SelectedItem.Text;
        //    if (!(checkCompany.Equals("--Select--")))
        //    {
        //        int companyid = Convert.ToInt32(companyDropDownList.SelectedValue);
        //        if (itemSetupManager.IsItemExist(companyid))
        //        {
        //            //ViewState["flagItem"] = null;
        //            itemDropDownList.DataSource = itemSetupManager.GetAllItemsByCompany(companyid);
        //            itemDropDownList.DataTextField = "ItemName";
        //            itemDropDownList.DataValueField = "Id";
        //            itemDropDownList.DataBind();
        //            itemDropDownList.Items.Insert(0, new ListItem("--Select--", ""));
        //        }
        //        else
        //        {
        //            //itemDropDownList.DataSource = itemSetupManager.GetAllItemsFake();
        //            //itemDropDownList.DataTextField = "ItemName";
        //            //itemDropDownList.DataValueField = "Id";
        //            //itemDropDownList.DataBind();
        //            //itemDropDownList.SelectedItem.Text = "--Select--";
        //            itemDropDownList.Items.Clear();
        //            itemDropDownList.Items.Insert(0, new ListItem("--Select--", ""));
        //            reorderLevelTextBox.Text = "";
        //            availableQuantityTextBox.Text = "";
        //        }

        //    }

        //    else
        //    {
        //        //itemDropDownList.DataSource = itemSetupManager.GetAllItemsFake();
        //        //itemDropDownList.DataTextField = "ItemName";
        //        //itemDropDownList.DataValueField = "Id";
        //        //itemDropDownList.DataBind();
        //        //itemDropDownList.SelectedItem.Text = "--Select--";
        //        itemDropDownList.Items.Clear();
        //        itemDropDownList.Items.Insert(0, new ListItem("--Select--", ""));
        //        reorderLevelTextBox.Text = "";
        //        availableQuantityTextBox.Text = "";

        //    }

        //}
        protected void companyDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (companyDropDownList.SelectedIndex != 0)
            {
                // itemManager = new ItemManager();
                int companyId = Convert.ToInt32(companyDropDownList.SelectedItem.Value);
             //  categoryDropDownList.DataSource = itemSetupManager.GetAllItemsByCompany(companyId);
                categoryDropDownList.DataSource = categoryManager.GetAllProductCategory();
                categoryDropDownList.DataTextField = "CategoryName";
                categoryDropDownList.DataValueField = "ID";
                categoryDropDownList.DataBind();
               categoryDropDownList.Items.Insert(0, new System.Web.UI.WebControls.ListItem("Select", "0"));
            }
            else
            {
                //ItemManager itemManager = new ItemManager();
              //  categoryDropDownList.DataSource = itemSetupManager.GetAllItemsFake();
                categoryDropDownList.DataSource = categoryManager.GetAllProductCategory();
                categoryDropDownList.DataTextField = "CategoryName";
                categoryDropDownList.DataValueField = "ID";
               categoryDropDownList.DataBind();
                categoryDropDownList.Items.Insert(0, new System.Web.UI.WebControls.ListItem("Select", "0"));
            }
        }

        protected void searchButton_OnClick(object sender, EventArgs e)
        {

              SearchViewManager  searchViewManager = new SearchViewManager();

            if (companyDropDownList.SelectedIndex != 0 && categoryDropDownList.SelectedIndex == 0)
            {

                int companyId = Convert.ToInt32(companyDropDownList.SelectedItem.Value);
                string companyName = companyDropDownList.SelectedItem.Text;
                List<SearchView> asearchView = searchViewManager.SearchByCompany(companyId, companyName);
                if (asearchView.Count > 0)
                {
                    ViewState["stockin"] = asearchView;
                    searchViewGridView.DataSource = asearchView;
                    searchViewGridView.DataBind();
                   // pdfbuttonid.Visible = true;
                }
                else
                {
                   // LabelMessage.Visible = true;
                    //LabelMessage.Text = "Quantity not Available";
                    searchViewGridView.DataSource = asearchView;
                    searchViewGridView.DataBind();
                    //pdfbuttonid.Visible = false;

                }

            }
            else if (companyDropDownList.SelectedIndex == 0 && categoryDropDownList.SelectedIndex != 0)
            {
                int categoryId = Convert.ToInt32(categoryDropDownList.SelectedItem.Value);
                List<SearchView> asearchView = searchViewManager.SearchByCategory(categoryId);
                if (asearchView.Count > 0)
                {
                    ViewState["stockin"] = asearchView;
                    searchViewGridView.DataSource = asearchView;
                    searchViewGridView.DataBind();
                    //pdfbuttonid.Visible = true;
                }
                else
                {
                    //LabelMessage.Visible = true;
                    //LabelMessage.Text = "Quantity not Available";
                  searchViewGridView.DataSource = asearchView;
                   searchViewGridView.DataBind();
                   // pdfbuttonid.Visible = false;
                }
            }
            else if (companyDropDownList.SelectedIndex != 0 && categoryDropDownList.SelectedIndex != 0)
            {
                int companyId = Convert.ToInt32(companyDropDownList.SelectedItem.Value);
                int categoryId = Convert.ToInt32(categoryDropDownList.SelectedItem.Value);
                List<SearchView> asearchView = searchViewManager.SearchByCompanyAndCategory(companyId, categoryId);
                if (asearchView.Count > 0)
                {
                    ViewState["stockin"] = asearchView;
                    searchViewGridView.DataSource = asearchView;
                    searchViewGridView.DataBind();
                    //pdfbuttonid.Visible = true;
                }
                else
               {
                //    LabelMessage.Visible = true;
                //    LabelMessage.Text = "Quantity not Available";
                    searchViewGridView.DataSource = asearchView;
                    searchViewGridView.DataBind();

                }
            }
            else if (companyDropDownList.SelectedIndex == 0 && categoryDropDownList.SelectedIndex == 0)
            {
                List<SearchView> asearchView = searchViewManager.SearchByAll();
                if (asearchView.Count > 0)
                {
                    ViewState["stockin"] = asearchView;
                    searchViewGridView.DataSource = asearchView;
                    searchViewGridView.DataBind();
                    //pdfbuttonid.Visible = true;
                }
                else
                {
                   // LabelMessage.Visible = true;
                   // LabelMessage.Text = "Stock In Quantity is not Available";
                   searchViewGridView.DataSource = asearchView;
                    searchViewGridView.DataBind();
                  // pdfbuttonid.Visible = false;

                }
            }
        }
    }
}