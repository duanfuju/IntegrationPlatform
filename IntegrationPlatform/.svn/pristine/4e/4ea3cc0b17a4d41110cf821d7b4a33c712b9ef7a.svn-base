package cn.com.oking.pt.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.bstek.dorado.annotation.DataProvider;

import cn.com.oking.pt.dao.Bdf2RoleMemberDao;
import cn.com.oking.pt.dao.PtRoleUrlDao;
import cn.com.oking.pt.dao.PtSysLinkDao;
import cn.com.oking.pt.dao.PtUserCfgDao;
import cn.com.oking.pt.entity.Bdf2RoleMember;
import cn.com.oking.pt.entity.PtRoleUrl;
import cn.com.oking.pt.entity.PtSysLink;
import cn.com.oking.pt.entity.PtSysLinkWithHav;
import cn.com.oking.pt.entity.PtUserCfg;

/**
 * PT_USER_CFG:系统平台用户配置
 */
@Component
public class PtUserCfgAction {
	@Resource
	private PtUserCfgDao userDao;//系统平台用户配置
	
	@Resource
	private PtSysLinkDao linkDao;//系统平台的地址
	
	@Resource
	private PtRoleUrlDao roleDao;//角色的系统权限配置
	
	@Resource
	private Bdf2RoleMemberDao reDao;//bdf2的权限表
	
	
	/**
	 * 根据用户名称来查询数据
	 * @param name
	 * @return
	 */
	@DataProvider
	@Transactional
	public List<PtSysLink> findByName(String name){
		List<PtUserCfg> userList=userDao.find("from PtUserCfg where userName='"+name+"' order by serialNumber");
		if (userList.size()==0) {
			return null;
		}
		//根据用户名查询其下所有的平台地址
		String str="";
		for (PtUserCfg user : userList) {
			str+=user.getPtSysLinkId()+",";
		}
		//调整字符串，将多余的最后一个逗号删除
		str = str.substring(0,str.length() - 1);
		List<PtSysLink> sysList=linkDao.find("from PtSysLink where id in ("+str+")");
		return sysList;
	}
	@DataProvider
	@Transactional
	public List<PtSysLinkWithHav> findSysLinkSelectHav(String username_){
		List<PtSysLinkWithHav> hasList=null;
		try {
			//到系统的权限表找到指定角色的编号
			Bdf2RoleMember roleMember = (Bdf2RoleMember) reDao.find("from Bdf2RoleMember where username='"+username_+"'").get(0);
			//通过角色的编号查询角色所拥有的平台的编号集合
			PtRoleUrl ptRoleUrl=(PtRoleUrl) roleDao.find("from PtRoleUrl where roleName='"+roleMember.getRoleId()+"'").get(0);
			//通过编号集合去查询平台的所有地址
			List<PtSysLink> syslist = linkDao.find("from PtSysLink where id in ("+ptRoleUrl.getPtSysLinkId()+")");
			//获取用户所拥有的平台地址的集合
			List<PtSysLink> syslist_user=findByName(username_);
			hasList = new ArrayList<PtSysLinkWithHav>();
			if (syslist_user==null) {
				//扩展类的属性
				for (int i=0;i< syslist.size();i++) {
					PtSysLinkWithHav hav=new PtSysLinkWithHav();
					hav=new PtSysLinkWithHav(syslist.get(i),0);
					hasList.add(hav);
				}
			}else{
				//扩展类的属性
				for (int i=0;i< syslist.size();i++) {
					PtSysLinkWithHav hav=new PtSysLinkWithHav();
					int h=0;
					for (int j = 0; j < syslist_user.size(); j++) {
						if (syslist.get(i).getId().equalsIgnoreCase(syslist_user.get(j).getId())) {
							 h=1;
							 break;
						}
					}
					hav=new PtSysLinkWithHav(syslist.get(i),h);
					hasList.add(hav);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return hasList;
	}
}
