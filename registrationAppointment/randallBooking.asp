<%@ language="javascript" %>

<html>
    <head>
        <title>
            Randall Booking
        </title>
       
    </head>
    <body>
        <h1 style="text-align:center">Booking Confirmation</h1>
        <form method="post" action="confirmation.asp">
            Event Organizer's name:<br/>
            <input id="eoName" type="text" name="eoName" value="Randall Nicholas" readonly/>
            <br/>
            Price (HKD):<br />
            <input id="price" type="number" name="price" value="500" readonly/>
            <br />
            Selected Date:<br/>
            <input id="date" type="date" name="date"/>
            <br/>
            Email Address:<br/>
            <input id="email" type="email" name="email"/>
            <br/>
            Password:<br/>
            <input id="pass" type="password" name="password"/>
            <br/><br/>
            <button onclick="myFunction()">Submit</button>
        </form>

        
        <%
            function myFunction()
            {
                var email = document.getElementById("email").value;
                var pass = document.getElementById("pass").value;
                var conn = new ActiveXObject("ADODB.Connection");
                var rs = new ActiveXObject("ADODB.Recordset");
                conn.Open("Provider=Microsoft.Jet.OLEDB.4.0; Data Source='D:/POLYU/YEAR 2/SEM_2/ISE2001 - Introduction to Enterprise Computing/PROJECT/CODES/booking.mdb'");
                while (rs.EOF != true)
                {
                    if (email == rs("email") && pass == rs("password"))
                    {
                        rs.Open("INSERT INTO booking (eoName, price, selectedDate, email, password) VALUES (eoName, price, date, email, pass);", conn);
                    }
                    else {
                        alert("Invalid email address/password");
                        break;
                    }
                    rs.MoveNext();
                }
                //rs.Open("SELECT * FROM Products", conn)
                rs.close();
                conn.close;
            }
            //Response.Write(Request.Form("firstname"));
            //Response.Write(" " + Request.Form("lastname"));
            %>
    </body>

</html>