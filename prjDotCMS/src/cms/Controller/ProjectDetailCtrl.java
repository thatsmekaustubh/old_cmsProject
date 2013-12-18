package cms.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cms.DAO.ProjectDAO;
import cms.DTO.ProjectDTO;

/**
 * Servlet implementation class ProjectDetailCtrl
 */
@WebServlet("/projectDetailCtrl")
public class ProjectDetailCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProjectDetailCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		int key=Integer.parseInt(request.getParameter("key"));
		ProjectDAO pDao=new ProjectDAO();
		ArrayList<ProjectDTO> dto=pDao.select(key);
		
		if(dto!=null){
			request.setAttribute("pDto", dto);
			request.getRequestDispatcher("index.jsp?content=projectView.jsp").forward(request, response);
		}else{
			System.out.println("list null");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
}
