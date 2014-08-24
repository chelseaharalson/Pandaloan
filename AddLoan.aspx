﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddLoan.aspx.cs" Inherits="AddLoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <h2>Borrower's Information</h2>
    <table>
        <tr><td><asp:ValidationSummary ID="vsAddLoan" runat="server" ShowSummary="False" ShowMessageBox="true" ValidationGroup="AddLoan" /></td></tr>
        <tr><td>Email: </td> <td><asp:TextBox runat="server" ID="txbBEmail" /></td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td>First Name: </td> <td><asp:TextBox runat="server" ID="txbBFirstName" /></td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td>Last Name: </td> <td><asp:TextBox runat="server" ID="txbBLastName" /></td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td>Loan Date: </td> <td>
            <asp:TextBox runat="server" ID="txbLoanDate" Text="mm/dd/yyyy" />
            <asp:RegularExpressionValidator ID="regexDate" runat="server" 
                    ErrorMessage="Invalid date format. Please enter mm/dd/yyyy." ControlToValidate="txbLoanDate" 
                    Display="None" EnableTheming="False" EnableViewState="False" SetFocusOnError="True" Text="*"
                    ValidationGroup="AddLoan"
                    ValidationExpression="^\d{1,2}\/\d{1,2}\/\d{4}$">
            </asp:RegularExpressionValidator>
        </td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td>Loan Term: </td> <td>
            <asp:TextBox runat="server" ID="txbLoanTerm" />
            <asp:CompareValidator ID="cvLoanTerm" ControlToValidate="txbLoanTerm"
                        Type="Double" Display="Dynamic" Operator="DataTypeCheck"
                        ErrorMessage="Enter a number." Text="*" runat="server" ValidationGroup="AddLoan">
            </asp:CompareValidator>
        </td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td>Loan Amount: &nbsp;</td> <td>
            <asp:TextBox runat="server" ID="txbLoanAmount" />
            <asp:CompareValidator ID="cvLoanAmount" ControlToValidate="txbLoanAmount"
                        Type="Double" Display="Dynamic" Operator="DataTypeCheck"
                        ErrorMessage="Enter a number." Text="*" runat="server" ValidationGroup="AddLoan">
            </asp:CompareValidator>
        </td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td>Interest Rate: </td> <td>
            <asp:TextBox runat="server" ID="txbInterestRate" />
            <asp:CompareValidator ID="cvIR" ControlToValidate="txbInterestRate"
                        Type="Double" Display="Dynamic" Operator="DataTypeCheck"
                        ErrorMessage="Enter a number." Text="*" runat="server" ValidationGroup="AddLoan">
            </asp:CompareValidator>
        </td></tr>
    </table>
    <br />
    <asp:Button runat="server" ID="btnAddLoan" Text="Add Loan" ValidationGroup="AddLoan" />
</asp:Content>

