<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchViewUI.aspx.cs" Inherits="StockManagementProjectApp.UI.SearchViewUI" %>

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
 <form id="form2" runat="server" style="background-image: url('PrestaShop-1-7-2-Stock-Complet.jpg')">
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
  <p class="text-center" style="color: #000080; font-size: medium;">&nbsp;</p>
     <p class="text-center" style="color: #000080; font-size: medium;">&nbsp;</p>
        <p class="text-center" style="color: #000080; font-size: medium;">Search View </p>
         <p class="text-center" style="color: #000080; font-size: medium;">&nbsp;</p>
     <p class="text-center" style="color: #000080; font-size: medium;">&nbsp;</p>
    <div>
        <div>
            <center>
       
         <table>
           
            <tr>
                <td>
                     <%--<asp:HiddenField ID="idHiddenField" Value='<%#Eval("Id")%>' runat="server" />--%>

                     <asp:Label ID="Label1" runat="server" Text="Company" BackColor="#CCCCCC" BorderStyle="Solid" ForeColor="#000099"></asp:Label>  
                    </td>
                        <td>
                       <asp:DropDownList ID="companyDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="companyDropDownList_SelectedIndexChanged" Height="46px" Width="286px"></asp:DropDownList>  
                    </td>
                    
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Category" BackColor="#999999" BorderColor="Blue" BorderStyle="Solid" ForeColor="Blue"></asp:Label>
                    </td>
                 <td>
                   <asp:DropDownList ID="categoryDropDownList" runat="server" AutoPostBack="True" AppendDataBoundItems="False" Height="30px" Width="283px"></asp:DropDownList> 
<%--                   <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" AppendDataBoundItems="False" OnSelectedIndexChanged="categoryDropDownList_SelectedIndexChanged"></asp:DropDownList> --%>
                
                 </td>
            </tr>
 
     </table>
            </center>


        </div>
        <center>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="searchButton" runat="server" Text="Search" OnClick="searchButton_OnClick" BackColor="#999999" BorderColor="#000066" BorderStyle="Solid" ForeColor="#0000CC" Height="37px" Width="106px"  />
            </center>
         <br/>
  
        
        <div >
            <center>
             
                <asp:GridView ID="searchViewGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" GridLines="Horizontal" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" Height="293px" Width="769px">
                <Columns>
                    <asp:TemplateField HeaderText="SL">
                         <ItemTemplate>
                             <asp:HiddenField ID="idHiddenField" Value='<%#Eval("Id")%>' runat="server" />
                                    <%#Container.DataItemIndex+1 %>
                             </ItemTemplate>
                       </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Item">
                    <ItemTemplate>
                            <asp:Label  runat="server" Text='<%#Eval("Item") %>'></asp:Label>  
                       </ItemTemplate>
                </asp:TemplateField>

                    <asp:TemplateField HeaderText="Company">
                    <ItemTemplate>
                            <asp:Label  runat="server" Text='<%#Eval("Company") %>' ></asp:Label>  
                       </ItemTemplate>
               </asp:TemplateField>
                    <%--<asp:TemplateField HeaderText="Quantity">
                    <ItemTemplate>
                            <asp:Label  runat="server" Text='<%#Eval("StockQuantity") %>' ></asp:Label>  
                       </ItemTemplate>
                </asp:TemplateField>--%>
                   
                    <asp:TemplateField HeaderText="AvailableQuantity">
                    <ItemTemplate>
                            <asp:Label  runat="server" Text='<%#Eval("AvailableQuantity") %>' ></asp:Label>  
                       </ItemTemplate>
                </asp:TemplateField>
                

                    <asp:TemplateField HeaderText="ReorderLevel">
                    <ItemTemplate>
                            <asp:Label  runat="server" Text='<%#Eval("ReorderLevel") %>' ></asp:Label>  
                       </ItemTemplate>
                </asp:TemplateField>
                    
                </Columns>

                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />

            </asp:GridView>
            </center>


        </div>
     </center>
        </div>   
      </form>  
</body>
</html>
