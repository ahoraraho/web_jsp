package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.sql.*;
;/**
 * Servlet implementation class estudiante_registrar
 */
public class estudiante_registrar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public estudiante_registrar() {
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
		// TODO Auto-generated method stub
		doGet(request, response);
		String codigo, nombres, apellidos, correo, direccion, telefonos;
		codigo=request.getParameter("codigo");
		nombres=request.getParameter("nombres");
		apellidos=request.getParameter("apellidos");
		correo=request.getParameter("correo");
		direccion=request.getParameter("direccion");
		telefonos=request.getParameter("telefonos");
		
		
		String sql="INSERT INTO estudiante(codigo,nombres,apellidos,correo,direccion,telefonos) VALUES('"+codigo+"','"+nombres+"','"+apellidos+"','"+correo+"','"+direccion+"','"+telefonos+"')";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/sis";
			Connection con=DriverManager.getConnection(url,"root","");
			Statement st=con.createStatement();
			st.executeUpdate(sql);
			response.sendRedirect("index.jsp?msj=addOk");
		} catch (Exception e) {
			// TODO: handle exception
			response.sendRedirect("index.jsp?msj=addNOk"+e.getMessage());
		}	
	}

}
