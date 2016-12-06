package cn.com.oking;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.authentication.encoding.ShaPasswordEncoder;

import com.bstek.bdf2.core.context.ContextHolder;


public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//设置编码为utf-8
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		//获取文本输出
		PrintWriter out=response.getWriter();
		//spring的加密类
		ShaPasswordEncoder passwordEncoder=new ShaPasswordEncoder();
		//获取参数
		String username=request.getParameter("username");
		String pwd=request.getParameter("pwd");
		//获取数据源
		JdbcTemplate jdbcT=ContextHolder.getBean("jdbcTemplate");
		String sql="select username_,password_,salt_ from bdf2_user where username_='"+username+"'";
		Map<String, Object> map=null;
		try {
			map = jdbcT.queryForMap(sql);
		} catch (DataAccessException e) {
			e.printStackTrace();
			map=new HashMap<String, Object>();
		}
		//如果有数据的情况
		if (map.size()>0) {
			//验证密码
			if (passwordEncoder.isPasswordValid(map.get("password_").toString(), pwd,map.get("salt_").toString())) {
				out.print("<script type='text/javascript'>alert('登陆成功！！！');location.href='com.oking.core.frame.main.MainFrame.d'</script>");
			}else{
				out.print("<script type='text/javascript'>alert('密码错误！！！');window.history.go(-1)</script>");
			}
		}else{
			out.print("<script type='text/javascript'>alert('无此用户！！！');window.history.go(-1)</script>");
		}
	}
}
