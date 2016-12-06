package cn.com.oking.pt.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.bstek.dorado.annotation.DataProvider;

@Component
public class getJwgkData {
	
		//sqpt的数据源（测试时使用）
		@Resource(name = "jdbcSqpt")
		private JdbcTemplate jdbcSqpt;
		@DataProvider
		@Transactional
		public List<Map<String, Object>> getDataNews(){
			String sql="select * from wz_wz t left join wz_fj f on f.wzbh=t.bh where rownum>=1 and rownum<7 order by fbsj desc";
			List<Map<String, Object>> list= new ArrayList<Map<String,Object>>();
			try {
				list = jdbcSqpt.queryForList(sql);
			} catch (DataAccessException e) {
				e.printStackTrace();
				return null;
			}
			return list;
		}
		/*
		//jwgk的数据源（正式运行环境的时候使用）
		@Resource(name = "jdbcJwgk")
		private JdbcTemplate jdbcJwgk;
		@DataProvider
		@Transactional
		public List<Map<String, Object>> getDataNews(){
			 String sql="select * from wz_wz t left join wz_fj f on f.wzbh=t.bh where t.sslmbh='140' order by fbsj desc ";
			List<Map<String, Object>> list= new ArrayList<Map<String,Object>>();
			try {
				list = jdbcJwgk.queryForList(sql);
			} catch (DataAccessException e) {
				e.printStackTrace();
				return null;
			}
			return list;
		}
		*/
		
}
