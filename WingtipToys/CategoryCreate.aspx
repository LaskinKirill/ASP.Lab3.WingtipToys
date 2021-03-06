<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
    CodeBehind="CategoryCreate.aspx.cs" Inherits="WingtipToys.CategoryCreate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<h1>Add new category</h1>
    <div runat="server" ID="CreateCategoryForm">
        
        <asp:Label ID="LabelName" runat="server" AssociatedControlID="Name" Text="Name:"></asp:Label>
        <br />
        <asp:TextBox ID="Name" runat="server" Width="159px"></asp:TextBox>
&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="NameValidator" runat="server" 
            ControlToValidate="Name" ErrorMessage="Category name is required" Display="Dynamic"></asp:RequiredFieldValidator>
               <asp:CustomValidator ID="CategoryUniqueValidator" runat="server" 
                   ErrorMessage="Category already exists" ControlToValidate="Name" Display="Dynamic" OnServerValidate="ValidateUnique"></asp:CustomValidator>
        <br />
        <br />
        <asp:Label ID="LabelCategory" runat="server" AssociatedControlID="TextAreaCategory" Text="Category:"></asp:Label>
&nbsp;
        <textarea id="TextAreaCategory" runat="server" cols="20" name="S2" rows="2"></textarea><br />
        <br />
        <asp:Label ID="LabelDescription" runat="server" AssociatedControlID="Description" Text="Description:"></asp:Label>
        <br />
        <textarea id="Description" runat="server"  cols="20" name="S1" ></textarea>&nbsp;
        <asp:RegularExpressionValidator ID="DescriptionLengthValidator" runat="server" ControlToValidate="Description" ErrorMessage="Description should be maximum 500 symbols long" ValidationExpression="^.{0,500}$"></asp:RegularExpressionValidator>
        <br />
        <asp:Button ID="CreateCategory" runat="server" Text="Create category" OnClick="Button1_Click" />
        <br />
        <br />
        <br />
    </div>
        <div runat="server" ID="SuccessBlock" Visible="False">
        <h2>New category <b><asp:Literal ID="MesageCategoryName" runat="server"></asp:Literal>
            &nbsp;</b>was successfully added to our store. You could <a href="~/ProductList" 
                runat="server">check catalog</a></h2>         
    </div>
</asp:Content>
