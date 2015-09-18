package com.action;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.dao.ArticalCollectionDAO;
import com.dao.ArticalLikesDAO;
import com.dao.OnlineStoreDAO;
import com.dao.ShoesCollectionDAO;
import com.dao.ShoesLikesDAO;
import com.dao.UsersDAO;
import com.model.ArticalCollection;
import com.model.ArticalLikes;
import com.model.Image;
import com.model.ShoesCollection;
import com.model.ShoesLikes;
import com.model.showShoesImg;
import com.opensymphony.xwork2.ActionSupport;


public class ajaxAction extends ActionSupport{
	
	private List<Image> imageList;
	private boolean loadSuccess; 
	//用于存储点赞和收藏的操作结果
	private boolean result;
	
	private List<String> imgUrlList;
	private String test;
	private List<showShoesImg> showShoesImgsList;
	//用于注册检测用户名是否存在
	private boolean userIdExsited;
	
	
	public boolean isResult() {
		return result;
	}

	public void setResult(boolean result) {
		this.result = result;
	}

	public List<showShoesImg> getShowShoesImgsList() {
		return showShoesImgsList;
	}

	public void setShowShoesImgsList(List<showShoesImg> showShoesImgsList) {
		this.showShoesImgsList = showShoesImgsList;
	}

	public List<String> getImgUrlList() {
		return imgUrlList;
	}

	public void setImgUrlList(List<String> imgUrlList) {
		this.imgUrlList = imgUrlList;
	}
	
	public String getTest() {
		return test;
	}

	public void setTest(String test) {
		this.test = test;
	}

	public boolean getLoadSuccess() {
		return loadSuccess;
	}

	public void setLoadSuccess(boolean loadSuccess) {
		this.loadSuccess = loadSuccess;
	}

	public List<Image> getImageList() {
		return imageList;
	}

	public void setImageList(List<Image> imageList) {
		this.imageList = imageList;
	}

	public String loadImgUrl() throws Exception{
		//获取品牌
		HttpServletRequest request = ServletActionContext.getRequest();
		String brand = request.getParameter("brand");
		brand = java.net.URLDecoder.decode(brand,"UTF-8"); 
		OnlineStoreDAO onlineStoreDAO = new OnlineStoreDAO();
		showShoesImgsList = onlineStoreDAO.getImgInfo(brand);
		System.out.println("showShoesImgsList.get(0).getImg_url()"+showShoesImgsList.get(0).getImg_url());
		//JSONArray.fromObject(imgUrlList);
		//test = "woaini";
		return SUCCESS;
	}
	
    public boolean isUserIdExsited() {
		return userIdExsited;
	}

	public void setUserIdExsited(boolean userIdExsited) {
		this.userIdExsited = userIdExsited;
	}

	public String checkUserId() throws Exception {
    	HttpServletRequest request = ServletActionContext.getRequest();
		String value = request.getParameter("value");
		String type = request.getParameter("Type");
		//System.out.print(userId);
		//System.out.println(type);
		UsersDAO usersDAO = new UsersDAO();
		if(type.equals("userId")){
			if (usersDAO.findById(value)==null) {
				userIdExsited = false;
			}else {
				userIdExsited = true;
			}
		}else if (type.equals("tel")) {
			if (usersDAO.findByTelephone(value).size()==0){
				userIdExsited = false;
			}else {
				userIdExsited = true;
				//System.out.println(usersDAO.findByTelephone(value).size());
			}
				
		}else if (type.equals("email")) {
			if (usersDAO.findByEmail(value).size()==0){
				userIdExsited = false;
			}else {
				userIdExsited = true;
				//System.out.println(usersDAO.findByTelephone(value).size());
			}
		}  			
		return SUCCESS;
	}
   
	//操作点赞行为
	public String like() throws Exception{
		//获取要点赞的文章id和用户id
		HttpServletRequest request = ServletActionContext.getRequest();
		String articleIdS = request.getParameter("articleId");
		int articleId = Integer.parseInt(articleIdS);
		HttpSession session=ServletActionContext.getRequest().getSession();
		String userIdS = (String)session.getAttribute("uid");
		int userId = Integer.parseInt(userIdS);		
		System.out.println(userIdS);
		//System.out.println(articleIdS);
		
		//将点赞的写入数据库
		ArticalLikes articalLikes = new ArticalLikes();
		articalLikes.setArticalId(articleId);
		articalLikes.setUserId(userId);
		articalLikes.setDefunct("N");
		articalLikes.setTime(new Timestamp(new Date().getTime()));
		ArticalLikesDAO articalLikesDAO = new ArticalLikesDAO();
		articalLikesDAO.save(articalLikes);
		result = true;
		return SUCCESS;
	}
	
	//取消点赞
	public String unlike() throws Exception{
		//获取要取消点赞的文章id和用户id
		
		HttpServletRequest request = ServletActionContext.getRequest();
		String articleIdS = request.getParameter("articleId");
		int articleId = Integer.parseInt(articleIdS);
		//System.out.println("articleId for cancel:"+articleIdS);
		HttpSession session = ServletActionContext.getRequest().getSession();
		String userIdS = (String)session.getAttribute("uid");
		int userId = Integer.parseInt(userIdS);		
		
		//讲点赞从数据库里删除
		ArticalLikesDAO articalLikesDAO = new ArticalLikesDAO();
		ArticalLikes articalLikes = articalLikesDAO.getArticleByIds(articleId, userId);
		articalLikesDAO.delete(articalLikes);
		result = true;
		return SUCCESS;
	}
     
	//收藏
	public String collection() throws Exception{
		//获取要收藏的文章id和用户id
		HttpServletRequest request = ServletActionContext.getRequest();
		String articleIdS = request.getParameter("articleId");
		int articleId = Integer.parseInt(articleIdS);
		//System.out.println("articleId for collection:"+articleIdS);
		HttpSession session = ServletActionContext.getRequest().getSession();
		String userIdS = (String)session.getAttribute("uid");
		int userId = Integer.parseInt(userIdS);	
		
		//将收藏的写入数据库
		ArticalCollection articalCollection = new ArticalCollection();
		articalCollection.setArticalId(articleId);
		articalCollection.setUserId(userId);
		articalCollection.setTime(new Timestamp(new Date().getTime()));
		articalCollection.setDefunct("N");
		ArticalCollectionDAO articalCollectionDAO = new ArticalCollectionDAO();
		articalCollectionDAO.save(articalCollection);
		result = true;
		
		return SUCCESS;
	}
	
	//取消收藏
	public String uncollection() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		String articleIdS = request.getParameter("articleId");
		int articleId = Integer.parseInt(articleIdS);
		//System.out.println("articleId for uncollection:"+articleIdS);
		HttpSession session = ServletActionContext.getRequest().getSession();
		String userIdS = (String)session.getAttribute("uid");
		int userId = Integer.parseInt(userIdS);	
		
		ArticalCollectionDAO articalCollectionDAO = new ArticalCollectionDAO();
		ArticalCollection articalCollection = articalCollectionDAO.getArticleByIds(articleId, userId);
		articalCollectionDAO.delete(articalCollection);
		result = true;
		
		return SUCCESS;
	}
	
	public String shoesLike() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		String shoesId = request.getParameter("shoesId");
		//int shoesId = Integer.parseInt(shoesIdS);
		System.out.println(shoesId);
		HttpSession session = ServletActionContext.getRequest().getSession();
		String userIdS = (String)session.getAttribute("uid");
		int userId = Integer.parseInt(userIdS);	
		
		//存入数据库
		ShoesLikes shoesLikes = new ShoesLikes();
		shoesLikes.setUserId(userId);
		shoesLikes.setGoodsId(shoesId);
		shoesLikes.setDefunct("N");
		shoesLikes.setTime(new Timestamp(new Date().getTime()));
		ShoesLikesDAO shoesLikesDAO = new ShoesLikesDAO();
		shoesLikesDAO.save(shoesLikes);
		
		result = true;
		return SUCCESS;
	}
	
	public String shoesUnlike() throws Exception{
		HttpServletRequest request = ServletActionContext.getRequest();
		String shoesId = request.getParameter("shoesId");
		//int shoesId = Integer.parseInt(shoesIdS);
		System.out.println(shoesId);
		HttpSession session = ServletActionContext.getRequest().getSession();
		String userIdS = (String)session.getAttribute("uid");
		int userId = Integer.parseInt(userIdS);	
		
		//从数据库删除
		ShoesLikesDAO shoesLikesDAO = new ShoesLikesDAO();
		ShoesLikes shoesLikes = shoesLikesDAO.getShoesLikeByIds(shoesId, userId);
		shoesLikesDAO.delete(shoesLikes);
		
		result = true;
		return SUCCESS;
	}
	
	public String shoesCollection() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		String shoesId = request.getParameter("shoesId");
		//int shoesId = Integer.parseInt(shoesIdS);
		System.out.println(shoesId);
		HttpSession session = ServletActionContext.getRequest().getSession();
		String userIdS = (String)session.getAttribute("uid");
		int userId = Integer.parseInt(userIdS);	
		
		//存入数据库
		ShoesCollection shoesCollection = new ShoesCollection();
		shoesCollection.setUserId(userId);
		shoesCollection.setGoodsId(shoesId);
		shoesCollection.setDefunct("N");
		shoesCollection.setTime(new Timestamp(new Date().getTime()));
		ShoesCollectionDAO shoesCollectionDAO = new ShoesCollectionDAO();
		shoesCollectionDAO.save(shoesCollection);
		
		result = true;
		return SUCCESS;
	}
	
	public String shoesUncollection() throws Exception{
		HttpServletRequest request = ServletActionContext.getRequest();
		String shoesId = request.getParameter("shoesId");
		//int shoesId = Integer.parseInt(shoesIdS);
		System.out.println(shoesId);
		HttpSession session = ServletActionContext.getRequest().getSession();
		String userIdS = (String)session.getAttribute("uid");
		int userId = Integer.parseInt(userIdS);	
		
		//从数据库删除
		ShoesCollectionDAO shoesCollectionDAO = new ShoesCollectionDAO();
		ShoesCollection shoesCollection = shoesCollectionDAO.getShoesColByIds(shoesId, userId);
		shoesCollectionDAO.delete(shoesCollection);
		
		result = true;
		return SUCCESS;
	}
	
}
