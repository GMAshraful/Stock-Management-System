<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StockOutUI.aspx.cs" Inherits="StockManagementProjectApp.UI.StockOutUI" %>

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
    <style type="text/css">
        .auto-style1 {
            width: 94px;
        }
    </style>
</head>
<body>
<%-- <form id="form2" runat="server">--%>
    <form id="form1" runat="server" style="background-image: url('4.png')">
<div class="container">
 
  <ul class="nav justify-content-center" style="font-size: medium; color: #000000;">
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
        <p class="text-center" style="color: #000080; font-size: large;">Stock Out</p>
         <p class="text-center" style="color: #000080; font-size: medium;">&nbsp;</p>
    <div>
           <div>
            <center>
    <table>
           
            <tr>
                <td>
                     <%--<asp:HiddenField ID="idHiddenField" Value='<%#Eval("Id")%>' runat="server" />--%>

                     <asp:Label ID="Label1" runat="server" Text="Company" BackColor="#999999" BorderColor="#000066" BorderStyle="Solid" ForeColor="#0000CC" Height="41px" Width="133px"></asp:Label>  
                    </td>
                        <td>
                       <asp:DropDownList ID="companyDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="companyDropDownList_SelectedIndexChanged" Height="38px" Width="268px"></asp:DropDownList>  
                    </td>
                    
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Item" BackColor="#999999" BorderColor="#000066" BorderStyle="Solid" ForeColor="#0000CC" Height="37px" Width="131px"></asp:Label>
                    </td>
                 <td>
                   <asp:DropDownList ID="itemDropDownList" runat="server" AutoPostBack="True" AppendDataBoundItems="False" OnSelectedIndexChanged="itemDropDownList_SelectedIndexChanged" Height="38px" Width="268px"></asp:DropDownList> 
                </td>
            </tr>
       
  
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Reorder Level: " BackColor="#999999" BorderColor="#000066" BorderStyle="Solid" ForeColor="#0000CC"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="reorderLevelTextBox" runat="server" Enabled="False" Height="34px" Width="262px"></asp:TextBox>

                </td>
            </tr>
            
             <tr>
              <td>
                  <asp:Label ID="Label3" runat="server" Text="Available Quantity" BackColor="#999999" BorderColor="#000066" BorderStyle="Solid" ForeColor="#0000CC"></asp:Label></td>
              <td>
                  <asp:TextBox ID="availableQuantityTextBox" runat="server" Enabled="False" Height="33px" Width="263px"></asp:TextBox>

              </td>
          </tr>
             <tr>
              <td>
                  <asp:Label ID="Label5" runat="server" Text="Stock Out Quantity" BackColor="#999999" BorderColor="#000066" BorderStyle="Solid" ForeColor="#0000CC"></asp:Label>&nbsp;</td>
              <td>
                  <asp:TextBox ID="stockOutQuantityTextBox" runat="server" Height="34px" Width="266px"></asp:TextBox>

              </td>
          </tr>



     </table>
            </center>


           </div>
        <center>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="stockOutAddButton" runat="server" Text="Add" OnClick="stockOutAddButton_Click" BackColor="#999999" BorderColor="#000066" BorderStyle="Solid" ForeColor="#0000CC" Height="37px" Width="104px"  />
         <br/>
        <asp:Label ID="outputLabel" runat="server" Text=""></asp:Label>
        
        <div >
             
                <asp:GridView ID="stockOutGridView" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="252px" Width="538px">
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
                    <asp:TemplateField HeaderText="Quantity">
                    <ItemTemplate>
                            <asp:Label  runat="server" Text='<%#Eval("StockQuantity") %>' ></asp:Label>  
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
            </div>
            <table>
                <tr>
                    
                    <td><asp:Button ID="sellButton" runat="server" Text="Sell" OnClick="sellButton_Click" BackColor="#999999" BorderColor="#000066" BorderStyle="Solid" ForeColor="#0000CC" Height="34px" Width="109px" />&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td><asp:Button ID="damageButton" runat="server" Text="Damage" OnClick="damageButton_Click" BackColor="#999999" BorderColor="#000066" BorderStyle="Solid" ForeColor="#0000CC" Height="37px" Width="114px" />&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style1"><asp:Button ID="lostButton" runat="server" Text="Lost" OnClick="lostButton_Click" BackColor="#999999" BorderColor="#000066" BorderStyle="Solid" ForeColor="#0000CC" Height="40px" Width="120px" /></td>
                </tr>
         </table>
        </center>


    </div>
          <center>
            
        <asp:Label ID="outputLabelForSubtract" runat="server" Text=""></asp:Label>
              </center>
                     </form>
</body>
</html>
