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
 * Servlet implementation class ProjectList
 */
@WebServlet("/projectList")
public class ProjectList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProjectList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ProjectDAO pDao=new ProjectDAO();
		request.setCharacterEncoding("utf-8");
		int sPage = 0;
    	int ePage = 8;  //perPage = 10, 20, 40
    	if(request.getParameter("sPage") != null && request.getParameter("ePage") != null ) {
    		sPage = Integer.parseInt(request.getParameter("sPage"));
    		ePage = Integer.parseInt(request.getParameter("ePage"));
    	}
		
		int totalCount = (int)Math.ceil(pDao.selectCount()/ePage)+1;
		
		ArrayList<ProjectDTO> mList=new ArrayList<ProjectDTO>();
		mList=pDao.selectAll(sPage);
		
		if(mList!=null){
			request.setAttribute("mList", mList);
			request.setAttribute("curPage", (sPage / ePage)+1);
    		request.setAttribute("perPage", ePage);
    		request.setAttribute("totalCount", totalCount);
    		
			request.getRequestDispatcher("index.jsp?content=teamproject.jsp").forward(request, response);
		}else if(mList==null){
			System.out.println("List Loading Erorr");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
