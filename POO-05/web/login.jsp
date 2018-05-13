<%@page import="br.com.fatecpg.quizquestion.Login"%>
<%@page import="br.com.fatecpg.quizquestion.Logout"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
   boolean logado = false;
   String name=(String)session.getAttribute("name");
   if (name != null)
   {
       logado = true;
   }

%>    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Web Quiz</title>
    </head>
    <body>
        <h1>Web Quiz</h1>
        <% if (logado == false) {%>
        <form action="Login" method="post">
         Name:<input type="text" name="name"><br>
        <input type="submit" value="submit">
        </form>
        <%}
        else{%>
        <h2>Você já está logado!!!</h2>
        <h2><a href="quiz.jsp">Realizar Quiz</a></h2>
        <%}%>
    </body>
</html>
