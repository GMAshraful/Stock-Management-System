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
    public partial class ShowAllProductCategoryEntryInfoUI : System.Web.UI.Page
    {
        
        ProductCategoryManager productCategoryManager = new ProductCategoryManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                productCategoryGridView.DataSource = productCategoryManager.GetAllProductCategory();
                productCategoryGridView.DataBind();
            }

           }
            

        protected void deleteLinkButton_OnClick(object sender, EventArgs e)
        {

            LinkButton deleteLinkButton = (LinkButton)sender;
            DataControlFieldCell controlFieldCell = (DataControlFieldCell)deleteLinkButton.Parent;
            GridViewRow row = (GridViewRow)controlFieldCell.Parent;
            HiddenField idHiddenField = (HiddenField)row.FindControl("idHiddenField");
            int id = Convert.ToInt32(idHiddenField.Value);
            productCategoryManager.Delete(id);
            //productCategoryManager.DeleteItemSetupCategoryId(id);

            productCategoryGridView.DataSource = productCategoryManager.GetAllProductCategory();
            productCategoryGridView.DataBind();


          
        }

       

        protected void saveButton_Click1(object sender, EventArgs e)
        {
            string intCheck = saveCategoryNameTextBox.Text;
            int count = 0, z = 0;
            for (int i = 0; i < intCheck.Length; i++)
            {
                if ((intCheck[i] >= '0' && intCheck[i] <= '9'))
                { count++; }
                if ((intCheck[i] >= 'a' && intCheck[i] <= 'z') || (intCheck[i] >= 'A' && intCheck[i] <= 'Z'))
                {
                    z++;
                }

            }
            if (count > 0 || z == 0)
            {
                outputLabel.Text = "Number (0-9) and special characters (@,#,$..) are not allowed! ";
                saveCategoryNameTextBox.Text = "";

            }
            else
            {
                ProductCategory productCategory = new ProductCategory();
                productCategory.CategoryName = saveCategoryNameTextBox.Text;
                outputLabel.Text = productCategoryManager.Save(productCategory);
                saveCategoryNameTextBox.Text = "";
                productCategoryGridView.DataSource = productCategoryManager.GetAllProductCategory();
                productCategoryGridView.DataBind();
            }
            

            
        }


        protected void updateButton_OnClick(object sender, EventArgs e)
        {
            LinkButton updateLinkButton = (LinkButton)sender;
            DataControlFieldCell controlFieldCell = (DataControlFieldCell)updateLinkButton.Parent;
            GridViewRow row = (GridViewRow)controlFieldCell.Parent;
            HiddenField idHiddenField = (HiddenField)row.FindControl("idHiddenField");
            int id = Convert.ToInt32(idHiddenField.Value);
            Response.Redirect("UpdateProductCategoryUI.aspx?ID=" + id);
            //Response.Write(sl);
        }

        protected void productCategoryGridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}