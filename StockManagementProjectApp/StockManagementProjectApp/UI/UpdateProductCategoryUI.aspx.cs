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
    public partial class UpdateProductCategoryUI : System.Web.UI.Page
    {
       
        private ProductCategoryManager categoryManager;

        public UpdateProductCategoryUI()
        {
            categoryManager = new ProductCategoryManager();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["Id"]);

                ProductCategory category = categoryManager.GetProductCategoryById(id);

                LoadFormWithProductCategory(category);
        }
    }

        protected void updateButton_Click(object sender, EventArgs e)
        {
            if (categoryNameTextBox.Text == "")
            {
                outputLabel.Text = "Please fill up the text box.";
            }
            else
            {
                ProductCategory category = new ProductCategory();
                category.Id = Convert.ToInt32(idHiddenField.Value);
                category.CategoryName = categoryNameTextBox.Text;


                outputLabel.Text = categoryManager.Update(category);
                Response.Redirect("ShowAllProductCategoryEntryInfoUI.aspx");

            }
            
         
        }

        private void LoadFormWithProductCategory(ProductCategory category)
        {

            idHiddenField.Value = Convert.ToString(category.Id);
           categoryNameTextBox.Text = category.CategoryName;
            
        }

      
    }
}
    