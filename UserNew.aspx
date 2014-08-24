<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="UserNew.aspx.cs" Inherits="UserNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <table>
        <tr><td><asp:ValidationSummary ID="vsCreate" runat="server" ShowSummary="False" ShowMessageBox="true" ValidationGroup="Create" /></td></tr>
        <tr><td>Email: </td> <td>
            <asp:TextBox runat="server" ID="txbEmail" />
            <asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="txbEmail"
            ErrorMessage="Enter email." ValidationGroup="Create" Text="*" />
        </td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td>Password: </td> <td>
            <asp:TextBox runat="server" ID="txbPassword" TextMode="password" />
            <asp:RequiredFieldValidator ID="reqPassword" runat="server" ControlToValidate="txbPassword"
            ErrorMessage="Enter password." ValidationGroup="Create" Text="*" />
        </td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td>First Name: &nbsp;</td> <td><asp:TextBox runat="server" ID="txbFirstName" /></td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td>Last Name: &nbsp;</td> <td><asp:TextBox runat="server" ID="txbLastName" /></td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td>Address: </td> <td><asp:TextBox runat="server" ID="txbAddress" /></td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td>City: </td> <td><asp:TextBox runat="server" ID="txbCity" /></td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td>State: </td> <td>
                            <asp:DropDownList ID="ddl_State" runat="server" Width="180px">
                            <asp:ListItem Value=""></asp:ListItem>
	                        <asp:ListItem Value="AL">Alabama</asp:ListItem>
	                        <asp:ListItem Value="AK">Alaska</asp:ListItem>
	                        <asp:ListItem Value="AZ">Arizona</asp:ListItem>
	                        <asp:ListItem Value="AR">Arkansas</asp:ListItem>
	                        <asp:ListItem Value="CA">California</asp:ListItem>
	                        <asp:ListItem Value="CO">Colorado</asp:ListItem>
	                        <asp:ListItem Value="CT">Connecticut</asp:ListItem>
	                        <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
	                        <asp:ListItem Value="DE">Delaware</asp:ListItem>
	                        <asp:ListItem Value="FL">Florida</asp:ListItem>
	                        <asp:ListItem Value="GA">Georgia</asp:ListItem>
	                        <asp:ListItem Value="HI">Hawaii</asp:ListItem>
	                        <asp:ListItem Value="ID">Idaho</asp:ListItem>
	                        <asp:ListItem Value="IL">Illinois</asp:ListItem>
	                        <asp:ListItem Value="IN">Indiana</asp:ListItem>
	                        <asp:ListItem Value="IA">Iowa</asp:ListItem>
	                        <asp:ListItem Value="KS">Kansas</asp:ListItem>
	                        <asp:ListItem Value="KY">Kentucky</asp:ListItem>
	                        <asp:ListItem Value="LA">Louisiana</asp:ListItem>
	                        <asp:ListItem Value="ME">Maine</asp:ListItem>
	                        <asp:ListItem Value="MD">Maryland</asp:ListItem>
	                        <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
	                        <asp:ListItem Value="MI">Michigan</asp:ListItem>
	                        <asp:ListItem Value="MN">Minnesota</asp:ListItem>
	                        <asp:ListItem Value="MS">Mississippi</asp:ListItem>
	                        <asp:ListItem Value="MO">Missouri</asp:ListItem>
	                        <asp:ListItem Value="MT">Montana</asp:ListItem>
	                        <asp:ListItem Value="NE">Nebraska</asp:ListItem>
	                        <asp:ListItem Value="NV">Nevada</asp:ListItem>
	                        <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
	                        <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
	                        <asp:ListItem Value="NM">New Mexico</asp:ListItem>
	                        <asp:ListItem Value="NY">New York</asp:ListItem>
	                        <asp:ListItem Value="NC">North Carolina</asp:ListItem>
	                        <asp:ListItem Value="ND">North Dakota</asp:ListItem>
	                        <asp:ListItem Value="OH">Ohio</asp:ListItem>
	                        <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
	                        <asp:ListItem Value="OR">Oregon</asp:ListItem>
	                        <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
	                        <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
	                        <asp:ListItem Value="SC">South Carolina</asp:ListItem>
	                        <asp:ListItem Value="SD">South Dakota</asp:ListItem>
	                        <asp:ListItem Value="TN">Tennessee</asp:ListItem>
	                        <asp:ListItem Value="TX">Texas</asp:ListItem>
	                        <asp:ListItem Value="UT">Utah</asp:ListItem>
	                        <asp:ListItem Value="VT">Vermont</asp:ListItem>
	                        <asp:ListItem Value="VA">Virginia</asp:ListItem>
	                        <asp:ListItem Value="WA">Washington</asp:ListItem>
	                        <asp:ListItem Value="WV">West Virginia</asp:ListItem>
	                        <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
	                        <asp:ListItem Value="WY">Wyoming</asp:ListItem>
                            </asp:DropDownList>
                        </td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td>Zip Code: </td> <td><asp:TextBox runat="server" ID="txbZipCode" /></td></tr>
    </table>
    <br />
    <asp:Button runat="server" ID="btnCreate" Text="Create" OnClick="onClick_Create" ValidationGroup="Create" />
</asp:Content>

