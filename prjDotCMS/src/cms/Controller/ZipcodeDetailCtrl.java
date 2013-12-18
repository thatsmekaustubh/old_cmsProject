package cms.Controller;



import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cms.DAO.ZipcodeDAO;
import cms.DTO.ZipcodeDTO;

/**
 * Servlet implementation class ZipcodeDetailCtrl
 */
@WebServlet("/zipcodeDetailCtrl")
public class ZipcodeDetailCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ZipcodeDetailCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("utf-8"); 

    	int seq = Integer.parseInt(request.getParameter("seq"));
    	ZipcodeDAO zdao = new ZipcodeDAO();
    	ArrayList<ZipcodeDTO> zipList = zdao.selectSeq(seq);
    	
    	if(zipList != null) {
    		request.setAttribute("zipList", zipList);
    		request.getRequestDispatcher("zipcodeDetailView.jsp").forward(request, response);
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
