package cms.Controller;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cms.DAO.MemberDAO;
import cms.DTO.LoginModel;

/**
 * Servlet implementation class MemberListCtrl
 */
@WebServlet("/memberListCtrl")
public class MemberListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberListCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int sPage = 1;
    	int ePage = 10;
    	if(request.getParameter("sPage") != null && request.getParameter("ePage") != null ) {
    		sPage = Integer.parseInt(request.getParameter("sPage"));
    		ePage = Integer.parseInt(request.getParameter("ePage"));
    	}
    	MemberDAO mDao=new MemberDAO();
    	int totalCount = ((int) Math.ceil(mDao.selectCount()/ePage))+1;
    	Vector<LoginModel> vList=mDao.selectAll(sPage,ePage);
    	if(vList!=null){
    		request.setAttribute("mList", vList);
    		request.setAttribute("curPage", (sPage / ePage) + 1);
    		request.setAttribute("perPage", ePage);
    		request.setAttribute("totalCount", totalCount);
    		request.getRequestDispatcher("index.jsp?content=memberList.jsp").forward(request, response);
    	}else{
    		request.getRequestDispatcher("index.jsp?content=memberList.jsp").forward(request, response);
    	}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		MemberDAO mDao=new MemberDAO();
		Vector<LoginModel> mList=new Vector<LoginModel>();
		String key=request.getParameter("key");
		int flag=Integer.parseInt(request.getParameter("flag"));
		mList=mDao.selectMember(key, flag);

		if(mList!=null){
			request.setAttribute("mList", mList);
			request.getRequestDispatcher("index.jsp?content=memberList.jsp").forward(request, response);
		}
	}

}
