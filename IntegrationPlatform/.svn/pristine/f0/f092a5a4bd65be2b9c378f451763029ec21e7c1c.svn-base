package cn.com.oking.pt.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.authentication.encoding.ShaPasswordEncoder;

import com.bstek.bdf2.core.context.ContextHolder;

/**
 * Servlet implementation class EditPwdServlet
 */
public class EditPwdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditPwdServlet() {
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
				//设置编码为utf-8
				response.setContentType("text/html;charset=utf-8");
				response.setCharacterEncoding("utf-8");
				request.setCharacterEncoding("utf-8");
				//spring的加密类
				ShaPasswordEncoder passwordEncoder=new ShaPasswordEncoder();
				//获取参数
				String username=request.getParameter("username");
				String pwd=request.getParameter("pwd");
				//获取数据源
				JdbcTemplate jdbcT=ContextHolder.getBean("jdbcTemplate");
				//创建随机数 salt
				int math=(int)(Math.random()*10)+1;
				//加密
				pwd = passwordEncoder.encodePassword(pwd, math);
				//拼接sql
				String sql="update bdf2_user u set u.password_='"+pwd+"',u.salt_='"+math+"' where  u.username_='"+username+"'";
				int num = 0;
				try {
					num=jdbcT.update(sql);
				} catch (DataAccessException e) {
					e.printStackTrace();
				}
				//判断sql是否执行成功
				if (num!=0) {
					System.out.println("执行成功");
				}else{
					System.out.println("执行失败");
				}
	}

}
