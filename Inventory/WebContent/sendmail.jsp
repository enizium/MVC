<%-- 
    Document   : sendmail
    Created on : Jun 14, 2018, 11:04:45 AM
    Author     : enizium
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Send Email</h1>
        <br>
        <form action="${pageContext.request.contextPath}/Sendmail" method ="post">
            <p>
                <label>To</label>
                <input type="text" name="to" placeholder="Enter recipient address" required>
            </p>
            <p>
                <label>Subject</label>
                <input type="text" name="subject" placeholder="Enter Subject" required>
            </p>
            <p>
                <label>Message</label>
                <textarea  name="message" placeholder="Enter your message...." rows="7" cols="70"></textarea>
            </p>
            <p>

                <input type="submit" name="submit" value="Submit"/>
            </p>

        </form>
    </body>
</html>
