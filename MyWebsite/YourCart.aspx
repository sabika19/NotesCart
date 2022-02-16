<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="YourCart.aspx.cs" Inherits="MyWebsite.YourCart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="GridStyle.css" rel="stylesheet" type="text/css" /> 
</head>
<body>
    <form id="form1" runat="server">
    <div>
   <div id = "dvGrid" style ="padding:10px;width:550px">
    <asp:GridView ID="GridView1" runat="server"  Width = "600px"
AutoGenerateColumns = "false" Font-Names = "Arial"
Font-Size = "11pt" AlternatingRowStyle-BackColor = "#C2D69B" 
HeaderStyle-BackColor = "lightgreen" AllowPaging ="true"  ShowFooter = "true" 
OnPageIndexChanging = "OnPaging"
onrowcancelingedit="CancelItem"
PageSize = "10" onselectedindexchanged="GridView1_SelectedIndexChanged" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" CssClass="mydatagrid"  >
<Columns>
<asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "">
    <ItemTemplate>
       <asp:Image ID="imgnote" runat="server" />
    </ItemTemplate>
</asp:TemplateField>
<asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "ITEM ID">
    <ItemTemplate>
        <asp:Label ID="lblSUB" runat="server"
        Text='<%# Eval("SUBCODE")%>'></asp:Label>
    </ItemTemplate>
</asp:TemplateField>
<asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "TITLE">
    <ItemTemplate>
        <asp:Label ID="lblSUB" runat="server"
        Text='<%# Eval("SUBCODE")%>'></asp:Label>
    </ItemTemplate>
</asp:TemplateField>
<asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "GRADE">
    <ItemTemplate>
        <asp:Label ID="lblSUB" runat="server"
        Text='<%# Eval("SUBCODE")%>'></asp:Label>
    </ItemTemplate>
</asp:TemplateField>
<asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "SUBJECT">
    <ItemTemplate>
        <asp:Label ID="lblSUB" runat="server"
        Text='<%# Eval("SUBCODE")%>'></asp:Label>
    </ItemTemplate>
</asp:TemplateField>
<asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "AUTHOR">
    <ItemTemplate>
        <asp:Label ID="lblSUB" runat="server"
        Text='<%# Eval("SUBCODE")%>'></asp:Label>
    </ItemTemplate>
</asp:TemplateField>
<asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "QUANTITY">
    <ItemTemplate>
        <asp:Label ID="lblSUB" runat="server"
        Text='<%# Eval("SUBCODE")%>'></asp:Label>
    </ItemTemplate>
</asp:TemplateField>
<asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "PRICE PER UNIT">
    <ItemTemplate>
        <asp:Label ID="lblSUB" runat="server"
        Text='<%# Eval("SUBCODE")%>'></asp:Label>
    </ItemTemplate>
</asp:TemplateField>
<asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "TOTAL PRICE">
    <ItemTemplate>
        <asp:Label ID="lblSUB" runat="server"
        Text='<%# Eval("SUBCODE")%>'></asp:Label>
    </ItemTemplate>
</asp:TemplateField>
<asp:TemplateField>
    <ItemTemplate>
        <asp:LinkButton ID="lnkRemove" runat="server"
            CommandArgument ='<%# Eval("EXAMINERNUMBER")+","+Eval("SCHOOLALLOTTED") %>'
         OnClientClick = "return confirm('Do you want to remove?')"
        Text = "REMOVE" OnClick = "RemoveItem"></asp:LinkButton>
    </ItemTemplate>

</asp:TemplateField>
</Columns>
</asp:GridView>
    </div>
    </form>
</body>
</html>
