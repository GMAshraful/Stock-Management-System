<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanySetupUI.aspx.cs" Inherits="StockManagementProjectApp.UI.CompanySetupUI" %>

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
    <form id="form1" runat="server" style="background-color: #FFFFFF; background-image: url('order_and_replenish.jpg');">
<div class="container">

     <ul class="nav justify-content-center" style="font-size: medium">
         <li>
      <a class="nav-link" href="MainUI.aspx">Home</a>
    </li>
         
    <li class="nav-item">
      <a class="nav-link" href="ShowAllProductCategoryEntryInfoUI.aspx">Category Setup</a>
    </li>
         <li>
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
        <p class="text-center" style="color: #000080; font-size: large;">Company Set Up </p>
        <br />
        <br />
      <div >
          <center>
    <table>
        <tr>
            <td>
                <div>
            
<asp:Label ID="Label1" runat="server" Text="Name: " BackColor="#999999" BorderColor="#0000CC" BorderStyle="Solid" ForeColor="#0000CC" Height="45px" Width="132px"></asp:Label>
                    </div>
            </td>
            <td>
                <asp:TextBox ID="saveCompanyNameTextBox" runat="server" Height="38px" Width="339px"></asp:TextBox>
            </td>
     
        </tr>
    </table>
     
        
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     
        
      <asp:Button ID="saveCompanyNameButton" runat="server" Text="Save" OnClick="saveCompanyNameButton_Click" BackColor="#999999" BorderColor="#000066" BorderStyle="Solid" ForeColor="#0000CC" Height="44px" Width="89px" />
        <br/>
        <br/>



        <div style="background-color: #FFFFFF; background-image: url('order_and_replenish.jpg')">
            
                
                <asp:GridView ID="companySetupGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="340px" Width="564px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:TemplateField HeaderText="SL">
                         <ItemTemplate>
                             <asp:HiddenField ID="idHiddenField" Value='<%#Eval("Id")%>' runat="server" />
                                    <%#Container.DataItemIndex+1 %>
                             </ItemTemplate>
                       </asp:TemplateField>
                    
                    
                    <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                            <asp:Label  runat="server" Text='<%#Eval("CompanyName") %>'></asp:Label>  
                       </ItemTemplate>
                </asp:TemplateField>
                    
                    
         
                    
                </Columns>

                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

            </asp:GridView>
            

            <asp:Label ID="outputLabel" runat="server" Text=""></asp:Label>
            </div>
            </center>
            </div>
        

    </form>
<%--    <asp:HyperLink runat="server" NavigateUrl="MainUI.aspx">Main Page</asp:HyperLink>--%>
</body>
</html>
