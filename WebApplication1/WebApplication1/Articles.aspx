<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Articles.aspx.cs" Inherits="WebApplication1.Articles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Repeater ID="rptArticles" runat="server">
        <ItemTemplate>
            <div>
                <h3><%# Eval("Title") %></h3>
                <p><%# Eval("Content") %></p>
                <p>Publish Date: <%# Eval("PublishDate") %></p>
            </div>
            <hr />
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
