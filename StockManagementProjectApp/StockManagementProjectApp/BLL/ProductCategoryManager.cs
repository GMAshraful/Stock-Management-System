using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using StockManagementProjectApp.DAL.Gateway;
using StockManagementProjectApp.DAL.Models;

namespace StockManagementProjectApp.BLL
{
    public class ProductCategoryManager
    {
        ProductCategoryGateway productCategoryGateway = new ProductCategoryGateway();
        public string Save(ProductCategory category)
        {
            if (productCategoryGateway.IsProCategoryNameExists(category.CategoryName))
            {
                return "Category Name Already Exists";
            }
            else if (category.CategoryName == "")
            {
                return "WARNING !! Null field should be filled.";
            }
            else
            {
                int rowAffect = productCategoryGateway.Save(category);


                if (rowAffect > 0)
                {
                    return "Product Category Entry Successful";
                }
                else
                {
                    return "Save Failed";
                }


            }    
            }
       
        public List<ProductCategory> GetAllProductCategory()
        {
            List<ProductCategory> categories = productCategoryGateway.GetAllProductCategory();
            return categories;
        }


       
        public ProductCategory GetProductCategoryById(int id)
        {
            ProductCategory category = productCategoryGateway.GetProductCategoryById(id);
                return category;
        }

        public string Update(ProductCategory category)
        {
            int rowAffect = productCategoryGateway.Update(category);
            if (rowAffect>0)
            {
                return "Update Successful";

            }
            else
            {
                return "Update Failed";
            }
        }

        public string Delete(int id)
        {
            int rowAffect = productCategoryGateway.Delete(id);
            if (rowAffect > 0)
            {
                return "Delete Successful";

            }
            else
            {
                return "Delete Failed";
            }
        }
        public string DeleteItemSetupCategoryId(int id)
        {
            int rowAffect = productCategoryGateway.DeleteItemSetupCategoryId(id);
            if (rowAffect > 0)
            {
                return "Delete Successful";

            }
            else
            {
                return "Delete Failed";
            }
        }
    }
}

