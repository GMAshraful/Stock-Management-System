using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using StockManagementProjectApp.DAL.Gateway;
using StockManagementProjectApp.DAL.Models;

namespace StockManagementProjectApp.BLL
{
    public class CompanySetupManager
    {
        CompanySetupGateway companySetupGateway = new CompanySetupGateway();
        public string Save(CompanySetup companySetup)

        {
            if (companySetupGateway.IsCompanyNameExists(companySetup.CompanyName))
            {
                return "Company Name Already Exists";
            }
            else if (companySetup.CompanyName == "")
            {
                return "WARNING !! Null field should be filled.";
            }
            
            
            else
            {
                int rowAffect = companySetupGateway.Save(companySetup);


                if (rowAffect > 0)
                {
                    return "Company Name Entry Successful";
                }
                else
                {
                    return "Company name save Failed";
                }


            }
        }


        public List<CompanySetup> GetAllCompanySetup()
        {
            List<CompanySetup> companies = companySetupGateway.GetAllCompanies();
            return companies;
        }





    }
}