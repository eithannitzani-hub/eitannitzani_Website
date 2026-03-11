<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="התחברות.aspx.cs" Inherits="התחברות" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

        <meta charset="UTF-8">
    <title>הרשמה לאתר המסלול</title>
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
    <h2>הרשמה לאתר המסלול</h2>

    <form runat="server" method="post">
    <table>
        <tr>
            <td><label>שם מלא</label></td>
            <td><input type="text" name="fullname" id="fullname" required></td>
        </tr>

        <tr>
            <td><label>אימייל</label></td>
            <td><input type="email" name="email" id="email" required></td>
        </tr>

        <tr>
            <td><label>סיסמה</label></td>
            <td><input type="password" name="password" id="password" required></td>
        </tr>

        <tr>
            <td><label>גיל</label></td>
            <td><input type="number" name="age" id="age" min="10" max="30" required></td>
        </tr>

        <tr>
            <td><label>כיתה</label></td>
            <td><input type="text" name="class" id="class" required></td>
        </tr>

        <tr>
            <td><label>מין</label></td>
            <td>
                <select required name="gender">
                    <option value="0">בחר</option>
                    <option value="זכר">זכר</option>
                    <option value="נקבה">נקבה</option>
                    <option value="אחר">אחר</option>
                </select>
            </td>
        </tr>

        <tr>
            <td colspan="2" style="text-align:center;">
                <button type="submit">הרשמה</button>
            </td>
        </tr>
    </table>
</form>
    <%=st %>
</div>



</asp:Content>

