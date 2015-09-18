<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	session.removeAttribute("user"); 
 	session.removeAttribute("uid");  
	session.removeAttribute("ublance");
	session.removeAttribute("uemail");
	session.removeAttribute("upassword");
	session.removeAttribute("utel");
	response.sendRedirect("login.jsp"); 
%>

