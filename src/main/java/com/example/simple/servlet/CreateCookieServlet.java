package com.example.simple.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "CreateCookieServlet", value = "/CreateCookieServlet")
public class CreateCookieServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String bg = request.getParameter("bg") ;
    String fg = request.getParameter("fg") ;
    if(bg==null) {
        bg = "black" ;
    }
    if(fg==null) {
        fg = "gray" ;
    }
    Cookie bgCk = new Cookie("background-color",bg) ;
    Cookie fgCk = new Cookie("foreground-color",fg);
    fgCk.setMaxAge(60);
    bgCk.setMaxAge(60);
    response.addCookie(fgCk);
    response.addCookie(bgCk);
    response.getWriter().println("<html><body>");
    response.getWriter().println("<h2>Your cookies have created already !!!</h2>");
    response.getWriter().println("</body></html>");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
