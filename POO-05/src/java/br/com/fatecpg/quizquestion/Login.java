package br.com.fatecpg.quizquestion;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Login extends HttpServlet {
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        
        PrintWriter out=response.getWriter();
		
		
		String name=request.getParameter("name");
		
		
		if(name != null){
                 
                 response.sendRedirect("perfil.jsp");
		 HttpSession session=request.getSession();
		 session.setAttribute("name",name);
		}
		else{
			
			response.sendRedirect("login.jsp");
		}
		out.close();
    }

}
