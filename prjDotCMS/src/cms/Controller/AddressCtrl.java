package cms.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// Data Access Object : processing a query 
import cms.DAO.ZipcodeDAO;
// Data Transfer Object : recode or recode list
import cms.DTO.ZipcodeDTO;
import cms.DTO.ZipcodeDTOList;
/**
 * Servlet implementation class AddressCtrl
 */
@WebServlet("/addressCtrl")
public class AddressCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddressCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("utf-8"); 

    	String dong = request.getParameter("dong");
    	int sPage = 1;
    	int ePage = 10;  //perPage = 10, 20, 40
    	if(request.getParameter("sPage") != null && request.getParameter("ePage") != null ) {
    		sPage = Integer.parseInt(request.getParameter("sPage"));
    		ePage = Integer.parseInt(request.getParameter("ePage"));
    	}
    	ZipcodeDAO zdao = new ZipcodeDAO();

    	int totalCount = (int) Math.ceil(zdao.selectCount(dong) / ePage) ;
    	ArrayList<ZipcodeDTO> zipList = zdao.selectDong(dong, sPage, ePage);
    	if(zipList != null) {
    		request.setAttribute("zipList", zipList);
    		request.setAttribute("curPage", (sPage / ePage) + 1);
    		request.setAttribute("perPage", ePage);
    		request.setAttribute("totalCount", totalCount);
    		request.setAttribute("dong", dong);
    		request.getRequestDispatcher("zipcodeListView.jsp").forward(request, response);
    	}
    	else
    		request.getRequestDispatcher("fail.jsp").forward(request, response);
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

}
