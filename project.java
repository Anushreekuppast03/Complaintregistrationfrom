package pro;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class project
 */
@WebServlet("/project")
public class project extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public project() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
	{
		
		
        try {
        	PrintWriter pw = response.getWriter();
            Connection con = null;
            String udcom = request.getParameter("dcom");
            String ufname = request.getParameter("fname");
            String uemail = request.getParameter("email");
            String uaddss = request.getParameter("addss");
            String udri = request.getParameter("dri");
            String utc = request.getParameter("tc");
            String uil = request.getParameter("il");
            String ucd = request.getParameter("cd");

            // Establishing database connection
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/biet", "root", "root");
                        String str = "INSERT INTO complaints VALUES(?,?,?,?,?,?,?,?)";
                       PreparedStatement ps = con.prepareStatement(str);
                            ps.setString(1, udcom);
                            ps.setString(2, ufname);
                            ps.setString(3, uemail);
                            
                            ps.setString(4, uaddss);
                        
                            ps.setString(5, udri);
                            ps.setString(6, utc);
                            ps.setString(7, uil);
                            ps.setString(8, ucd);
                          
                            ps.execute();
                            pw.println("Success");
                            response.sendRedirect("exit.jsp");
                        
                    
             
        }
            catch(Exception e)
        {
            e.printStackTrace();
	}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
