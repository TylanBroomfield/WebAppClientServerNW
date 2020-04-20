﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="40ASPControlsMultiRecordDropdownToCustomGridView.aspx.cs" Inherits="WebApp.Pages._40ASPControlsMultiRecordDropdownToCustomGridView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <h1> Multi Record Query Dropdown to Custom GridView (Ex06)</h1>
    <div class="offset-2">
        <asp:Label ID="Label1" runat="server" Text="Select a Category "></asp:Label>&nbsp;&nbsp;   
        <asp:DropDownList ID="List01" runat="server"></asp:DropDownList>&nbsp;&nbsp;
        <asp:Button ID="Fetch" runat="server" Text="Fetch" 
             CausesValidation="false" OnClick="Fetch_Click"/>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
            <asp:Label ID="NameLabel01" runat="server" ></asp:Label>
        </div>
        <div class="col-md-4 text-left">
            <asp:Label ID="NameLabel02" runat="server" ></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
            <asp:Label ID="DescriptionLabel01" runat="server" ></asp:Label>
        </div>
        <div class="col-md-4 text-left">
            <asp:Label ID="DescriptionLabel02" runat="server" ></asp:Label>
        </div>
    </div>
     <div class="row">
        <div class="col-md-4 text-right">
            <asp:Label ID="IDLabel01" runat="server" ></asp:Label>
        </div>
        <div class="col-md-4 text-left">
            <asp:Label ID="IDLabel02" runat="server" ></asp:Label>
        </div>
    </div>
     <div class="row">
        <div class="col-md-4 text-right">
            <asp:Label ID="IDLabel201" runat="server" ></asp:Label>
        </div>
        <div class="col-md-4 text-left">
            <asp:Label ID="IDLabel202" runat="server" ></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
            <asp:Label ID="MessageLabel" runat="server" ></asp:Label>
        </div>
    </div>    
    <br /><br />
    <div>
        <asp:GridView ID="List02" runat="server" 
            AutoGenerateColumns="False"
            CssClass="table table-striped" GridLines="Horizontal"
            BorderStyle="None" AllowPaging="True"
            OnPageIndexChanging="List02_PageIndexChanging" PageSize="5">

            <Columns>
                <asp:TemplateField HeaderText="Name" Visible="True">
                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                    <ItemTemplate>
                        <asp:Label ID="FirstAndLast" runat="server" 
                            Text='<%# Eval("FirstAndLast") %>'>
                        </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Age">
                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                    <ItemTemplate>
                        <asp:Label ID="Age" runat="server" 
                            Text='<%# Eval("Age") %>'>
                        </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Gender">
                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                     <ItemTemplate>
                        <asp:Label ID="QuantityPerUnit" runat="server" 
                            Text='<%# Eval("Gender") %>'>
                        </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Med Alert">
                    <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                     <ItemTemplate>
                        <asp:Label ID="MedicalAlertDetails" runat="server" 
                            Text='<%# Eval("MedicalAlertDetails")%>'>
                        </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <%--<asp:TemplateField HeaderText="Disc">
                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                     <ItemTemplate>
                         <asp:CheckBox ID="Discontinued" runat="server" 
                              Checked='<%# Eval("Discontinued") %>'/>
                    </ItemTemplate>
                </asp:TemplateField>--%>
            </Columns>
            <EmptyDataTemplate>
                no data to display
            </EmptyDataTemplate>
            <PagerSettings FirstPageText="Start" LastPageText="End" Mode="NumericFirstLast" PageButtonCount="3" />
        </asp:GridView>
    </div>
</asp:Content>

