<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron-blue">
        <table>
            <tr>
                <th>Email: &nbsp;&nbsp; <asp:TextBox runat="server" ID="txbEmail" /> &nbsp;&nbsp;&nbsp;</th>
                <th>Password: &nbsp;&nbsp; <asp:TextBox runat="server" ID="txbPassword" /> &nbsp;&nbsp;&nbsp;</th>
                <th><input type="submit" class="btn" value="Login"/></th>
            </tr>
        </table>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Lending $$$ Problems</h2>
            <p>
                <ul>
                    <li>Have you ever lent money to a friend or family member only to never see that money again?</li>
                    <li>Do you feel uncomfortable asking someone to pay money back?</li>
                    <li>Have you lost track of how much a friend of family member owes you?</li>
                </ul>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Let Pandaloan Help</h2>
        <p>Pandaloan.com will send a statement every month to the borrower reminding them to pay. Pandaloan.com will keep track of the balance of the loan and notify all parties.</p>
        </div>
        <div class="col-md-4">
            <h2>Getting Started</h2>
            <p>Best of all Pandaloan.com is free and easy to use. It only takes minutes to set up!!!</p>
            <br />
            <p>
                <a class="btn btn-default" href="Login.aspx">Register &raquo;</a>
            </p>
        </div>
    </div>
</asp:Content>
