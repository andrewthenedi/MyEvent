<%@ language="javascript" %>

<html>
    <head>
        <title>
            Lecture 6.4 ASP
        </title>
       
    </head>
    <body>
        <p>Hello!</p>
        <%
            Response.Write(Request.Form("Samuel"));
            %>
    </body>

</html>