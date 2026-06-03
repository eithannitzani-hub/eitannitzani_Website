<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script language="javascript">
        function checkAll() {
            fullnameErr.innerHTML = "";
            emailErr.innerHTML = "";

            f = true;

            if (checkFullName() == false)
                f = false;
            if (checkEmail() == false)
                f = false;

            return f;
        }

        function checkFullName() {
            name = document.getElementById("fullname").value;

            if (name.length < 2 || name.length > 30) {
                fullnameErr.innerHTML = "אורך השם הפרטי לא תקין";
                return false;
            }

            if (/\d/.test(name)) {
                fullnameErr.innerHTML = "השם לא יכול להכיל מספר";
                return false;
            }
            return true;
        }

        function checkEmail() {
            email = document.getElementById("email").value;

            if (email.length < 2 || email.length > 30) {
                emailErr.innerHTML = "אורך email לא תקין";
                return false;
            }
            return true;
        }
    </script>
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

    <table>
        <tr>
            <td><label>שם מלא</label></td>
            <td><input type="text" name="fullname" id="fullname" ></td>
            <td id="fullnameErr"></td>
        </tr>

        <tr>
            <td><label>אימייל</label></td>
            <td><input type="email" name="email" id="email" ></td>
            <td id="emailErr"></td>
        </tr>

        <tr>
            <td><label>סיסמה</label></td>
            <td><input type="password" name="password" id="password" ></td>
        </tr>

        <tr>
            <td><label>גיל</label></td>
            <td><input type="number" name="age" id="age" min="10" max="30" ></td>
        </tr>

        <tr>
            <td><label>כיתה</label></td>
            <td><input type="text" name="class" id="class" ></td>
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
                <button type="submit" onclick="return checkAll();">הרשמה</button>
            </td>
        </tr>
    </table>
    <%=st %>
</div>

</asp:Content>