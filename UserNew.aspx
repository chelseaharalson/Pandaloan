<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="UserNew.aspx.cs" Inherits="UserNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <table>
        <tr><td>Email: </td> <td><asp:TextBox runat="server" ID="txbEmail" /></td></tr>
        <tr><td>Password: </td> <td><asp:TextBox runat="server" ID="txbPassword" TextMode="password" /></td></tr>
        <tr><td>First Name: </td> <td><asp:TextBox runat="server" ID="txbFirstName" /></td></tr>
        <tr><td>Last Name: </td> <td><asp:TextBox runat="server" ID="txbLastName" /></td></tr>
        <tr><td>Address: </td> <td><asp:TextBox runat="server" ID="txbAddress" /></td></tr>
        <tr><td>City: </td> <td><asp:TextBox runat="server" ID="txbCity" /></td></tr>
        <tr><td>State: </td> <td><asp:TextBox runat="server" ID="txbState" /></td></tr>
        <tr><td>Zip Code: </td> <td><asp:TextBox runat="server" ID="txbZipCode" /></td></tr>
    </table>
    <br />
    <asp:Button runat="server" ID="btnCreate" Text="Create" OnClick="onClick_Create"/>
</asp:Content>

