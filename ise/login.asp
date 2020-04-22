<html lang="en">
<head>
<meta charset="utf-8" />
<title>Lecture 07 ASP</title>
</head>
<body>
 <%
 Response.Write(Request.Form("name"))
 Response.Write("  " + Request.Form("id"))
 credits = Request.Form("credits")
 credits = 120-credits
Response.Write(" "+credits)
 %>
 <img src="image.jpeg" height="200">
</body>
</html>