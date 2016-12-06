package cn.com.oking.pt.action;


import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.bstek.dorado.annotation.DataProvider;
import com.bstek.dorado.annotation.DataResolver;
import com.bstek.dorado.data.provider.Page;

import cn.com.oking.pt.dao.PtSysLinkDao;
import cn.com.oking.pt.dao.PtUserLoginCfgDao;
import cn.com.oking.pt.entity.PtSysLink;
import cn.com.oking.pt.entity.PtUserLoginCfg;
import cn.com.oking.util.KeyUtil;
import cn.com.oking.util.StringUtil;

@Component
public class PtUserLoginCfgAction {
	@Resource
	private PtUserLoginCfgDao cfgDao;//用户登录配置
	@Resource
	private PtSysLinkDao sysLinkDao;//用户配置
	
	
	
	@Transactional	
	@DataProvider
	public PtUserLoginCfg findByIdAndUsername(String linkId,String username){//根据链接的编号和用户名来获取用户所要登录的平台的信息
		List<PtUserLoginCfg> list=null;
		try {
			list = cfgDao.find("from PtUserLoginCfg where roleName='"+username+"' and systemId='"+linkId+"'");
			if (list.size()>0) {
				return list.get(0);
			}else{
				return null;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
	}
	
	
	@Transactional
	@DataProvider	
	public void getPtSysLink(Page<PtSysLink> page){//获取链接的平台信息
		sysLinkDao.find(page,"from PtSysLink where isSignIn='y'");
	}
	
	@Transactional	
	@DataProvider
	public void getPtUserLoginCfg(Page<PtUserLoginCfg> page,Map<String, Object> param){//获取链接的平台信息
		if (param!=null) {
			String username=param.get("username").toString();
			cfgDao.find(page,"from PtUserLoginCfg where roleName='"+username+"'");
		}else{
			cfgDao.getAll(page);
		}
	}
	
	
	@Transactional
	@DataResolver	
	public void save(List<PtUserLoginCfg> infos){//保存链接的平台用户登录配置的信息
		for (int i = 0; i < infos.size(); i++) {
			PtUserLoginCfg cfg=infos.get(0);
			if (!StringUtil.isNotEmpty(cfg.getId())) {
				cfg.setId(KeyUtil.getKey());
			}
		}
		cfgDao.persistEntities(infos);
	}
	@Transactional
	@DataResolver	
	public void save(PtUserLoginCfg info){//保存链接的平台用户登录配置的信息
			if (!StringUtil.isNotEmpty(info.getId())) {
				info.setId(KeyUtil.getKey());
			}
			cfgDao.save(info);
	}
	
	
}
