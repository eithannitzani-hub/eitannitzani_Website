<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyForm.aspx.cs" Inherits="MyForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <form name="example" method="get" action="html_page13.html">
            איך קוראים לך?
            <br />

    :שם פרטי <input type="text" name="firstname">
    :שם משפחה <input type="text" name="lastname">
            <br />
            איזה מגדר אתה
            <br />

    בן:<input type="checkbox" name="check1" >
    בת:<input type="checkbox" name="check1">
            <br />
            איזה כיתה אתה
            <br />
    י:<input type="radio" name="radio1" checked>
    י"א:<input type="radio" name="radio1">
    י"ב:<input type="radio" name="radio1">
</form>
</asp:Content>

