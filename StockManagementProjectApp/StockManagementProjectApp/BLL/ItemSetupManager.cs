using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using StockManagementProjectApp.DAL.Gateway;
using StockManagementProjectApp.DAL.Models;

namespace StockManagementProjectApp.BLL
{
    public class ItemSetupManager
    {
        ItemSetupGateway itemSetupGateway = new ItemSetupGateway();

        public bool  IsItemExist(int companyid)
        {

            bool isExist = itemSetupGateway.IsItemNameExist(companyid);
            return isExist;

        }
        public string SaveManager(ItemSetup itemSetup)
        {
            if (itemSetupGateway.IsItemNameExist(itemSetup.ItemName))
            {
                return "Item Name already exists !";
            }
            else
            {
                int row = itemSetupGateway.SaveGateway(itemSetup);
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


        public List<ItemSetup> GetAllItems()
        {
            List<ItemSetup> items = itemSetupGateway.GetAllItems();
            return items;
        }
        public List<ItemSetup> GetAllItemsFake()
        {
            List<ItemSetup> items = null;
            return items;
        }
        public List<ItemSetup> GetAllItemsByCompany(int id)
        {
            List<ItemSetup> items = itemSetupGateway.GetAllItemsByCompany(id);
            return items;
        }

        public string GetReorderLevelByDropDown(int companyid)
        {
            if (!itemSetupGateway.CheckReorderExist(companyid))
            {
                return "No such value !";

            }

            else
            {
                int reorder = itemSetupGateway.GetReorderLevel(companyid);
                string reorderLevel = reorder.ToString();
                return reorderLevel;
            }

            
        }

        


    }
}