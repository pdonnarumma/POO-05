<%@page import="br.com.fatecpg.quizquestion.Login"%>
<%@page import="br.com.fatecpg.quizquestion.Logout"%>
<%@page import="br.com.fatecpg.quizquestion.Quiz"%>
<%@page import="br.com.fatecpg.quizquestion.Questions"%>
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
       
       <%if(logado == false)
    {%>

        <h2><a href="login.jsp">Entrar</a></h2>

    <%}

    else{%>

        <h2><a href="Logout">Sair</a></h2>

    <%}%> 
    <h2><a href="ultimostestes.jsp">Últimos Testes</a></h2>
    </body>
</html>
