﻿<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="gioi-thieu.aspx.cs" Inherits="gioi_thieu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Giới Thiệu</title>
    <meta name="description" content="Giới Thiệu" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="site" class="corner">
            <a href="~/" runat="server"><span class="fa fa-home"></span></a>/<span>Giới Thiệu</span>
    </div>
    <asp:ListView ID="lstAboutUs" runat="server" DataSourceID="odsAboutUs" EnableModelValidation="True">
        <ItemTemplate>
            <div class="wrapper-text about-us">
                <%--<div class="about-img">
                    <img class="img-responsive" src="assets/images/about-img.jpg" alt="" /></div>--%>
                <h3 class="text-uppercase tit-640">
                    <%# Eval("ArticleTitle") %></h3>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Content") %>'></asp:Label>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsAboutUs" runat="server" SelectMethod="ArticleSelectAll"
        TypeName="TLLib.Article">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
            <asp:Parameter DefaultValue="1" Name="EndRowIndex" Type="String" />
            <asp:Parameter Name="Keyword" Type="String" />
            <asp:Parameter Name="ArticleTitle" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter DefaultValue="1" Name="ArticleCategoryID" Type="String" />
            <asp:Parameter Name="Tag" Type="String" />
            <asp:Parameter Name="IsShowOnHomePage" Type="String" />
            <asp:Parameter Name="IsHot" Type="String" />
            <asp:Parameter Name="IsNew" Type="String" />
            <asp:Parameter Name="FromDate" Type="String" />
            <asp:Parameter Name="ToDate" Type="String" />
            <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
            <asp:Parameter Name="Priority" Type="String" />
            <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
