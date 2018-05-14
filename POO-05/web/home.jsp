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
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>               
        <link rel="stylesheet" type="text/css" href="css/styles.css">
        
        <title>Web Quiz</title>
    </head>
    <body background="img/OurPlanet.jpg">

                
                       
        <%@include file= "WEB-INF/jspf/navbar.jspf"%>                 
                     
        <br><br><br>
        <br><br><br>    

       <div style = "max-width: 880px; margin: 0 auto; background-color: rgb(227, 252, 225); height: 50%; padding: 60px 60px; text-align: center;">

        <center><h1>Home - Web Quiz</h1></center>
        <center>
          <%if(logado == false)
         {%>

            <h2><a href="login.jsp">Entrar</a></h2><br>

        <%}

        else{%>

            <h2><a href="Logout">Sair</a></h2>

        <%}%> 
        <h2><a href="ultimostestes.jsp">Últimos Testes</a></h2>
        </center>
       </div>
    
    <%@include file="WEB-INF/jspf/rodape.jspf" %>
    
    </body>
    <script src="js/config.js"></script>
</html>
