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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/styles.css">
        <title>Ranking</title>
    </head>
    <body background="img/OurPlanet.jpg">
    
    <%@include file= "WEB-INF/jspf/navbar.jspf"%>                 
                     
        <br><br><br>
        <br><br><br>    

       <div style = "max-width: 880px; margin: 0 auto; background-color: rgb(227, 252, 225); height: 50%; padding: 60px 60px; text-align: center;">
        <center><h1>Hello World!</h1></center>
       </div>



    <%@include file="WEB-INF/jspf/rodape.jspf" %>  
    </body>
    <script src="js/config.js"></script>
</html>
