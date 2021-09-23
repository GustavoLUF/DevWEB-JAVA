package aula1609atividade;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ServletCadastro
 */
@WebServlet("/ServletCadastro")
public class ServletCadastro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletCadastro() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public static final String USUARIO = "usuario";
    public static final String PASSWORD = "senha";
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter cadastrar = response.getWriter();

        cadastrar.write("<html><head>"
                + "Cadastro realizado com sucesso!<br>"
                + "<a href='./login.jsp'>Clique para efetuar o login.</a></head><body>");
        String users = request.getParameter(USUARIO);
        String passw = request.getParameter(PASSWORD);

            HttpSession s = request.getSession();
            s.setAttribute(USUARIO, users);
            s.setAttribute(PASSWORD, passw);
	}

}
