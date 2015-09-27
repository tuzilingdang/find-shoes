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
	//�û���¼
	public String login() throws Exception{
		String pwd=user.getPassword();	
		UsersDAO userDao =new UsersDAO();
		PrivilegeDAO pDao =new PrivilegeDAO();
		System.out.println(user.getUserId());
		System.out.println(user.getPassword());
		//System.out.println("���ݿ�����"+userDao.findById(user.getUserId()).getPassword());
		System.out.println("��������"+MD5Util.encode2hex(pwd));
		if (user.getUserId()==""){	
			System.out.println("nulll");
			errorInfo="�������û�����";
			return ERROR;
		}
/*		else if(!userDao.userId_exist(user.getUserId())){
			errorInfo="�û������ڣ�";
			return ERROR;
		}*/
		else if( userDao.findById(user.getUserId())==null )
		{
			System.out.print("�û���������");
			errorInfo="�û��������ڣ�";
			return ERROR;
		}else if(!userDao.findById(user.getUserId()).getPassword().equals(MD5Util.encode2hex(pwd))){
			errorInfo="�û��������������";
			return ERROR;
		}
		else if (user.getUserId()==""){	
			errorInfo="�������û�����";
			return ERROR;
		}
		else{
			//�ɹ���¼���룬session��д��uid��uprivilege
			HttpSession session=ServletActionContext.getRequest().getSession();
			session.setAttribute("user", user);
			session.setAttribute("uid", user.getUserId());
			session.setAttribute("ublance", user.getBalance());
			session.setAttribute("uemail", user.getEmail());
			session.setAttribute("upassword", user.getPassword());
			session.setAttribute("utel", user.getTelephone());
			
			PrivilegeId pid=new PrivilegeId(user.getUserId(),"administrator","N");
			session.setAttribute("uprivilege", pDao.findById(pid));  //�����administrator�Ϳ����ҵ�
			
			user=userDao.findById(user.getUserId());
			user.setAccesstime(new Timestamp(new Date().getTime()));  //�����¼ʱ��
			userDao.save(user);
			
			//System.out.println("��¼�ɹ�");    		
			return SUCCESS;
		}
	}
	
	
	//�û�ע��
	public String regist() throws Exception{
		UsersDAO userDao=new UsersDAO(); 
		if(user.getNick()!=null && user.getPassword()!=null ){
/*			if(!(user.getTelephone()==null&&user.getEmail()==null)){
				if(userDao.userId_exist(user.getUserId())){
					errorInfo="��id�ѱ�ע��";
					return ERROR;
				}
			else if (userDao.userEmail_exist(user.getEmail())){
					errorInfo="�������ѱ�ע��";
					return ERROR;	
				}
				else if (userDao.userTel_exist(user.getTelephone())){
					errorInfo="���ֻ��ѱ�ע��";
					return ERROR;	
				}
				else {	*/			
/*			System.out.println("ע������"+user.getPassword());
			System.out.println("��������"+MD5Util.encode2hex(user.getPassword()));*/
					//��д�û�������Ϣ
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
  
        int rannum = (int) (random.nextDouble() * (99 - 10 + 1)) + 10;// ��ȡ2λ�����  
        String ranstring =  str + String.valueOf(rannum);
        return ranstring;// ��ǰʱ��  
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
