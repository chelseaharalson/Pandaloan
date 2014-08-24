<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Summary.aspx.cs" Inherits="Summary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <table>
        <tr><td><asp:Label runat="server" ID="lblFirstName" /> <asp:Label runat="server" ID="lblLastName" /></td></tr>
        <tr><td><asp:Label runat="server" ID="lblAddress" /></td></tr>
        <tr><td><asp:Label runat="server" ID="lblCity" />, <asp:Label runat="server" ID="lblState" /> <asp:Label runat="server" ID="lblZipCode" /></td></tr>
    </table>
</asp:Content>

