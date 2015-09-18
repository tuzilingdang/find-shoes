//����չʾЬ��
package com.model;

import com.dao.*;

public class showShoes {
	private OnlineStore showOnlineStore;
	private String showBrandName;
	private String showGoodsName;
	
	
	public OnlineStore getShowOnlineStore() {
		return showOnlineStore;
	}


	public void setShowOnlineStore(OnlineStore showOnlineStore) {
		this.showOnlineStore = showOnlineStore;
	}


	public String getShowBrandName() {
		return showBrandName;
	}


	public void setShowBrandName(String showBrandName) {
		this.showBrandName = showBrandName;
	}


	public String getShowGoodsName() {
		return showGoodsName;
	}


	public void setShowGoodsName(String showGoodsName) {
		this.showGoodsName = showGoodsName;
	}


	//�����������Զ����ɸ�����������ԡ�Ʒ������Ь������
	public void generateClass(String onlineUrl) {
		
		OnlineStoreDAO olsDao = new OnlineStoreDAO();
		ShoesDAO shoesDao = new ShoesDAO();
		/*BrandDAO brandDao = new BrandDAO();*/
		Shoes shoe;
		
		showOnlineStore = olsDao.findById(onlineUrl);
		
		shoe = shoesDao.findById(showOnlineStore.getGoodsId());
/*		Integer brandId = shoe.getBrandId();
		showBrandName = brandDao.findById(brandId).getBrandName();*/
		showBrandName = shoe.getBrand();
		
		
		//�ϳ�ŮЬ����
		String leatherName;
		if(shoe.getLeather()!=null)
			leatherName=shoe.getLeather();
		else
			leatherName="";
		
		String season=shoe.getSeason()==null? "" : shoe.getSeason();
		String hellHeight=shoe.getHeelHeight()==null? "" : shoe.getHeelHeight();
		
		showGoodsName=showBrandName+season+leatherName+hellHeight+"ŮЬ";
		
	}
}
