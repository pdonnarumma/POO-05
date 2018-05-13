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
        <title>Quiz</title>
    </head>
    <body>
        <h1>Quiz</h1>
        <%if(logado){%>
        <form action="perfil.jsp">
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
        <%}
        else{%>
            <h2>Logue primeiro para acessar o Quiz</h2>
        <%}%>
    </body>
</html>
