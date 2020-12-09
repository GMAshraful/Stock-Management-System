using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using StockManagementProjectApp.DAL.Gateway;
using StockManagementProjectApp.DAL.Models;

namespace StockManagementProjectApp.BLL
{
    public class StockInManager
    {
        private StockInGateway stockInGateway = new StockInGateway();

        public string SaveManager(StockIn stockIn)
        {
            if (stockIn.StockQuantity == 0)
            {
                return "Stock Quantity should be filled";
            }
            else if (stockInGateway.IsStockExist(stockIn))
            {
                int stockQuantityAvailable = stockInGateway.StockQuantityAvailable(stockIn);

                stockIn.StockQuantity = stockIn.StockQuantity + stockQuantityAvailable;
                int row = stockInGateway.Update(stockIn);
                if (row > 0)
                {
                    return "Save Successful !";
                }
               else
                {
                    return "Saving Failed !";
                }

            }
            else
            {
                int row = stockInGateway.SaveGateway(stockIn);
                if (row > 0)
                {
                    return "Save Successful !";
                }
                else
                {
                    return "Saving Failed !";
                }  

            }
        }

        public string DeleteManager(StockIn stockIn)
        {      
            int stockQuantityAvailable = stockInGateway.StockQuantityAvailable(stockIn);
            if (stockIn.StockQuantity <= stockQuantityAvailable)
            {
                stockIn.StockQuantity = stockQuantityAvailable - stockIn.StockQuantity;

            }
            else
            {
                return "less availabe quantity";
            }
             int row = stockInGateway.Update(stockIn);
             if (row > 0)
             {
                 return "Successful !";
             }
             else
             {
                 return "Failed !";
             }
        }


        public string GetQuantityByDropDown(int companyid, int itemid)
        {

            if (!stockInGateway.CheckStockExist(companyid,itemid))

            {
                return "No such items !";

            }

            else
            {
                int quantity = stockInGateway.GetQuantityByDropDown(companyid, itemid);
                string stockQuantity = quantity.ToString();
                return stockQuantity;
            }

            

        }

        public bool checkAvailability(int companyid, int itemid)
        {
            bool isExist = stockInGateway.CheckStockExist(companyid, itemid);
            return isExist;
        }

       
        
    }
}



       