﻿<%@ Page Title="Teacher" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Teacher.aspx.cs" Inherits="sectionAFall2018.Teacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <table>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Teacher ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="textteacherid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Teacher Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtteachername" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Teacher Initial"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtteacherInitial" runat="server"></asp:TextBox>
                </td>
            </tr>

          <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Mobile"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="textmobile" runat="server"></asp:TextBox>
                </td>
            </tr>

          <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Course Code"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="textcoursecode" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="SAVE" OnClick="Button1_Click"  />
                </td>
            </tr>


        </table>
        <div>

        </div>

        <br />


    <h1> Teacher Information </h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
    <Columns>
        <asp:TemplateField HeaderText="Sl_No">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Sl_No") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Sl_No") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Teacher_ID">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Teacher_ID") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Teacher_ID") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Teacher_Name">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Teacher_Name") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Teacher_Name") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Teacher_Initial">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Teacher_Initial") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Teacher_Initial") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Mobile">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Mobile") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Mobile") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Course_Code">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Course_Code") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Course_Code") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Course_Name">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Course_Name") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label7" runat="server" Text='<%# Bind("Course_Name") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
</asp:Content>
