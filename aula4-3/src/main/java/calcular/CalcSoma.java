 package calcular;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalcSoma
 */
@WebServlet("/CalcSoma")
public class CalcSoma extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalcSoma() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter saida = response.getWriter();
		
		String svalor1 = request.getParameter("valor1");
		String svalor2 = request.getParameter("valor2");
		String sopcao = request.getParameter("opcao");
		
		double nvalor1 = Double.parseDouble(svalor1);
		double nvalor2 = Double.parseDouble(svalor2);
		double resultado = 0;
		
		if(sopcao.equals("+")) {
			resultado = nvalor1 + nvalor2;
		}
		
		saida.write("O Resultado é: <br>"+resultado);
	}

}
