package aula4ex2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletPaginaAgenda
 */
@WebServlet("/ServletPaginaAgenda")
public class ServletPaginaAgenda extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletPaginaAgenda() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	PrintWriter saida = resp.getWriter();
    	saida.write("<HTML><BODY>");
    	saida.write("Olá! Digite suas informações abaixo:<br>");
    	saida.write("Nome: <FORM action=ServletAgenda><INPUT type=text name=Nome><br>");
    	saida.write("Telefone:<br> <FORM><INPUT type=text name=Telefone><br>");
    	saida.write("Data de Nascimento:<br> <FORM><INPUT type=text name=Data De Nascimento><br>");
    	saida.write("<FORM><INPUT type=submit name=Enviar><br>");
    	saida.write("</BODY></HTML>");
    	saida.close();
    }

}
