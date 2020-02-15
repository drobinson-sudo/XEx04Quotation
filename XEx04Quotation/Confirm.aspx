<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirm.aspx.cs" Inherits="XEx04Quotation.Confirm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Confirm quotation</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" class="form-horizontal">

        <main class="container">

            <h1 class="jumbotron">Quotation confirmation</h1>

            <div class="form-group">
                <label class="col-sm-3 control-label">Sales price</label>
                <asp:Label ID="lblSalesPrice" runat="server" CssClass="col-sm-3 bold"></asp:Label>
            </div>

            <div class="form-group">
                <label class="col-sm-3 control-label">Discount amount</label>
                <asp:Label ID="lblDiscountAmount" runat="server" CssClass="col-sm-3 bold"></asp:Label>
            </div>

            <div class="form-group">
                <label class="col-sm-3 control-label">Total price</label>
                <asp:Label ID="lblTotalPrice" runat="server" CssClass="col-sm-3 bold"></asp:Label>
            </div> 

            <div class="row">
                <h3 class="col-sm-offset-2 col-sm-10">Send confirmation to</h3>
            </div>
            
            <div class="form-group">
                <label class="col-sm-3 control-label">Name</label>
                <div class="col-sm-3">
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" 
                        Display="Dynamic" ErrorMessage="Required" CssClass="text-danger"></asp:RequiredFieldValidator>
                </div>  
            </div>  
            
            <div class="form-group">
                <label class="col-sm-3 control-label">Email address</label>
                <div class="col-sm-3">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" 
                        Display="Dynamic" ErrorMessage="Required" CssClass="text-danger"></asp:RequiredFieldValidator>
                </div>  
            </div>  

            <%-- Quotation and Return buttons --%>
            <div class="form-group">
                <div class="col-sm-offset-3 col-sm-9">
                    <%-- buttons go here --%>
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
