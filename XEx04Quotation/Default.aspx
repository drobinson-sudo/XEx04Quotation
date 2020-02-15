<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="XEx04Quotation.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Price quotation</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" class="form-horizontal">

        <main class="container">

            <h1 class="jumbotron">Price quotation</h1>

            <div class="form-group">
                <label class="col-sm-3 control-label">Sales price</label>
                <div class="col-sm-3">
                    <asp:TextBox ID="txtSalesPrice" runat="server" CssClass="form-control bold">100</asp:TextBox>
                </div>
                <div class="col-sm-6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSalesPrice" 
                        Display="Dynamic" ErrorMessage="Required" CssClass="text-danger"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtSalesPrice" 
                        Display="Dynamic" ErrorMessage="Must be from 10 to 1000" CssClass="text-danger" 
                        MaximumValue="1000" MinimumValue="10" Type="Double"></asp:RangeValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-3 control-label">Discount percent</label>
                <div class="col-sm-3">
                    <asp:TextBox ID="txtDiscountPercent" runat="server" CssClass="form-control">20</asp:TextBox>
                </div>
                <div class="col-sm-6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDiscountPercent" 
                        Display="Dynamic" ErrorMessage="Required" CssClass="text-danger"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtDiscountPercent" Display="Dynamic" 
                        ErrorMessage="Must be from 10 to 50" CssClass="text-danger"
                        MaximumValue="50" MinimumValue="10" Type="Double"></asp:RangeValidator>
                </div>  
            </div>

            <div class="form-group">
                <label class="col-sm-3 control-label">Discount amount</label>
                <asp:Label ID="lblDiscountAmount" runat="server" CssClass="col-sm-3 bold"></asp:Label>
            </div>

            <div class="form-group">
                <label class="col-sm-3 control-label">Total price</label>
                <asp:Label ID="lblTotalPrice" runat="server" CssClass="col-sm-3 bold"></asp:Label>
            </div> 

            <%-- Calculate and Confirm buttons --%>
            <div class="form-group">
                <div class="col-sm-offset-3 col-sm-9">
                    <asp:Button ID="btnCalculate" runat="server" Text="Calculate"
                         CssClass="btn btn-primary" OnClick="btnCalculate_Click" />
                    <%-- confirm button goes here --%>
                </div>
            </div> 
            
            <%-- message label --%>
            <div class="form-group">
                <div class="col-sm-offset-1 col-sm-11">
                    <%-- message label goes here --%>
                </div>
            </div>   

        </main>

    </form>
</body>
</html>
