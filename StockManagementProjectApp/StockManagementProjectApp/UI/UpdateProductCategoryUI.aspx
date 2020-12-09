<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateProductCategoryUI.aspx.cs" Inherits="StockManagementProjectApp.UI.UpdateProductCategoryUI" %>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>--%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Project By  2NXY</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<%-- <form id="form2" runat="server">--%>
<div class="container">

  <ul class="nav justify-content-center">
      <li class="nav-item">
      <a class="nav-link" href="MainUI.aspx">Home</a>
    </li>
 
    <li class="nav-item">
      <a class="nav-link" href="ShowAllProductCategoryEntryInfoUI.aspx">Category Setup</a>
    </li>
         <li class="nav-item">
      <a class="nav-link" href="CompanySetupUI.aspx">Company Setup</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="ItemSetupUI.aspx">Item Setup</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="StockInUI.aspx">Stock In</a>
    </li>
   <li class="nav-item">
      <a class="nav-link" href="StockOutUI.aspx">Stock Out</a>
    </li>
       <li class="nav-item">
      <a class="nav-link" href="SearchViewUI.aspx">Search & View</a>
    </li>
      <li class="nav-item">
      <a class="nav-link" href="ViewSalesDateUI.aspx">View Sales</a>
    </li>
   </ul>
    </div>
       <p class="text-center" style="color: #000080; font-size: medium;">&nbsp;</p>
     <p class="text-center" style="color: #000080; font-size: medium;">&nbsp;</p>
        <p class="text-center" style="color: #000080; font-size: medium;">Update Product Category</p>
         <p class="text-center" style="color: #000080; font-size: medium;">&nbsp;</p>
     <p class="text-center" style="color: #000080; font-size: medium;">&nbsp;</p>
        <form id="form1" runat="server" style="background-image: url('Magento-Inventory-Management-extension-how-it-works_2.png')">
        <div>
            <center>
                
           
        <table >
        <tr>
            <th><asp:Label ID="Label1" runat="server" Text="Category Name"></asp:Label></th>
            </tr>

            <tr>
                <td><asp:HiddenField ID="idHiddenField" runat="server"/>
                    <asp:TextBox ID="categoryNameTextBox" runat="server" Height="34px" Width="355px"></asp:TextBox>
                
            </td>
            </tr>
        <tr>
                <td>

                    <asp:Button ID="updateButton" runat="server" Text="Update"   OnClick="updateButton_Click" BackColor="#999999" BorderColor="Black" BorderStyle="Solid" />
                    <br />
                    <asp:Label ID="outputLabel" runat="server"></asp:Label>
                &nbsp;
                </td>

            </tr>
        </table>

            
              </center>
        </div>    
   
        
   
    </form>
          
   
</body>
</html>
