package com.action;

import java.util.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.dao.*;
import com.model.*;

public class goodsAction extends ActionSupport{
	
	private String searchStr; //�����Ļ���
	//checkbox����
	private String ckBrand;
	private String ckSeason;
	private String ckPrice;
	private String ckHotPoint;
	private String ckHeelHeight;
	private String ckFashion;
	private String ckOccasion;
	private String ckStyle;
	private String ckToe;
	private String ckHeelStyle;
	private String ckLeather;
	private String ckSole;
	private String ckUpperHeight;
	private int showShoesListSize;
	private boolean hasNextPage;
	private boolean hasPrePage;
	private int pageNow;
	
	private ArrayList<Boolean> bArray;
	public boolean isHasNextPage() {
		return hasNextPage;
	}

	public void setHasNextPage(boolean hasNextPage) {
		this.hasNextPage = hasNextPage;
	}

	public boolean isHasPrePage() {
		return hasPrePage;
	}

	public void setHasPrePage(boolean hasPrePage) {
		this.hasPrePage = hasPrePage;
	}

	public int getShowShoesListSize() {
		return showShoesListSize;
	}

	public void setShowShoesListSize(int showShoesListSize) {
		this.showShoesListSize = showShoesListSize;
	}

	private List<Shoes> classifyShoesList;	//���ͨ�����������ҵ���Ь��
	private List<Shoes> brandShoesList;	//���ͨ�����������ҵ���Ь��
	private List<Shoes> testList;
	private List<Image> imageList;
	//����չʾ
	private List<showShoes> showShoesList;//classify-find ����Ҫ�����չʾ
	private showShoes goodsIdSearchShow;   //�������������չʾ
	private ShowDetail showDetail; //��ʾЬ����ϸ��Ϣ

	public ShowDetail getShowDetail() {
		return showDetail;
	}

	public void setShowDetail(ShowDetail showDetail) {
		this.showDetail = showDetail;
	}

	public showShoes getGoodsIdSearchShow() {
		return goodsIdSearchShow;
	}

	public void setGoodsIdSearchShow(showShoes goodsIdSearchShow) {
		this.goodsIdSearchShow = goodsIdSearchShow;
	}

	public List<showShoes> getShowShoesList() {
		return showShoesList;
	}

	public void setShowShoesList(List<showShoes> showShoesList) {
		this.showShoesList = showShoesList;
	}

	public String getCkSeason() {
		return ckSeason;
	}

	public void setCkSeason(String ckSeason) {
		this.ckSeason = ckSeason;
	}

	public String getCkPrice() {
		return ckPrice;
	}

	public void setCkPrice(String ckPrice) {
		this.ckPrice = ckPrice;
	}

	public String getCkHotPoint() {
		return ckHotPoint;
	}

	public void setCkHotPoint(String ckHotPoint) {
		this.ckHotPoint = ckHotPoint;
	}

	public String getCkHeelHeight() {
		return ckHeelHeight;
	}

	public void setCkHeelHeight(String ckHeelHeight) {
		this.ckHeelHeight = ckHeelHeight;
	}

	public String getCkFashion() {
		return ckFashion;
	}

	public void setCkFashion(String ckFashion) {
		this.ckFashion = ckFashion;
	}

	public String getCkOccasion() {
		return ckOccasion;
	}

	public void setCkOccasion(String ckOccasion) {
		this.ckOccasion = ckOccasion;
	}

	public String getCkStyle() {
		return ckStyle;
	}

	public void setCkStyle(String ckStyle) {
		this.ckStyle = ckStyle;
	}

	public String getCkToe() {
		return ckToe;
	}

	public void setCkToe(String ckToe) {
		this.ckToe = ckToe;
	}

	public String getCkHeelStyle() {
		return ckHeelStyle;
	}

	public void setCkHeelStyle(String ckHeelStyle) {
		this.ckHeelStyle = ckHeelStyle;
	}

	public String getCkLeather() {
		return ckLeather;
	}

	public void setCkLeather(String ckLeather) {
		this.ckLeather = ckLeather;
	}

	public String getCkSole() {
		return ckSole;
	}

	public void setCkSole(String ckSole) {
		this.ckSole = ckSole;
	}

	public String getCkUpperHeight() {
		return ckUpperHeight;
	}

	public void setCkUpperHeight(String ckUpperHeight) {
		this.ckUpperHeight = ckUpperHeight;
	}

	public String getCkBrand() {
		return ckBrand;
	}

	public void setCkBrand(String ckBrand) {
		this.ckBrand = ckBrand;
	}

	public String getSearchStr() {
		return searchStr;
	}

	public void setSearchStr(String searchStr) {
		this.searchStr = searchStr;
	}
	
	
	//������
	public String test() throws Exception {
		ShoesDAO shoesDAO = new ShoesDAO();
		testList = shoesDAO.test();
		ImageDAO imgDao = new ImageDAO();
		imageList = imgDao.findByGoodsId("-2");	
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("testList", imageList);
		return SUCCESS;
	}
	
	//����������һ��ֻ��������һ�����š�
	public String searchGoods() throws Exception {		
		//System.out.println("�����Ļ���searchStr == "+searchStr);
		OnlineStoreDAO olsDao=new OnlineStoreDAO();
		OnlineStore ols = new OnlineStore();
		ols = olsDao.findTopOneByGoodsId(searchStr);
		
		if(ols == null)
			return ERROR;
		
		goodsIdSearchShow = new showShoes();  //����չʾ�ĳ�ʼ��
		goodsIdSearchShow.generateClass(ols.getOnlineUrl());
		
		return SUCCESS;
	}
	
	
	/**
	 * �������form�ύ,��ôֻ��֧���ύ��Ԫ�زſ��Ա����ݵ���̨,
	 * ���������<input name="..." type="hidden">����ֵ,��select��ֵ��hidden��value
	 */

	
	//Ь������ҳ��
	public String goodsDetail() throws Exception {
		// action �л�� request		
		HttpServletRequest request = ServletActionContext.getRequest();	
		//�ж��Ƿ��½ �����½���ȡ���û��Ը�Ь�ӵĵ����ղ����
		HttpSession session = ServletActionContext.getRequest().getSession();		
		int userId =0 ;
		if (session.getAttribute("uid")!=null) {
			String userIdS = (String)session.getAttribute("uid");
			System.out.println(userIdS);
//			userId = Integer.parseInt(userIdS);
			userId = Integer.valueOf(userIdS).intValue();
		}
	    System.out.println(userId);
		
		String gId=request.getParameter("gid"); //Ҫ��ʾ�����Ь��Id	
		showDetail = new ShowDetail(); //������ʾ�����ʼ��
		showDetail.generateClass(gId,userId);
		System.out.println(showDetail.getIsLiked());
		System.out.println(showDetail.getNumsOfLike());
		return SUCCESS;
	}
	
	//�����������
	public String classifyFindGoods() throws Exception {	
		// action �л�� request
        HttpServletRequest request = ServletActionContext.getRequest();
        String pageNowS = "1";//Ĭ��ҳ��Ϊ1��
        if(request.getParameter("pageNow")!=null){
        	pageNowS = request.getParameter("pageNow");
        }
        pageNow = Integer.parseInt(pageNowS);
        //����ǵ�һҳ ��ôû����һҳ
        if (pageNow==1) {
			hasPrePage = false;
		}else {
		    hasPrePage = true;
		}
        System.out.println("pageNow="+pageNow);
		classifyShoesList = new ArrayList<Shoes>();
		Map<String, String[]> classifyMap = null; //�����������
		HttpSession session = ServletActionContext.getRequest().getSession();
		String type = "search";
		if (request.getParameter("page")!=null) {
			type = request.getParameter("page");
		}
		if (type.equals("page")) {
			classifyMap = (Map<String, String[]>)session.getAttribute("searchMap");
		}else {
			if (getClassifyMap()!=null) {
				classifyMap=getClassifyMap();
				System.out.println("classifyMap.size() == "+classifyMap.size());
				session.setAttribute("searchMap", classifyMap);
			}else {
				classifyMap = (Map<String, String[]>)session.getAttribute("searchMap");
				System.out.println("calssiy map ��������");
			}
			
		}
		//test ok
		
		//ȥ�������ݿ⣬�õ�������ʾ��Ь���б�
		ClassifyFindDao classifydao = new ClassifyFindDao();
		bArray = new ArrayList<Boolean>();
		classifyShoesList=classifydao.classifyFindSheosN(classifyMap, pageNow,bArray);
		//��Ϊjavaû�����ô��ݣ����������ñ����������������booleanֵ
		hasNextPage = bArray.get(0);	
		showShoesList = new ArrayList<showShoes>();//����չʾ�ĳ�ʼ��
		OnlineStoreDAO olsDao=new OnlineStoreDAO();//�����ҵ�onlineStore��List
		List<OnlineStore> tmpOlsList;//������ȡonlineStore��List

		//���ж��Ƿ�Ϊnull
		if(classifyShoesList!=null)
		{
		for(Shoes tmp:classifyShoesList){
			tmpOlsList = olsDao.findByGoodsId(tmp.getGoodsId());
			    OnlineStore tmp2 = tmpOlsList.get(0);
				showShoes tmpShowShoes = new showShoes();//չʾ����ʱʵ���࣬showShoesList�Ὣ��add��ȥ
				tmpShowShoes.generateClass(tmp2.getOnlineUrl());
				showShoesList.add(tmpShowShoes);				
		    //}
		}
		}
		//������ҳ��ʾδ�ҵ���Ҫ��Ь�ӵ��ж�
		showShoesListSize = showShoesList.size();
		System.out.println("showShoesListSize ==" + showShoesListSize);
		
		ServletActionContext.getRequest().getSession().setAttribute("showShoesList",showShoesList);
/*		sessionList.setAttribute("showShoesList ",showShoesList); */
		
		return SUCCESS;
	}
	
	private Map<String, String[]> getClassifyMap() {
		Map<String, String[]> tmpMap = new HashMap<String, String[]>();//��ʱ�����������
		if (ckBrand==null) {
			return null;
		}
		
		if(ckBrand.length()!=0)
		{
			//System.out.println("ckBrand == "+ckBrand);
			tmpMap.put("ckBrand", ckBrand.split(","));
		}
		
		//һ��һ��ϵ
		if (ckSeason==null)
			ckSeason = "";

		if(ckSeason.length()!=0)
			//ckSeason��Ϊ�գ��û�ѡ����ckSeason
			tmpMap.put("ckSeason", ckSeason.split(","));
		
		if (ckPrice==null)
			ckPrice = "";

		if(ckPrice.length()!=0)
			tmpMap.put("ckPrice", ckPrice.split(","));

		if (ckHeelHeight==null)
			ckHeelHeight = "";

		if(ckHeelHeight.length()!=0)
			tmpMap.put("ckHeelHeight", ckHeelHeight.split(","));
		
		if (ckFashion==null)
			ckFashion = "";

		if(ckFashion.length()!=0)
			tmpMap.put("ckFashion", ckFashion.split(","));
		
		if (ckOccasion==null)
			ckOccasion = "";

		if(ckOccasion.length()!=0)
			tmpMap.put("ckcOccasion", ckOccasion.split(","));
		
		if (ckStyle==null)
			ckStyle = "";

		if(ckStyle.length()!=0)
			tmpMap.put("ckStyle", ckStyle.split(","));
		
		if (ckToe==null)
			ckToe = "";

		if(ckToe.length()!=0)
			tmpMap.put("ckToe", ckToe.split(","));
		
		if (ckHeelStyle==null)
			ckHeelStyle = "";

		if(ckHeelStyle.length()!=0)
			tmpMap.put("ckHeelStyle", ckHeelStyle.split(","));
		
		if (ckLeather==null)
			ckLeather = "";

		if(ckLeather.length()!=0)
			tmpMap.put("ckLeather", ckLeather.split(","));
		
		if (ckSole==null)
			ckSole = "";

		if(ckSole.length()!=0)
			tmpMap.put("ckSole", ckSole.split(","));
		
		if (ckUpperHeight==null)
			ckUpperHeight = "";
		
		if(ckUpperHeight.length()!=0)
			tmpMap.put("ckUpperHeight", ckUpperHeight.split(","));
		
		return tmpMap;
	}

	public int getPageNow() {
		return pageNow;
	}

	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}
	
}
