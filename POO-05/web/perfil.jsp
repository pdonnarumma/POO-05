<%@page import="br.com.fatecpg.quizquestion.Login"%>
<%@page import="br.com.fatecpg.quizquestion.Logout"%>
<%@page import="br.com.fatecpg.quizquestion.Quiz"%>
<%@page import="br.com.fatecpg.quizquestion.Questions"%>
<%@page import="br.com.fatecpg.quizquestion.Users"%>
<%@page import="br.com.fatecpg.quizquestion.idUsers"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
   boolean logado = false;
   String name=(String)session.getAttribute("name");
   if (name != null)
   {
       logado = true;
   }
   
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
        
        
        String grade1 = Double.toString(grade);
       
        Users u = new Users();
        u.setNome(name);
        u.setPontuaçao(grade1);       
        
                        
        idUsers.getUsersList().add(u); 
        
    
   }

%>    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seu Perfil</title>
    </head>
    <body>
        
        <%if(logado) {%>
        <% if (tested){ %>
        <h1>Olá <%=name%>!</h1>
        <h2>Você acertou <%=grade%>% das questões!</h2>
        <%}%>
        
        <h2><a href="quiz.jsp">Realizar Quiz</a></h2>
        <%}
        else{%>
        <h2>Logue primeiro para acessar o Quiz</h2>
        <%}%>
        <h2><a href="ultimostestes.jsp">Últimos Testes</a></h2>
    </body>
</html>
