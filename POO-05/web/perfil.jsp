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
        Quiz last = (Quiz)session.getAttribute("quiz");
        tested = true;
        int count = 0;
        for(int i = 0; i < 10; i++)
        {
            Questions qq = last.getTest().get(i);
            String p = request.getParameter(qq.getQuestion());
            if(qq.getAswer().equals(p))
            {
                count++;
            }
            
        }
        grade = 100.0 * ((double)(count) / last.getTest().size());
        
        
        
        String grade1 = Double.toString(grade);
       
        Users u = new Users();
        u.setNome(name);
        u.setPontuacao(grade1);       
        
                        
        idUsers.getUsersList().add(u); 
        
    
   }

%>    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/styles.css">
        <title>Seu Perfil</title>
    </head>
    <body background="img/OurPlanet.jpg">
            
     <%@include file= "WEB-INF/jspf/navbar.jspf"%>                 
                     
        <br><br><br>
        <br><br><br> 

      <div style = "max-width: 880px; margin: 0 auto; background-color: rgb(227, 252, 225); height: 50%; padding: 60px 60px; text-align: center;">

        <center>
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
        </center>

      </div>

    <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
    <script src="js/config.js"></script>
</html>
