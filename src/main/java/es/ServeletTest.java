package es;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class ServeletTest
 */
public class ServeletTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServeletTest() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nom = request.getParameter("FullName");
		String user = request.getParameter("Username");
		
		String email = request.getParameter("Email");
		String pass = request.getParameter("password");
		String pass1 = request.getParameter("Confirmpassword");
				
		
		String passValidoUsuario = "Username Invalido";

		if(user.length() >= 5) {

			passValidoUsuario= "Username Valido";

		}

		String passValidopass = "password Invalida";

		if(pass.length() >= 8) {

			passValidopass = "password Valida";

		}

		request.setAttribute("DatoFullName", nom);
		request.setAttribute("DatoUsername", user);
		request.setAttribute("DatoEmail", email);
		
		RequestDispatcher myDispatcher = request.getRequestDispatcher("/Resultado.jsp");
		myDispatcher.forward(request, response);
	
	}
}
