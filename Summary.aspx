<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Summary.aspx.cs" Inherits="Summary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <table>
        <tr><td><asp:Label runat="server" ID="lblFirstName" /> <asp:Label runat="server" ID="lblLastName" /></td></tr>
        <tr><td><asp:Label runat="server" ID="lblAddress" /></td></tr>
        <tr><td><asp:Label runat="server" ID="lblCity" />, <asp:Label runat="server" ID="lblState" /> <asp:Label runat="server" ID="lblZipCode" /></td></tr>
    </table>
    <br /><br />
    <asp:GridView runat="server" ID="grdLoans" AutoGenerateColumns="false" DataKeyNames="loanID" CssClass="GridViewHeaderStyle" Width="100%" GridLines="None" >
        <Columns>
            <asp:TemplateField HeaderText="">
                <ItemTemplate>
                    <asp:Button ID="btnSelect" runat="server" Text="Select" OnClick="onClick_btnSelectLoan" />
                </ItemTemplate>
           </asp:TemplateField>

            <asp:TemplateField HeaderText="Loan Number">
                <ItemTemplate>
                    <asp:Label ID="lblLoanNumber" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.loanNumber") %>' />
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Date">
                <ItemTemplate>
                    <asp:Label ID="lblDate" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.loanDate") %>' />
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Name">
                <ItemTemplate>
                    <asp:Label ID="lblName" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.name") %>' />
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Amount">
                <ItemTemplate>
                    <asp:Label ID="lblDollar" runat="server" Text="$" />
                    <asp:Label ID="lblAmount" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.amount") %>' />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <asp:Button runat="server" ID="btnAddLoan" Text="Add Loan" OnClick="onClick_btnAddLoan" />
</asp:Content>

