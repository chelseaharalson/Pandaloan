<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddLoan.aspx.cs" Inherits="AddLoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <h2>Borrower's Information</h2>
    <table>
        <tr><td><asp:ValidationSummary ID="vsAddLoan" runat="server" ShowSummary="False" ShowMessageBox="true" ValidationGroup="AddLoan" /></td></tr>
        <tr><td>Email: </td> <td>
            <asp:TextBox runat="server" ID="txbBEmail" />
            <asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="txbBEmail"
            ErrorMessage="Enter email." ValidationGroup="AddLoan" Text="*" >
            </asp:RequiredFieldValidator>
        </td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td>First Name: </td> <td>
            <asp:TextBox runat="server" ID="txbBFirstName" />
            <asp:RequiredFieldValidator ID="reqFirstName" runat="server" ControlToValidate="txbBFirstName"
            ErrorMessage="Enter first name." ValidationGroup="AddLoan" Text="*" >
            </asp:RequiredFieldValidator>
        </td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td>Last Name: </td> <td>
            <asp:TextBox runat="server" ID="txbBLastName" />
            <asp:RequiredFieldValidator ID="reqLastName" runat="server" ControlToValidate="txbBLastName"
            ErrorMessage="Enter last name." ValidationGroup="AddLoan" Text="*" >
            </asp:RequiredFieldValidator>
        </td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td>Loan Date: </td> <td>
            <asp:TextBox runat="server" ID="txbLoanDate" Text="mm/dd/yyyy" />
            <asp:RegularExpressionValidator ID="regexDate" runat="server" 
                    ErrorMessage="Invalid date format. Please enter mm/dd/yyyy." ControlToValidate="txbLoanDate" 
                    Display="None" EnableTheming="False" EnableViewState="False" SetFocusOnError="True" Text="*"
                    ValidationGroup="AddLoan"
                    ValidationExpression="^\d{1,2}\/\d{1,2}\/\d{4}$">
            </asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="reqDate" runat="server" ControlToValidate="txbLoanDate"
            ErrorMessage="Enter date." ValidationGroup="AddLoan" Text="*" >
            </asp:RequiredFieldValidator>
        </td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td>Loan Term: </td> <td>
            <asp:TextBox runat="server" ID="txbLoanTerm" />
            <asp:CompareValidator ID="cvLoanTerm" ControlToValidate="txbLoanTerm"
                        Type="Integer" Display="Dynamic" Operator="DataTypeCheck"
                        ErrorMessage="Enter a number." Text="*" runat="server" ValidationGroup="AddLoan">
            </asp:CompareValidator>
            <asp:RequiredFieldValidator ID="reqLoanTerm" runat="server" ControlToValidate="txbLoanTerm"
            ErrorMessage="Enter loan term." ValidationGroup="AddLoan" Text="*" >
            </asp:RequiredFieldValidator>
        </td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td>Loan Amount: &nbsp;</td> <td>
            <asp:TextBox runat="server" ID="txbLoanAmount" />
            <asp:CompareValidator ID="cvLoanAmount" ControlToValidate="txbLoanAmount"
                        Type="Double" Display="Dynamic" Operator="DataTypeCheck"
                        ErrorMessage="Enter a number." Text="*" runat="server" ValidationGroup="AddLoan">
            </asp:CompareValidator>
            <asp:RequiredFieldValidator ID="reqLoanAmount" runat="server" ControlToValidate="txbLoanAmount"
            ErrorMessage="Enter amount." ValidationGroup="AddLoan" Text="*" >
            </asp:RequiredFieldValidator>
        </td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td>Interest Rate: </td> <td>
            <asp:TextBox runat="server" ID="txbInterestRate" />
            <asp:CompareValidator ID="cvIR" ControlToValidate="txbInterestRate"
                        Type="Double" Display="Dynamic" Operator="DataTypeCheck"
                        ErrorMessage="Enter a number." Text="*" runat="server" ValidationGroup="AddLoan" >
            </asp:CompareValidator>
            <asp:RequiredFieldValidator ID="reqInterestRate" runat="server" ControlToValidate="txbInterestRate"
            ErrorMessage="Enter interest rate." ValidationGroup="AddLoan" Text="*" >
            </asp:RequiredFieldValidator>
        </td></tr>
    </table>
    <br />
    <asp:Button runat="server" ID="btnAddLoan" Text="Add Loan" ValidationGroup="AddLoan" OnClick="onClick_btnAddLoan" />
</asp:Content>

