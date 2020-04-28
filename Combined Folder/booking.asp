<%@ language="javascript" %>
<!DOCTYPE html>
<html>
<head>
    <title>Booking</title>
	<meta charset="utf-8" />
</head>
<body>
    <%
            var eoName1 = Request.Form("eoName");
            var price1 = Request.Form("price");
            var date1 = Request.Form("date");
            var email1 = Request.Form("email");
            var pass1 = Request.Form("password");

            var conn = new ActiveXObject("ADODB.Connection");
            var rs = new ActiveXObject("ADODB.Recordset");
            conn.Open("Provider=Microsoft.Jet.OLEDB.4.0; Data Source='D:/POLYU/YEAR 2/SEM_2/ISE2001 - Introduction to Enterprise Computing/PROJECT/CODES/booking.mdb'");
            rs.Open("SELECT * FROM Bookings", conn);
            var SqlString = "INSERT INTO Bookings([eoName], [price], [selectedDate], [email], [password]) VALUES('" + eoName1 + "', '" + price1 + "', '" + date1 + "', '" + email1 + "', '" + pass1 + "')";
            var emailInput = rs("email");
            var passInput = rs("password");
            var count = 0;
            while (rs.EOF != true)
            {
                if (email1 == rs("email") && pass1 == rs("password"))
                {
                    count = 1;
                }
                rs.movenext();
            }
            if (count == 0)
            {
                Response.Write('<h1 style="text-align:center">Incorrect email address/password</h1>');
            }
            else
            {
                conn.Execute(SqlString);
                Response.Write('<h1 style="text-align:center">Booking has successfully been made. Please check you email for prefered payment.</h1>');
            }
            rs.close();
            conn.Close;
     %>   
</body>
</html>
