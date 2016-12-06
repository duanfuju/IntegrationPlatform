package cn.com.oking.pt.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.jdbc.core.JdbcTemplate;


import cn.com.oking.util.KeyUtil;

import com.bstek.bdf2.core.context.ContextHolder;

/**
 * Servlet implementation class ChooseSystem
 */
public class ChooseSystemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChooseSystemServlet() {
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
		//获取jsp传递到后台的参数
		String str_id=request.getParameter("arr1");
		String str_hav=request.getParameter("arr2");
		String username=request.getParameter("username");
		//将参数转换成数组
		String[] ids=str_id.split(",");
		String[] havs=str_hav.split(",");
		//获取数据源
		JdbcTemplate jdbcT=ContextHolder.getBean("jdbcTemplate");
		String sql_delete="delete from pt_user_cfg where user_name='"+username+"'";
		jdbcT.update(sql_delete);
		int order=0;
		String sql="begin ";
		for (int i = 0; i < ids.length; i++) {
			if (havs[i].equalsIgnoreCase("1")) {
				sql+="insert into pt_user_cfg(id, user_name, serial_number, pt_sys_link_id)values('"+KeyUtil.getKey()+"', '"+username+"', "+order+", '"+ids[i]+"');";
				order++;
			}
		}
		sql+="end;";
		//把sql语句中的换行符替换成空格
		sql=sql.replace("r\n", " ").replace('\n', ' ');
		jdbcT.update(sql);
		
	}

}
