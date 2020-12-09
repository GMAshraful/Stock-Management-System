<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainUI.aspx.cs" Inherits="StockManagementProjectApp.UI.MainUI" %>
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
 <form id="form1" runat="server" style="background-color: #808080; color: #000000; font-size: large;">
     
     
     
     <asp:ImageButton ID="ImageButton1" runat="server" Height="526px" ImageUrl="~/UI/stock-management-system-project-vb-php.jpg" Width="1555px" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="container">
 <%--<p class="text-center" style="line-height: normal; background-color: #FFFFFF">Stock Management System </p>--%>
  <ul class="nav justify-content-center">
   
      <li class="nav-item">
        <a class="nav-link" href="ShowAllProductCategoryEntryInfoUI.aspx" style="background-color: #808080; color: #000000;">Category Setup</a>
    </li>
   <li class="nav-item">
      <a class="nav-link" href="CompanySetupUI.aspx" style="font-family: 'Times New Roman', Times, serif; background-color: #808080; color: #000000;">Company Setup</a> 
          </li>
      
        <li class="nav-item">
      <a class="nav-link" href="ItemSetupUI.aspx" style="background-color: #808080; color: #000000;">Item Setup</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="StockInUI.aspx" style="background-color: #808080; color: #000000;">Stock In</a>
    </li>
   <li class="nav-item">
      <a class="nav-link" href="StockOutUI.aspx" style="background-color: #808080; color: #000000;">Stock Out</a>
    </li>
       <li class="nav-item">
      <a class="nav-link" href="SearchViewUI.aspx" style="background-color: #808080; color: #000000;">Search & View</a>
    </li>
      <li class="nav-item">
      <a class="nav-link" href="SearchViewUI.aspx" style="background-color: #808080; color: #000000;">View Sales</a></li>
      <li class="nav-item">
      &nbsp;</li>
     
   </ul>
    </div>

        
        
        

        <%--<asp:ImageButton ID="ImageButton1" runat="server" Height="493px" ImageUrl="~/UI/stock-management-system-project-vb-php.jpg" Width="1441px" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" BackColor="#FFFF99" BorderColor="Black" BorderStyle="Solid" ForeColor="Black" Height="51px" Width="185px">Category Set up</asp:LinkButton>

        &nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton1_Click" BackColor="#FFFF99" BorderColor="Black" BorderStyle="Solid" ForeColor="Black" Height="48px" Width="190px">Shaw all product </asp:LinkButton>
        &nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton1_Click" BackColor="#FFFF66" BorderColor="Black" BorderStyle="Solid" ForeColor="Black" Height="47px" Width="156px">Item set up</asp:LinkButton>
        &nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton1_Click" BackColor="#FFFF99" BorderColor="Black" BorderStyle="Solid" ForeColor="Black" Height="45px" Width="145px">Stock In</asp:LinkButton>
        &nbsp;
        <asp:LinkButton ID="LinkButton9" runat="server" OnClick="LinkButton1_Click" BackColor="#FFFF66" BorderColor="Black" BorderStyle="Solid" ForeColor="Black" Height="47px" Width="154px">Search View</asp:LinkButton>
        &nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton1_Click" BackColor="#FFFF66" BorderColor="Black" BorderStyle="Solid" ForeColor="Black" Height="49px" Width="164px">Sales</asp:LinkButton>
        
        <br />
        <br />
        <br />
        <br />--%>
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <p style="color: #000080; background-color: #FFFFFF; height: 102px; width: 1555px;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Copy Right By 2NXY</p>
    </form>
</body>
</html>





<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:HyperLink runat="server" NavigateUrl="CompanySetupUI.aspx">Company Setup </asp:HyperLink> <br/>
        <asp:HyperLink runat="server" NavigateUrl="ShowAllProductCategoryEntryInfoUI.aspx">Show All Category</asp:HyperLink> <br/>
        <asp:HyperLink runat="server" NavigateUrl="ItemSetupUI.aspx">Item Setup</asp:HyperLink>
        <br/> <asp:HyperLink runat="server" NavigateUrl="StockInUI.aspx">Stock In</asp:HyperLink>
        <br/><asp:HyperLink runat="server" NavigateUrl="StockOutUI.aspx">Stock Out</asp:HyperLink>
        <br/><asp:HyperLink runat="server" NavigateUrl="SearchViewUI.aspx">Search View</asp:HyperLink>
        
         <br/><asp:HyperLink runat="server" NavigateUrl="ViewSalesDateUI.aspx">Sales</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>--%>
