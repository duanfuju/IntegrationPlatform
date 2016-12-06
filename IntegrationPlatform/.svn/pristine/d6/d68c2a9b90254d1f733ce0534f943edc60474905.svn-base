<%@page import="org.springframework.security.web.WebAttributes"%>
<%@page import="com.bstek.bdf2.core.context.ContextHolder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="edge" />
 <title>浦口气象集成平台</title>
 	<script type="text/javascript" src="js/jquery-1.8.2.js"></script>
	<link rel="stylesheet" type="text/css" href="css/login.css"/>
    <script>
	    function mySubmit(){
	        var username=document.getElementById('username').value;
	        var pwd=document.getElementById('pwd').value;
	        if(username==""){
	            alert("用户名不能为空!");
	            document.getElementById('username').focus();
	            return;
	        }
	        if(pwd==""){
	            alert("密码不能为空!");
	            document.getElementById('pwd').focus();
	            return;
	        }
	        //存储登录的用户名密码
	        sessionStorage.pwd=pwd;
	        sessionStorage.username=username;
	        document.getElementById('myform').submit();
	    }
	    function myReset(){
	        document.getElementById('username').value="";
	        document.getElementById('pwd').value="";
	    }
    </script>
   
</head>
<body>
<%!
	private String getAuthenticationExceptionMessage(){
	    Exception exp=(Exception)ContextHolder.getHttpSession().getAttribute(WebAttributes.AUTHENTICATION_EXCEPTION);
	    if(exp==null){
	        exp=(Exception)ContextHolder.getRequest().getAttribute(WebAttributes.AUTHENTICATION_EXCEPTION);
	    }
	    if(exp!=null){
	        return exp.getMessage();
	    }
	    return null;
	}
%>
<%
	String error=getAuthenticationExceptionMessage();
%>
<script type="text/javascript">
	$(document).ready(function(){
		if ("<%=error%>"=="Bad credentials") {
			alert("账户名或密码输入错误");
		}
	});
</script>
<form action="security_check_" id="myform" method="post">
	<div id="login">
		<div class="login">
	    	<ul>
	        	<li><input id="username"  class="inptu01" name="username_" placeholder="请输入用户名" ></li>
	            <li><input id="pwd"  type="password" name="password_" class="inptu02" placeholder="请输入密码" /></li>
	            <li><input  class=" btn01" onclick="mySubmit()"  type="button" value=""/>&nbsp;&nbsp;&nbsp;<input class=" btn02" onclick="myReset()"  type="button" value=""/></li>
	        </ul>
	    </div>
	</div>
</form>
</body>
</html>