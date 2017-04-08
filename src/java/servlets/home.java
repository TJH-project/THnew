/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author Osama Islam
 */
public class home extends HttpServlet {
    
    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String n = request.getRemoteHost();
        
        HttpSession session=request.getSession();  
        session.setAttribute("customer",n);
        
        if(request.getHeader("User-Agent").indexOf("Mobile") != -1) {
    request.getRequestDispatcher("/m").forward(request, response);
  } else {
    request.getRequestDispatcher("/index.jsp").forward(request,response);
  }
            
    }

    
    
}
