using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using StockManagementProjectApp.DAL.Gateway;
using StockManagementProjectApp.DAL.Models;

namespace StockManagementProjectApp.BLL
{
    public class SearchViewManager
    {
         SearchViewGateway searchViewGateway= new SearchViewGateway();
        public List<SearchView> SearchByCompany(int companyId,string companyName)
        {
            
            return searchViewGateway.SearchByCompany(companyId,companyName);
            
        }
        public List<SearchView> SearchByCategory(int CategoryId)
        {
            return searchViewGateway.SearchByCategory(CategoryId);
        }

        public List<SearchView> SearchByCompanyAndCategory(int companyid, int CategoryId)
        {
            return searchViewGateway.SearchByCompanyAndCategory(companyid, CategoryId);
        }

        public List<SearchView> SearchByAll()
        {
            return searchViewGateway.SearchByAll();
        }
    
    }
}