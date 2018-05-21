<%@page import="br.com.fatecpg.quizquestion.Login"%>
<%@page import="br.com.fatecpg.quizquestion.Logout"%>
<%@page import="br.com.fatecpg.quizquestion.Quiz"%>
<%@page import="br.com.fatecpg.quizquestion.Questions"%>
<%@page import="br.com.fatecpg.quizquestion.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%    

   boolean logado = false;
   String name=(String)session.getAttribute("name");
   Users user = (Users)session.getAttribute(name);

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
        <title>Quiz</title>
    </head>
    <body background="img/OurPlanet.jpg">
      
       <%@include file= "WEB-INF/jspf/navbar.jspf"%>                 
                     
        <br><br><br>
        <br><br><br>    

       <div style = "max-width: 880px; margin: 0 auto; background-color: rgb(227, 252, 225); height: 50%; padding: 60px 60px; text-align: center;">
        <center>
        <h1>Quiz</h1>
        <%if(logado){%>

        <form action="perfil.jsp">
            <%
                Quiz q = new Quiz(user);
                request.getSession().removeAttribute("quiz");
                request.getSession().setAttribute("quiz", q);
               
            %>

            <%for(int i = 0; i < q.getTest().size(); i++){%>
            <%Questions qt = q.getTest().get(i);%>  
            <h2><%=qt.getQuestion()%></h2>
            <input type="radio" name="<%=qt.getQuestion()%>" value="<%=qt.getAlternatives()[0]%>"/><%=qt.getAlternatives()[0]%> </br>           
            <input type="radio" name="<%=qt.getQuestion()%>" value="<%=qt.getAlternatives()[1]%>"/><%=qt.getAlternatives()[1]%> </br>           
            <input type="radio" name="<%=qt.getQuestion()%>" value="<%=qt.getAlternatives()[2]%>"/><%=qt.getAlternatives()[2]%> </br>           
            <%}%>
            <hr>
            <input type="submit" name="tested" value="Enviar">
        </form>
        
        <%}
        else{%>
            <h2>Logue primeiro para acessar o Quiz</h2>
        <%}%>
        </center>
      </div>

    <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
    <script src="js/config.js"></script>
</html>
