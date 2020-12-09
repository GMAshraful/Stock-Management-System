<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewSalesDateUI.aspx.cs" Inherits="StockManagementProjectApp.UI.ViewSalesDateUI" %>

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
    
    
    <link href="../Content/bootstrap.min.css" rel="stylesheet" /> 
    <link href="../Content/bootstrap-datepicker.css" rel="stylesheet" /> 
    


</head>
<body>
<%-- <form id="form2" runat="server">--%>
<div class="container">

  <ul class="nav justify-content-center">
      <li class="nav-item">
      <a class="nav-link" href="MainUI.aspx" style="font-size: medium">Home</a>
    </li>
    
    <li class="nav-item">
      <a class="nav-link" href="ShowAllProductCategoryEntryInfoUI.aspx" style="font-size: medium">Category Setup</a>
    </li>
      <li class="nav-item">
      <a class="nav-link" href="CompanySetupUI.aspx" style="font-size: medium">Company Setup</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="ItemSetupUI.aspx" style="font-size: medium">Item Setup</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="StockInUI.aspx" style="font-size: medium">Stock In</a>
    </li>
   <li class="nav-item">
      <a class="nav-link" href="StockOutUI.aspx" style="font-size: medium">Stock Out</a>
    </li>
       <li class="nav-item">
      <a class="nav-link" href="SearchViewUI.aspx" style="font-size: medium">Search & View</a>
    </li>
      <li class="nav-item">
      <a class="nav-link" href="ViewSalesDateUI.aspx" style="font-size: medium">View Sales</a>
    </li>
   </ul>
    </div>
    <p class="text-center" style="color: #000080; font-size: medium;">&nbsp;</p>
        <p class="text-center" style="color: #000080; font-size: large;">Sales Date View</p>
         <p class="text-center" style="color: #000080; font-size: medium;">&nbsp;</p>
    <form id="form1" runat="server" style="background-image: url('images.jpg')">
        <div>
            <center>
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="From Date" BackColor="#999999" BorderColor="#000066" BorderStyle="Solid" ForeColor="#000066" Height="41px" style="margin-bottom: 6px" Width="96px"></asp:Label>
        <asp:TextBox ID="FromDateTextboxId" runat="server" Height="40px" Width="244px"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="To Date" BackColor="#999999" BorderColor="#0000CC" BorderStyle="Solid" ForeColor="#0000CC" Height="41px" Width="96px"></asp:Label>
        <asp:TextBox ID="ToDateTextBoxId" runat="server" Height="40px" Width="244px"></asp:TextBox>
        <br/>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button2" runat="server" OnClick="SearchButtonClick" Width="111px" Text="Search" BackColor="#999999" BorderColor="#000066" BorderStyle="Solid" ForeColor="#0000CC" Height="43px" />
    </div>
        <div>
             <asp:Label ID="LabelOutput" runat="server"></asp:Label>
            <br/>
            <center>
            <asp:GridView ID="SearchSellGridViewList" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="238px" Width="613px">
                
                 <AlternatingRowStyle BackColor="White" />
                
                 <Columns>

                                <asp:TemplateField>
                                    <HeaderTemplate>Serial No.</HeaderTemplate>
                                    <ItemTemplate>
                                        <%#Container.DataItemIndex+1 %>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Company Name">
                                    <ItemTemplate>
                                        <asp:Label ID="CompanyNameID" runat="server" Text='<%# Eval("CompanyName") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>


                                <asp:TemplateField HeaderText="Item">
                                    <ItemTemplate>
                                        <asp:Label ID="ItemName" runat="server" Text='<%# Eval("ItemName") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Sale Quantity">
                                    <ItemTemplate>

                                        <asp:Label ID="salequantityid" runat="server" Text='<%# Eval("SaleQuantity") %>'></asp:Label>
                                    </ItemTemplate>

                                </asp:TemplateField>
                            </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                 <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                 <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                 <RowStyle BackColor="#E3EAEB" />
                 <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                 <SortedAscendingCellStyle BackColor="#F8FAFA" />
                 <SortedAscendingHeaderStyle BackColor="#246B61" />
                 <SortedDescendingCellStyle BackColor="#D4DFE1" />
                 <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
     </center>
          </div>
                </center>
        </div>
        
        <script src="../Scripts/jquery-1.10.2.min.js"></script>
        <script src="../Scripts/bootstrap.min.js"></script>
        <script src="../Scripts/bootstrap-datepicker.min.js"></script>
        
        <script>
            $(document).ready(function () {

                $('#FromDateTextboxId').datepicker({
                    format: "yyyy/mm/dd",
                    weekStart: 6,
                    autoclose: true
                });

                $('#ToDateTextBoxId').datepicker({
                    format: "yyyy/mm/dd",
                    weekStart: 6,
                    autoclose: true
                });
                
            });
        </script>

           </form>
</body>
</html>
