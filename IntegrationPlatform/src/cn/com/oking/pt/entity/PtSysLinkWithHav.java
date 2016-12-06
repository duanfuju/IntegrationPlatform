package cn.com.oking.pt.entity;


@SuppressWarnings("serial")
public class PtSysLinkWithHav extends PtSysLink{

		private Integer hav;

		public Integer getHav() {
			return hav;
		}

		public void setHav(Integer hav) {
			this.hav = hav;
		}

		public PtSysLinkWithHav(PtSysLink link,Integer hav) {
			super();
			this.setHav(hav);
			this.setId(link.getId());
			this.setImgUrl(link.getImgUrl());
			this.setSysAddress(link.getSysAddress());
			this.setSysName(link.getSysName());
			this.setSysSimpleName(link.getSysSimpleName());
			this.setUserName(link.getUserName());
			this.setUserPwd(link.getUserPwd());
			this.setParam1(link.getParam1());
			this.setParam2(link.getParam2());
			this.setIsSignIn(link.getIsSignIn());
			this.setIconUrl(link.getIconUrl());
		}

		public PtSysLinkWithHav() {
			super();
		}
		
}
