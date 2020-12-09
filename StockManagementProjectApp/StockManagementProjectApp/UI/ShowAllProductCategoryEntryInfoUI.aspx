<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowAllProductCategoryEntryInfoUI.aspx.cs" Inherits="StockManagementProjectApp.UI.ShowAllProductCategoryEntryInfoUI" %>

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
    <div style="background-image: url('stock.png')"></div>
    <p class="text-center" style="color: #000080; font-size: medium;">&nbsp;</p>
     <p class="text-center" style="color: #000080; font-size: medium;">&nbsp;</p>
        <p class="text-center" style="color: #000080; font-size: medium;">Show All Product Category </p>
         <p class="text-center" style="color: #000080; font-size: medium;">&nbsp;</p>
     <p class="text-center" style="color: #000080; font-size: medium;">&nbsp;</p>
    <form id="form1" runat="server" style="background-image: url('stock.png')">
      
        <div>
            <center>
                
        
    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Name: " BackColor="#666666" BorderColor="#000066" BorderStyle="Solid" ForeColor="#0000CC" Height="43px" Width="128px"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="saveCategoryNameTextBox" runat="server" Height="38px" Width="353px"></asp:TextBox>
            </td>
     
        </tr>
    </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click1" BackColor="#999999" BorderColor="#000066" BorderStyle="Solid" ForeColor="#0000CC" Height="39px" Width="115px" />
        <br/>
        <br/>
            </center>
        </div>
  <center>
        <div>
            
                
                <asp:GridView ID="productCategoryGridView" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="productCategoryGridView_SelectedIndexChanged" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="241px" Width="591px">
                <Columns>
                    <asp:TemplateField HeaderText="SL">
                         <ItemTemplate>
                             <asp:HiddenField ID="idHiddenField" Value='<%#Eval("Id")%>' runat="server" />
                                    <%#Container.DataItemIndex+1 %>
                             </ItemTemplate>
                       </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                            <asp:Label  runat="server" Text='<%#Eval("CategoryName") %>'></asp:Label>  
                       </ItemTemplate>
                </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:LinkButton  ID="updateButton" runat="server" OnClick="updateButton_OnClick">Update</asp:LinkButton>
                             <%--<asp:LinkButton ID="deleteLinkButton" runat="server" OnClick="deleteLinkButton_OnClick">Delete</asp:LinkButton>--%>
                        </ItemTemplate>
                    </asp:TemplateField>
         
                   
    
                </Columns>

                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />

            </asp:GridView>
            

            <asp:Label ID="outputLabel" runat="server" Text=""></asp:Label>

    </div>
  </center>
       
        </form>
  <%--  <asp:HyperLink runat="server" NavigateUrl="MainUI.aspx">Main Page</asp:HyperLink>--%>
     
      
         
</body>
</html>
