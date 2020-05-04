<%@ Language="JavaScript" %>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>signup</title>
</head>
<body>
 <%
 var name = Request.Form("name");
 var surname = Request.Form("surname");
 var email = Request.Form("email");
 var cnum = Request.Form("cnum");
 var psw = Request.Form("psw");

 var conn = new ActiveXObject("ADODB.Connection");
 conn.Open("Provider=Microsoft.Jet.OLEDB.4.0; Data Source='C:/Users/18079343d/Desktop/ise/login.mdb'");
 var SqlString = "INSERT INTO userinfo ([given_name], [surname], [contactnum], [email], [pword]) VALUES ('" + name + "','" + surname + "','" + email + "','" + cnum + "','" + psw + "');";
 
 conn.Execute(SqlString);

 conn.Close;
 %>

    <h1>Signup Succesful</h1>
</body>
    
</html>