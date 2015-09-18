package com.action;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.dao.PrivilegeDAO;
import com.dao.UsersDAO;
import com.model.PrivilegeId;
import com.model.Users;
import com.opensymphony.xwork2.ActionSupport;
import com.util.MD5Util;
import java.util.Random;  

public class userAction extends ActionSupport{
	
	private Users user;
	private String errorInfo;

	public String getErrorInfo() {
		return errorInfo;
	}

	public void setErrorInfo(String errorInfo) {
		this.errorInfo = errorInfo;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}
	
	
	
	
	public String logout() throws Exception{
		HttpSession session=ServletActionContext.getRequest().getSession();
//		session.removeAttribute("user");
//		session.removeAttribute("uid");
//		session.removeAttribute("uid");
		session.invalidate();
		return SUCCESS;
	}
	//用户登录
	public String login() throws Exception{
		String pwd=user.getPassword();	
		UsersDAO userDao =new UsersDAO();
		PrivilegeDAO pDao =new PrivilegeDAO();
		System.out.println(user.getUserId());
		System.out.println(user.getPassword());
		//System.out.println("数据库密码"+userDao.findById(user.getUserId()).getPassword());
		System.out.println("输入密码"+MD5Util.encode2hex(pwd));
		if (user.getUserId()==""){	
			System.out.println("nulll");
			errorInfo="请输入用户名！";
			return ERROR;
		}
/*		else if(!userDao.userId_exist(user.getUserId())){
			errorInfo="用户不存在！";
			return ERROR;
		}*/
		else if( userDao.findById(user.getUserId())==null )
		{
			System.out.print("用户名不存在");
			errorInfo="用户名不存在！";
			return ERROR;
		}else if(!userDao.findById(user.getUserId()).getPassword().equals(MD5Util.encode2hex(pwd))){
			errorInfo="用户名或者密码错误！";
			return ERROR;
		}
		else if (user.getUserId()==""){	
			errorInfo="请输入用户名！";
			return ERROR;
		}
		else{
			//成功登录进入，session中写入uid和uprivilege
			HttpSession session=ServletActionContext.getRequest().getSession();
			session.setAttribute("user", user);
			session.setAttribute("uid", user.getUserId());
			session.setAttribute("ublance", user.getBalance());
			session.setAttribute("uemail", user.getEmail());
			session.setAttribute("upassword", user.getPassword());
			session.setAttribute("utel", user.getTelephone());
			
			PrivilegeId pid=new PrivilegeId(user.getUserId(),"administrator","N");
			session.setAttribute("uprivilege", pDao.findById(pid));  //如果是administrator就可以找到
			
			user=userDao.findById(user.getUserId());
			user.setAccesstime(new Timestamp(new Date().getTime()));  //保存登录时间
			userDao.save(user);
			
			//System.out.println("登录成功");    		
			return SUCCESS;
		}
	}
	
	
	//用户注册
	public String regist() throws Exception{
		UsersDAO userDao=new UsersDAO(); 
		if(user.getNick()!=null && user.getPassword()!=null ){
/*			if(!(user.getTelephone()==null&&user.getEmail()==null)){
				if(userDao.userId_exist(user.getUserId())){
					errorInfo="该id已被注册";
					return ERROR;
				}
			else if (userDao.userEmail_exist(user.getEmail())){
					errorInfo="该邮箱已被注册";
					return ERROR;	
				}
				else if (userDao.userTel_exist(user.getTelephone())){
					errorInfo="该手机已被注册";
					return ERROR;	
				}
				else {	*/			
/*			System.out.println("注册密码"+user.getPassword());
			System.out.println("输入密码"+MD5Util.encode2hex(user.getPassword()));*/
					//填写用户其他信息
					String userid = getRandomUserId();
					System.out.println(userid);
					user.setUserId(getRandomUserId());
					user.setBalance(0.0);
					user.setIp(userDao.getIp());
					user.setDefunct("N");
					user.setVip("N");
					Timestamp ts = new Timestamp(new Date().getTime());
					user.setAccesstime(ts);
					user.setPassword(MD5Util.encode2hex(user.getPassword()));
					user.setRegTime(ts);		
					user.setTelephone(user.getTelephone());
					userDao.save(user);				
					
					HttpSession session=ServletActionContext.getRequest().getSession();
					session.setAttribute("user", user);
					session.setAttribute("uid", user.getUserId());
					session.setAttribute("ublance", user.getBalance());
					
					
					return SUCCESS;	
		}
		else 
			return ERROR;
		
		
	}
	
	
    public static String getRandomUserId() {  
    	  
        SimpleDateFormat simpleDateFormat;  
  
        simpleDateFormat = new SimpleDateFormat("yyyyMMdd");  
  
        Date date = new Date();  
  
        String str = simpleDateFormat.format(date);  
  
        Random random = new Random();  
  
        int rannum = (int) (random.nextDouble() * (99 - 10 + 1)) + 10;// 获取2位随机数  
        String ranstring =  str + String.valueOf(rannum);
        return ranstring;// 当前时间  
    }  
	
	public String personal() throws Exception {
		 HttpSession session = ServletActionContext.getRequest().getSession();
		 if (session.getAttribute("user")!=null) {
			return SUCCESS;
		}else {
			return ERROR;
		}
	}
	

}
