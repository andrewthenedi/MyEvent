<%@ Language="JavaScript" %>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>login</title>
</head>
<body>
 <%
 
 var em = Request.Form("emailad");
 var psw = Request.Form("pswd");

 var conn = new ActiveXObject("ADODB.Connection");
 conn.Open("Provider=Microsoft.Jet.OLEDB.4.0; Data Source='C:/ClassicASP/proj/login.mdb'");
 var SqlString = "SELECT * FROM userinfo WHERE (email ='" + em + "') AND (pword ='" + psw + "')";
 conn.Execute(SqlString);
 conn.Close;
 Response.Write("<h2>login succesful "+ em +"</h2>");
 %>
    <h1>Login succesful</h1>
    <a href="index.html">click here to get back</a>
</body>
</html>