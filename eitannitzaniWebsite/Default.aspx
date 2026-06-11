<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<html lang="he" dir="rtl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>אודות - איתן</title>

<style>
body {
  margin: 0;
  font-family: Arial, sans-serif;
  background: #0f172a;
  color: white;
}

/* HEADER */
header {
  text-align: center;
  padding: 60px 20px;
  background: linear-gradient(135deg, #1e293b, #0f172a);
}

header h1 {
  font-size: 40px;
  margin: 0;
  color: #38bdf8;
}

header p {
  opacity: 0.8;
  font-size: 18px;
}

/* CONTAINER */
.container {
  max-width: 1000px;
  margin: auto;
  padding: 30px;
}

/* BOX */
.box {
  background: rgba(255,255,255,0.05);
  padding: 20px;
  border-radius: 12px;
  margin-bottom: 20px;
  line-height: 1.8;
}

/* PROFILE */
.profile {
  display: flex;
  gap: 20px;
  align-items: center;
  flex-wrap: wrap;
}

.profile img {
  width: 170px;
  height: 170px;
  border-radius: 50%;
  object-fit: cover;
  border: 3px solid #38bdf8;
}

/* GALLERY */
.gallery-title {
  text-align: center;
  margin: 40px 0 20px;
  color: #38bdf8;
}

.gallery {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 15px;
}

.gallery img {
  width: 100%;
  height: 180px;
  object-fit: cover;
  border-radius: 10px;
  transition: 0.3s;
}

.gallery img:hover {
  transform: scale(1.05);
}

/* FOOTER */
footer {
  text-align: center;
  padding: 20px;
  opacity: 0.5;
  margin-top: 30px;
}
</style>

</head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><header>
<body>

<header>
  <h1>אודות</h1>
  <p>עמוד אישי במסגרת פרויקט בית ספר</p>
</header>

<div class="container">

  <!-- עליי -->
  <div class="box profile">
    
    <div>
      <h2>איתן</h2>
      <p><b>גיל:</b> 17</p>
      <p><b>עיר:</b> ישראל</p>
      <p><b>תחומי עניין:</b> מחשבים, פיתוח אתרים, ספורט</p>
      <p><b>עליי:</b> תלמיד בתיכון שמתעניין בעולם הטכנולוגיה ולומד פיתוח אתרים באמצעות HTML ו-CSS.</p>
    </div>
  </div>

  <!-- מידע נוסף -->
  <div class="box">
    <h2>על הפרויקט</h2>
    <p>
      זהו אתר אישי שנבנה במסגרת עבודה בבית הספר.
      האתר כולל עמודים, עיצוב מודרני וגלריית תמונות.
      מטרת הפרויקט היא ללמוד בניית אתרים בסיסית ועיצוב ממשקים.
    </p>
  </div>

  <!-- גלריה -->
  <h2 class="gallery-title">גלריה</h2>

  <div class="gallery">
    <img src="https://static.wixstatic.com/media/ab7dbe_168f04e16af44a7788d28c3bc632b4af~mv2.png/v1/fill/w_640,h_466,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/ab7dbe_168f04e16af44a7788d28c3bc632b4af~mv2.png" alt="תמונה 1">
    <img src="https://static.wixstatic.com/media/ab7dbe_20c504bd967e4ee8827aeea646a32cae~mv2.jpg/v1/fill/w_640,h_426,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/ab7dbe_20c504bd967e4ee8827aeea646a32cae~mv2.jpg" alt="תמונה 2">
    <img src="https://static.wixstatic.com/media/524338_fe85905ce6b04d4696bb8d46bf4c0c67~mv2.jpeg/v1/fill/w_280,h_210,fp_0.50_0.50,q_90,enc_avif,quality_auto/524338_fe85905ce6b04d4696bb8d46bf4c0c67~mv2.webp" alt="תמונה 3">
    <img src="https://static.wixstatic.com/media/524338_8ffda832e6bf4093a086a9748a74696c~mv2.jpg/v1/fill/w_280,h_210,fp_0.50_0.50,q_90,enc_avif,quality_auto/524338_8ffda832e6bf4093a086a9748a74696c~mv2.webp" alt="תמונה 4">
    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTioaAcVcTCFnalmCwpp53jvJ9a5m5RawvMNA&s" alt="תמונה 5">
    <img src="https://static.wixstatic.com/media/ab7dbe_1814ce0130ab459cb95782b20f03bb5e~mv2.png/v1/fill/w_640,h_284,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/ab7dbe_1814ce0130ab459cb95782b20f03bb5e~mv2.png" alt="תמונה 6">
  </div>

</div>

<footer>
  © איתן | פרויקט בית ספר
</footer>

</body>
</asp:Content>

