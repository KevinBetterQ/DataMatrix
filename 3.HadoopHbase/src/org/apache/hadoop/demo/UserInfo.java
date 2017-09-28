package org.apache.hadoop.demo;

public class UserInfo {
	public static String firstTime;//第一次入店时间
	public static String lastTime;//最后一次入店时间
	public static int inShopTime;//入店次数
	public static double interval;//来访间隔，最后一次入店时间减去第一次入店时间， 除以入店次数
	
	public void setLastTime(String lastTime){
		this.lastTime = lastTime;
	}
	public void setInShopTime(int inShopTime){
		this.inShopTime = inShopTime;
	}
	public void setInterval(double interval){
		this.interval = interval;
	}
	public UserInfo(String firstTime, String lastTime, int inShopTime, double interval){
		this.firstTime = firstTime;
		this.lastTime = lastTime;
		this.inShopTime = inShopTime;
		this.interval = interval;
	}

}
