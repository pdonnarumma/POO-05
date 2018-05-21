package br.com.fatecpg.quizquestion;

import java.io.IOException;
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
        
        
		
		
		String name=request.getParameter("name");
		
		
		if(name == null || name.equals("")){
                 
                 response.sendRedirect("login.jsp");
                 
		}
		else{
			
			     response.sendRedirect("perfil.jsp");
		 HttpSession session=request.getSession();
		 session.setAttribute("name",name);
		}
		
    }

}
