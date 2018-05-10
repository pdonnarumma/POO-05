<%-- 
    Document   : home
    Created on : 09/05/2018, 02:32:33
    Author     : pdonnarumma
--%>

<%@page import="br.com.fatecpg.quizquestion.Questions"%>
<%@page import="br.com.fatecpg.quizquestion.Quiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
    boolean tested = false;
    double grade = 0;
    if(request.getParameter("tested") != null)
    {
        tested = true;
        int count = 0;
        for(int i = 0; i < Quiz.getTest().size(); i++)
        {
            Questions q = Quiz.getTest().get(i);
            String p = request.getParameter(q.getQuestion());
            if(q.getAswer().equals(p))
            {
                count++;
            }
        }
        grade = 100.0 * ((double)(count) / Quiz.getTest().size());
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Web Quiz</title>
    </head>
    <body>
        <h1>Web Quiz</h1>
        <h2><a href="quiz.jsp">Realizar Quiz</a></h2>
    </body>
</html>
