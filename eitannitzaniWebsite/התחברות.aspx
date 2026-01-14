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
            width: 350px;
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
            padding: 8px;
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

    <form>
        <label>שם מלא</label>
        <input type="text" required>

        <label>אימייל</label>
        <input type="email" required>

        <label>סיסמה</label>
        <input type="password" required>

        <label>גיל</label>
        <input type="number" min="10" max="30" required>

        <label>כיתה</label>
        <input type="text" placeholder="לדוגמה: י״א" required>

        <label>מין</label>
        <select required>
            <option value="">בחר</option>
            <option>זכר</option>
            <option>נקבה</option>
            <option>אחר</option>
        </select>

        <button type="submit">הרשמה</button>
    </form>
</div>



</asp:Content>

