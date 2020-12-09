<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StockInUI.aspx.cs" Inherits="StockManagementProjectApp.UI.StockInUI" %>

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
      <a class="nav-link" href="ViewSalesDateUI.aspx">View Sales</a></li>
      <li class="nav-item">
      &nbsp;</li>
      <li class="nav-item">
    </li>
   </ul>
    </div>
   <p class="text-center" style="color: #000080; font-size: medium;">&nbsp;</p>
     <p class="text-center" style="color: #000080; font-size: medium;">&nbsp;</p>
        <p class="text-center" style="color: #000080; font-size: large;">Stock In</p>
         <p class="text-center" style="color: #000080; font-size: medium;">&nbsp;</p>
     <p class="text-center" style="color: #000080; font-size: medium;">&nbsp;</p>
    <form id="form1" runat="server" style="background-image: url('safety-stock.png')" >

      <div>
          <center>
        
        <table>
           
            <tr>
                <td>
                     <%--<asp:HiddenField ID="idHiddenField" Value='<%#Eval("Id")%>' runat="server" />--%>

                     <asp:Label ID="Label1" runat="server" Text="Company" BackColor="#999999" BorderColor="#000066" BorderStyle="Solid" ForeColor="#0000CC" Height="42px" Width="135px"></asp:Label>  
                    </td>
                        <td>
                       <asp:DropDownList ID="companyDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="companyDropDownList_SelectedIndexChanged" Height="43px" Width="285px"></asp:DropDownList>  
                    </td>
                    
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Item" BackColor="#999999" BorderColor="#000066" BorderStyle="Solid" ForeColor="#0000CC" Height="43px" Width="135px"></asp:Label>
                    </td>
                 <td>
                   <asp:DropDownList ID="itemDropDownList" runat="server" AutoPostBack="True" AppendDataBoundItems="False" OnSelectedIndexChanged="itemDropDownList_SelectedIndexChanged" Height="43px" Width="285px"></asp:DropDownList> 
                </td>
            </tr>
       
  
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Reorder Level: " BackColor="#999999" BorderColor="#000066" BorderStyle="Solid" ForeColor="#0000CC"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="reorderLevelTextBox" runat="server" Enabled="False" Height="28px" Width="272px"></asp:TextBox>

                </td>
            </tr>
            
             <tr>
              <td>
                  <asp:Label ID="Label3" runat="server" Text="Available Quantity" BackColor="#999999" BorderColor="#000066" BorderStyle="Solid" ForeColor="#0000CC"></asp:Label></td>
              <td>
                  <asp:TextBox ID="availableQuantityTextBox" runat="server" Enabled="False" Height="37px" Width="275px"></asp:TextBox>

              </td>
          </tr>
             <tr>
              <td>
                  <asp:Label ID="Label5" runat="server" Text="Stock In Quantity" BackColor="#999999" BorderColor="#000066" BorderStyle="Solid" ForeColor="#0000CC"></asp:Label></td>
              <td>
                  <asp:TextBox ID="stockInQuantityTextBox" runat="server" Height="30px" Width="272px"></asp:TextBox>

              </td>
          </tr>



     </table>
       
        </center>

         <center>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="stockInSaveButton" runat="server" Text="Save" OnClick="stockInSaveButton_OnClick" BackColor="#999999" BorderColor="#000066" BorderStyle="Solid" ForeColor="#0000CC" Height="36px" Width="114px" />
         <br/>
        <asp:Label ID="outputLabel" runat="server" Text=""></asp:Label>
                  </center>
      </div>

      
    <%-- <center>
   
    <asp:HyperLink runat="server" NavigateUrl="MainUI.aspx">Main Page</asp:HyperLink>

   
      </center>--%>
          </form> 
</body>
</html>
