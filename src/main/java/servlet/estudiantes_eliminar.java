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
 * Servlet implementation class estudiantes_eliminar
 */
public class estudiantes_eliminar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public estudiantes_eliminar() {
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
		
		String idParam = request.getParameter("id");
		System.out.println("ID recibido en el Servlet: " + idParam);

		String sql = "DELETE FROM estudiante "
		           + "WHERE id=" + idParam;

		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/sis";
			Connection con=DriverManager.getConnection(url,"root","");
			Statement st=con.createStatement();
			st.executeUpdate(sql);
			response.sendRedirect("index.jsp?msj=delOk");
		} catch (Exception e) {
			// TODO: handle exception
			response.sendRedirect("index.jsp?msj=delNOk"+e.getMessage());
		}	
	}

}
