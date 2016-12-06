package cn.com.oking.pt.servlet;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bstek.bdf2.core.context.ContextHolder;

import cn.com.oking.pt.action.PtUserLoginCfgAction;
import cn.com.oking.pt.entity.PtUserLoginCfg;

/**
 * Servlet implementation class GetUserSystemLoginInfo
 */
public class GetUserSystemLoginInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetUserSystemLoginInfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out=response.getWriter();
		//获取jsp传递到后台的参数
		String username=request.getParameter("username");
		String id=request.getParameter("id");
		PtUserLoginCfgAction action=ContextHolder.getBean("ptUserLoginCfgAction");
		PtUserLoginCfg cfg=action.findByIdAndUsername(id, username);
		StringBuffer info = new StringBuffer();
		info.append("{'sign':'"); 
		if (cfg!=null) {
			info.append("success',");
			info.append("'username':'"+cfg.getUserName()+"',");
			info.append("'pwd':'"+cfg.getPassword()+"',");
			info.append("'param':'"+cfg.getParameter()+"'}");
		}else{
			info.append("error'}");
		}
		out.print(info.toString());
		
		
	}

}
