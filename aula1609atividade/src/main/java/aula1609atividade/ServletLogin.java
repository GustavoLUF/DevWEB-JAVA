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
 * Servlet implementation class ServletLogin
 */
@WebServlet("/ServletLogin")
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletLogin() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public static final String USUARIO = "usuario";
    public static final String PASSWORD = "senha";
	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession s = request.getSession();
        String users = (String) s.getAttribute(USUARIO);
        String pswd = (String) s.getAttribute(PASSWORD);

        PrintWriter logarr = response.getWriter();

        if (users.equals(request.getParameter("usuario1")) && pswd.equals(request.getParameter("senha1"))) {
            logarr.write("<html><head></head><body>"
                    + "Aqui constam suas informações:<br>" + users + "<br>" + pswd
                    + "</body></html>");
        }
        else {
            logarr.write("<html><head></head><body>"
                    + "Registros inválidos."
                    + "</body></html>");
        }
    }
}