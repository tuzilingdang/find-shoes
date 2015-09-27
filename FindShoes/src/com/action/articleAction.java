package com.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.dao.ArticleDAO;
import com.model.Article;
import com.model.showArticle;
import com.opensymphony.xwork2.ActionSupport;

public class articleAction extends ActionSupport{
      
	private ArrayList<showArticle> showArticlesList;
	private showArticle showArticleBean;

	

	public showArticle getShowArticleBean() {
		return showArticleBean;
	}

	public void setShowArticleBean(showArticle showArticleBean) {
		this.showArticleBean = showArticleBean;
	}

	public ArrayList<showArticle> getShowArticlesList() {
		return showArticlesList;
	}

	public void setShowArticlesList(ArrayList<showArticle> showArticlesList) {
		this.showArticlesList = showArticlesList;
	}
       //获取article列表
       public String showArticle() throws  Exception {
    	ArticleDAO articleDAO = new ArticleDAO();
    	//获取用户id，如果用户没有登录，则设置用户id为-1；
    	HttpSession session = ServletActionContext.getRequest().getSession();
    	String userIdS = "-1";
    	if (session.getAttribute("uid")!=null) {
    		userIdS = (String)session.getAttribute("uid");
		} 
    	int userId = Integer.parseInt(userIdS);
    	//System.out.println(userId);
    	//先获取所有的文章，然后分别为每个文章生成相应的showArticle类，再放入showArticlesList中返回
    	List<Article> arList = articleDAO.findAll();
    	//System.out.println(arList.size());
    	showArticle showarticle = new showArticle();
    	showArticlesList = new ArrayList<showArticle>();
    	for (int i = 0; i < arList.size(); i++) {
			showarticle = showarticle.generateClass(arList.get(i),userId);
			//System.out.println(showarticle.getIsLiked());
			//System.out.println(showarticle.getArticle().getTitle());
			showArticlesList.add(showarticle);
			//System.out.println("showArticlesList:"+showArticlesList.size());
		}
		return SUCCESS;
	}
       
       
       public String showArticleShoes() throws Exception {
    	   //获取文章的id和判断用户是否登陆
		   HttpServletRequest request = ServletActionContext.getRequest();
    	   String articleIds = request.getParameter("articleId");  	   
    	   int articleId = Integer.parseInt(articleIds);
    	   HttpSession session = ServletActionContext.getRequest().getSession();
           String userIdS = "-1";
           if (session.getAttribute("uid")!=null) {
       	        userIdS = (String)session.getAttribute("uid");
   		    } 
           int userId = Integer.parseInt(userIdS);  	
           //System.out.println("articleId:"+articleId);
          
           //获取showarticle对象
    	   ArticleDAO articleDAO = new ArticleDAO();
    	   Article a = articleDAO.findById(articleId);
    	   showArticleBean = new showArticle().generateClass(a, userId);   
    	   System.out.println(showArticleBean.getArticle().getTitle());
    	   return SUCCESS;
	}
}
