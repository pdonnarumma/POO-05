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
        <title>Últimos Testes</title>
    </head>
    <body background="img/OurPlanet.jpg">
        
        <%@include file= "WEB-INF/jspf/navbar.jspf"%>

                  
        
        <br><br><br>
        <br><br><br>    

        <div style = "max-width: 880px; margin: 0 auto; background-color: rgb(227, 252, 225); height: 50%; padding: 60px 60px; text-align: center;">
      
          
        <center>        
        <% if(idUsers.getUsersList().size() <= 10){
            
           int e = idUsers.getUsersList().size() - 1;
           int y = 0;
           
        
        %>
        <table border="1">
            <tr><th>Indice</th><th>Nome</th><th>Pontuação</th></tr>
            <%for(int i = e; i >= y; i--){%> 
            <tr>
                <td><%=i%></td>
                
                <td><%=idUsers.getUsersList().get(i).getNome()%></td>
                <td><%=idUsers.getUsersList().get(i).getPontuaçao()%></td> 
                                
            </tr>
            <%}%>
        </table>
        <%}
        else{%>
        
        <table border="2">
            <%
               int a = 10; 
               int t = 0;
               int r = idUsers.getUsersList().size() - 1;
               t = r - a;
            %>
            <tr><th>Indice</th><th>Nome</th><th>Pontuação</th></tr>
            <%for(int i = r ; i > t; i--){%> 
            <tr>
                <td><%=i%></td>
                
                <td><%=idUsers.getUsersList().get(i).getNome()%></td>
                <td><%=idUsers.getUsersList().get(i).getPontuaçao()%></td> 
                                
            </tr>
            <%}%>
        </table>
        </center>
        <%}%>
        
        </div>
        
    
    <%@include file="WEB-INF/jspf/rodape.jspf" %>   
    </body>
    <script src="js/config.js"></script> 
</html>
