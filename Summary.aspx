<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Summary.aspx.cs" Inherits="Summary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <asp:Button runat="server" ID="btnAddLoan" Text="Add Loan" OnClick="onClick_btnAddLoan" />
    <br /><br />
    <table>
        <tr><td><asp:Label runat="server" ID="lblFirstName" /> <asp:Label runat="server" ID="lblLastName" /></td></tr>
        <tr><td><asp:Label runat="server" ID="lblAddress" /></td></tr>
        <tr><td><asp:Label runat="server" ID="lblCity" />, <asp:Label runat="server" ID="lblState" /> <asp:Label runat="server" ID="lblZipCode" /></td></tr>
    </table>
    <br /><br />
    <asp:GridView runat="server" ID="grdLoans" AutoGenerateColumns="false" DataKeyNames="loanID" >
        <Columns>
            <asp:TemplateField HeaderText="Date">
                <ItemTemplate>
                    <asp:Label ID="lblDate" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.loanDate") %>' />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>

