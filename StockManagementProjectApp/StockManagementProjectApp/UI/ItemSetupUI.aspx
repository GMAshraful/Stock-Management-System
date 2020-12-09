<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ItemSetupUI.aspx.cs" Inherits="StockManagementProjectApp.UI.ItemSetupUI" %>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>--%>
   <%-- <form id="form1" runat="server">--%>
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
 <form id="form1" runat="server" style="background-image: url('real-time-tiny.png')">
<div class="container">
 
  <ul class="nav justify-content-center" style="font-size: medium">
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
    <p class="text-center" style="color: #000080; font-size: large; height: 42px;">Item Set Up </p>
     <p class="text-center" style="color: #000080; font-size: medium;">&nbsp;</p>
     <div>
         <div>

         <center>
        <table>
            <tr>
                <td>
                  <asp:Label ID="Label1" runat="server" Text="Category" BackColor="#999999" BorderColor="#000099" BorderStyle="Solid" ForeColor="Black" Height="52px" Width="126px"></asp:Label>  
                    </td>
                        <td>
                       <asp:DropDownList ID="categoryDropDownList" runat="server" Height="33px" Width="297px"></asp:DropDownList>  
                    </td>
                    
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Company" BackColor="#999999" BorderColor="#000099" BorderStyle="Solid" ForeColor="Blue" Height="52px" Width="126px"></asp:Label>
         <p class="text-center" style="color: #000080; font-size: medium;">&nbsp;</p>
                    </td>
                 <td>
                   <asp:DropDownList ID="companyDropDownList" runat="server" Height="33px" Width="297px"></asp:DropDownList> 
                </td>
            </tr>
       
          <tr>
              <td>
                  <asp:Label ID="Label3" runat="server" Text="  Item Name: " BackColor="#999999" BorderColor="#000099" BorderStyle="Solid" ForeColor="#000099" Height="42px" Width="125px"></asp:Label></td>
              <td>
                  <asp:TextBox ID="itemNameTextBox" runat="server" Height="39px" Width="291px"></asp:TextBox>

              </td>
          </tr>

            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Reorder Level: " BackColor="#999999" BorderColor="#000099" BorderStyle="Solid" ForeColor="#0033CC"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="reorderLevelTextBox" runat="server" Height="33px" Width="289px"></asp:TextBox>

                </td>
            </tr>
     </table>
         </center>
         </div>

<center>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="itemSaveButton" runat="server" Text="Save" OnClick="itemSaveButton_Click" BackColor="#999999" BorderColor="#000066" BorderStyle="Solid" ForeColor="#0000CC" Height="43px" Width="81px" />
         <br/>
        <asp:Label ID="outputLabel" runat="server" Text=""></asp:Label>
        <asp:Label ID="outputLabelReorder" runat="server" Text=""></asp:Label>
      </center>
     </div>
 </form>
<%--    <asp:HyperLink runat="server" NavigateUrl="MainUI.aspx">Main Page</asp:HyperLink>--%>
    <div style="background-image: url('real-time-tiny.png')"></div>
</body>
</html>
