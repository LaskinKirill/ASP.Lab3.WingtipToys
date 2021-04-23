<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CategoryCreate.aspx.cs" Inherits="WingtipToys.CategoryCreate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<h1>Add new product</h1>
    <div>
        
        <asp:Label ID="LabelName" runat="server" AssociatedControlID="Name" Text="Name:"></asp:Label>
        <br />
        <asp:TextBox ID="Name" runat="server" Width="159px"></asp:TextBox>
&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="NameValidator" runat="server" ControlToValidate="Name" ErrorMessage="Category name is required" Display="Dynamic"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="LabelPrice" runat="server" AssociatedControlID="Price" Text="Price:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" Width="157px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="LabelCategory" runat="server" AssociatedControlID="Category" Text="Category:"></asp:Label>
&nbsp;
        <textarea id="TextAreaCategory" cols="20" name="S2" rows="2"></textarea><br />
        <br />
        <asp:Label ID="LabelDescription" runat="server" AssociatedControlID="Description" Text="Description:"></asp:Label>
        <br />
        <textarea id="Description" cols="20" name="S1" ></textarea>&nbsp;
        <asp:RegularExpressionValidator ID="DescriptionLengthValidator" runat="server" ControlToValidate="Description" ErrorMessage="Description should be maximum 500 symbols long" ValidationExpression="^.{0,500}$"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="LabelProductimageURL" runat="server" AssociatedControlID="ProductimageURL" Text="Product image URL:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox4" runat="server" Width="159px"></asp:TextBox>
        <br />
        <asp:Button ID="CreateProduct" runat="server" Text="Create product" Width="113px" OnClick="CreateProduct_Click" />
        <br />
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </div>

</asp:Content>
