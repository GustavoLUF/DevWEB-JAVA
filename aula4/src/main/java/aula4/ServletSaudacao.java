package aula4;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletSaudacao
 */
@WebServlet("/ServletSaudacao")
public class ServletSaudacao extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletSaudacao() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	PrintWriter saida = resp.getWriter();
    	saida.write("<HTML><BODY>");
    	saida.write("Olá! " + req.getParameter("nome") + " " + req.getParameter("sobrenome") + "!!!");
    	saida.write("</BODY></HTML>");
    	saida.close();
    }

}
