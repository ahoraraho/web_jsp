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
 * Servlet implementation class registrar_comentario
 */
public class registrar_comentario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registrar_comentario() {
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
		
		   String usuario, titulo, comentario, calificacion;

		    usuario=request.getParameter("usuario");
		    calificacion=request.getParameter("calificacion");
			titulo=request.getParameter("titulo");
			comentario=request.getParameter("comentario");
				
				
				String sql="INSERT INTO comentarios (usuario,calificacion, titulo,comentario) VALUES('"+usuario+"','"+calificacion+"','"+titulo+"','"+comentario+"')";
				try {
					Class.forName("com.mysql.jdbc.Driver");
					String url="jdbc:mysql://localhost:3306/oxxo";
					Connection con=DriverManager.getConnection(url,"root","");
					Statement st=con.createStatement();
					st.executeUpdate(sql);
					response.sendRedirect("index.jsp?mensaje=Comentario registrado corectamente");
				} catch (Exception e) {
					// TODO: handle exception
					response.sendRedirect("index.jsp?mensaje=Error! No se registro al el comentario..."+e.getMessage());
				}	
	}

}
