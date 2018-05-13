<%@page import="br.com.fatecpg.quizquestion.Users"%>
<%@page import="br.com.fatecpg.quizquestion.idUsers"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Últimos Testes</title>
    </head>
    <body>
                
        <% if(idUsers.getUsersList().size() <= 10){%>
        <table border="1">
            <tr><th>Indice</th><th>Nome</th><th>Cpf </th></tr>
            <%for(int i = 0; i < idUsers.getUsersList().size(); i++){%> 
            <tr>
                <td><%=i%></td>
                
                <td><%=idUsers.getUsersList().get(i).getNome()%></td>
                <td><%=idUsers.getUsersList().get(i).getPontuaçao()%></td> 
                                
            </tr>
            <%}%>
        </table>
        <%}
        else{%>
        <table border="1">
            <%
               int a = 10; 
               int t = 0;
               int r = idUsers.getUsersList().size() - 1;
               t = r - a;
            %>
            <tr><th>Indice</th><th>Nome</th><th>Cpf </th></tr>
            <%for(int i = r ; i > t; i--){%> 
            <tr>
                <td><%=i%></td>
                
                <td><%=idUsers.getUsersList().get(i).getNome()%></td>
                <td><%=idUsers.getUsersList().get(i).getPontuaçao()%></td> 
                                
            </tr>
            <%}%>
        </table>
        <%}%>
        
    </body>
</html>
