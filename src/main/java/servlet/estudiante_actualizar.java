package servlet;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;



/**
 * Servlet implementation class estudiante_actualizar
 */
public class estudiante_actualizar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public estudiante_actualizar() {
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
		
		String id, codigo, nombres, apellidos, correo, direccion, telefonos;
		id=request.getParameter("id");
		codigo=request.getParameter("codigo");
		nombres=request.getParameter("nombres");
		apellidos=request.getParameter("apellidos");
		correo=request.getParameter("correo");
		direccion=request.getParameter("direccion");
		telefonos=request.getParameter("telefonos");
		
		
		String sql="UPDATE estudiante"
				+ "SET codigo='"+codigo+"', nombres='"+nombres+"', apellidos='"+apellidos+"', correo='"+correo+"', direccion='"+direccion+"', telefonos='"+telefonos+"'"
				+ "WHERE id="+id;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/sacademico";
			Connection con=DriverManager.getConnection(url,"root","");
			Statement st=con.createStatement();
			st.executeUpdate(sql);
			response.sendRedirect("index.jsp?mensaje=Estudiante registrado con exito...");
		} catch (Exception e) {
			// TODO: handle exception
			response.sendRedirect("index.jsp?mensaje=Error! No se registro al estudiante..."+e.getMessage());
		}	
		
	}

}
