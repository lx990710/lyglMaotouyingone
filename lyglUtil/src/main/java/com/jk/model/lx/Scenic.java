package com.jk.model.lx;

import java.io.Serializable;

public class Scenic implements Serializable{
	
	private Integer scenicid        ;      //     主键
		private String  scenicname       ;      //    景点名称
		private String  scenicimg        ;      //    景点图片
		private String  scenicbrief      ;      //    景点介绍
		private Integer  scenicdidian    ;      //     景点地点
		private Integer scenicdianping  ;      //     景点 点评 点赞	
		private Integer leixing  ;             //     景点类型  //景点与地标   跟团游览  户外活动  博物馆   购物  交通  
		private String  kaishidate ;             //   营业时间
		private Integer shouchang = 1;       // 收藏

	private Integer jiage;

	public Integer getJiage() {
		return jiage;
	}

	public void setJiage(Integer jiage) {
		this.jiage = jiage;
	}

	public Integer getHid() {
		return hid;
	}

	public void setHid(Integer hid) {
		this.hid = hid;
	}
	
		private String asianame;
		private Integer hid;               // 酒店关联id
		public Integer getScenicid() {
			return scenicid;
		}

		public void setScenicid(Integer scenicid) {
			this.scenicid = scenicid;
		}

		public String getScenicname() {
			return scenicname;
		}

		public void setScenicname(String scenicname) {
			this.scenicname = scenicname;
		}

		public String getScenicimg() {
			return scenicimg;
		}

		public void setScenicimg(String scenicimg) {
			this.scenicimg = scenicimg;
		}

		public String getScenicbrief() {
			return scenicbrief;
		}

		public void setScenicbrief(String scenicbrief) {
			this.scenicbrief = scenicbrief;
		}

		public Integer getScenicdidian() {
			return scenicdidian;
		}

		public void setScenicdidian(Integer scenicdidian) {
			this.scenicdidian = scenicdidian;
		}

		public Integer getScenicdianping() {
			return scenicdianping;
		}

		public void setScenicdianping(Integer scenicdianping) {
			this.scenicdianping = scenicdianping;
		}

		public Integer getLeixing() {
			return leixing;
		}

		public void setLeixing(Integer leixing) {
			this.leixing = leixing;
		}

		public String getKaishidate() {
			return kaishidate;
		}

		public void setKaishidate(String kaishidate) {
			this.kaishidate = kaishidate;
		}

		public Integer getShouchang() {
			return shouchang;
		}

		public void setShouchang(Integer shouchang) {
			this.shouchang = shouchang;
		}

		public String getAsianame() {
			return asianame;
		}

		public void setAsianame(String asianame) {
			this.asianame = asianame;
		}

		@Override
		public String toString() {
			return "Scenic [scenicid=" + scenicid + ", scenicname=" + scenicname + ", scenicimg=" + scenicimg
					+ ", scenicbrief=" + scenicbrief + ", scenicdidian=" + scenicdidian + ", scenicdianping="
					+ scenicdianping + ", leixing=" + leixing + ", kaishidate=" + kaishidate + ", shouchang="
					+ shouchang + ", asianame=" + asianame + "]";
		}
		
		
}
