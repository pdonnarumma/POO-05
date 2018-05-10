<%-- 
    Document   : quiz
    Created on : 09/05/2018, 02:37:32
    Author     : pdonnarumma
--%>

<%@page import="br.com.fatecpg.quizquestion.Questions"%>
<%@page import="br.com.fatecpg.quizquestion.Quiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Web Quiz</title>
    </head>
    <body>
        <h1>Quiz Nivel Thanos</h1>
        <form action="home.jsp">
            <%for(int i = 0; i < Quiz.getTest().size(); i++){%>
            <%Questions q = Quiz.getTest().get(i);%>
            <h2><%=q.getQuestion()%></h2>
            <input type="radio" name="<%=q.getQuestion()%>" value="<%=q.getAlternatives()[0]%>"/><%=q.getAlternatives()[0]%>            
            <input type="radio" name="<%=q.getQuestion()%>" value="<%=q.getAlternatives()[1]%>"/><%=q.getAlternatives()[1]%>            
            <input type="radio" name="<%=q.getQuestion()%>" value="<%=q.getAlternatives()[2]%>"/><%=q.getAlternatives()[2]%>            
            <%}%>
            <hr>
            <input type="submit" name="tested" value="Enviar">
        </form>
    </body>
</html>
