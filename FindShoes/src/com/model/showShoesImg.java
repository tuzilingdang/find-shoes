package com.model;
//显示鞋子的图片
public class showShoesImg {
	private String img_url;
	private String goods_id;
	private String brand;
	private String online_url;
	
	public String getImg_url() {
		return img_url;
	}
	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}
	public String getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(String goods_id) {
		this.goods_id = goods_id;
	}
	public String getOnline_url() {
		return online_url;
	}
	public void setOnline_url(String online_url) {
		this.online_url = online_url;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
    
	//传入主键，自动生成该类的其他属性
	public void generateClass(String goodsId) {
		
		
		
	}
}
