<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
            <meta charset="UTF-8">
    <title>log in</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }
        .form-container {
            width: 600px;
            margin: 50px auto;
            background: #ffffff;
            padding: 20px;
            border-radius: 8px;
        }
        h2 {
            text-align: center;
        }
        label {
            display: block;
            margin-top: 10px;
        }
        input, select {
            width: 100%;
            padding: 3px;
            margin-top: 5px;
        }
        button {
            margin-top: 15px;
            width: 100%;
            padding: 10px;
            background-color: #2c7be5;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #1a5dc9;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-container">
    <h2>login</h2>

    <form runat="server" method="post">
    <table>
        
        <tr>
            <td><label>אימייל</label></td>
            <td><input type="email" name="email" id="email" required></td>
        </tr>

        <tr>
            <td><label>סיסמה</label></td>
            <td><input type="password" name="password" id="password" required></td>
        </tr>

        <tr>
            <td colspan="2" style="text-align:center;">
                <button type="submit">הרשמה</button>
            </td>
        </tr>
    </table>

<br />
אין חשבון?
<br />
<a href="התחברות.aspx">להרשמה</a>
</form>

</div>
</asp:Content>
