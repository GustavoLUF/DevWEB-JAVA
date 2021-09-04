package aula4ex2;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletAgenda
 */
@WebServlet("/ServletAgenda")
public class ServletAgenda extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletAgenda() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	PrintWriter saida = resp.getWriter();
    	saida.write("<HTML><BODY>");
    	saida.write("Os dados preenchidos são: <br>");
    	
    	Enumeration<String> nomesParametros = req.getParameterNames();
    	
    	while (nomesParametros.hasMoreElements()) {
    		String var = nomesParametros.nextElement().toString();
    		saida.write(var);
    		saida.write(" = ");
    		saida.write(req.getParameter(var));
    		saida.write(",<br> ");
    	}
    	
    	saida.write("</BODY></HTML");
    	saida.close();
    }

}
