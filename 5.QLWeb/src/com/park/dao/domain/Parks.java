package com.park.dao.domain;

import java.sql.Date;

public class Parks {
	private String pid;
	private String data;
	private int keliu;
	private int rudian;
	private int newnum;
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public int getKeliu() {
		return keliu;
	}
	public void setKeliu(int keliu) {
		this.keliu = keliu;
	}
	public int getRudian() {
		return rudian;
	}
	public void setRudian(int rudian) {
		this.rudian = rudian;
	}
	public int getNewnum() {
		return newnum;
	}
	public void setNewnum(int newnum) {
		this.newnum = newnum;
	}
	public double getRdlv() {
		return rdlv;
	}
	public void setRdlv(double rdlv) {
		this.rdlv = rdlv;
	}
	public double getSflv() {
		return sflv;
	}
	public void setSflv(double sflv) {
		this.sflv = sflv;
	}
	public double getTclv() {
		return tclv;
	}
	public void setTclv(double tclv) {
		this.tclv = tclv;
	}
	public double getZhlv() {
		return zhlv;
	}
	public void setZhlv(double zhlv) {
		this.zhlv = zhlv;
	}
	private double rdlv;
	private double sflv;
	private double tclv;
	private double zhlv;
	
	
	
	
}
