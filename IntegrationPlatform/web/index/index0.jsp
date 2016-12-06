<%@page import="java.util.Map"%>
<%@page import="cn.com.oking.pt.action.getJwgkData"%>
<%@page import="cn.com.oking.pt.entity.PtSysLinkWithHav"%>
<%@page import="cn.com.oking.pt.entity.PtSysLink"%>
<%@page import="java.util.List"%>
<%@page import="cn.com.oking.pt.action.PtUserCfgAction"%>
<%@page import="com.bstek.bdf2.core.context.ContextHolder"%>
<%@page import="com.bstek.dorado.core.Configure"%>
<%@page import="com.bstek.bdf2.core.business.IUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="edge" />
 <title>浦口气象集成平台</title>
 <script type="text/javascript" src="../js/jquery-1.8.2.js"></script>
 <script type="text/javascript" src="../js/jquery_ui/jquery-ui.js"></script>
 <script type="text/javascript" src="../js/index.js"></script>
 <script type="text/javascript" src="../js/lanrenzhijia.js"></script>
 <link rel="stylesheet" type="text/css" href="../js/jquery_ui/jquery-ui.css"/>
 <link rel="stylesheet" type="text/css" href="../css/index.css"/>
 <link rel="stylesheet" type="text/css" href="../css/lanrenzhijia.css"/>
    
<%
	//获取登录的用户的信息
	IUser user = ContextHolder.getLoginUser();
	String username_=user.getUsername();
	String username=user.getCname();
	//根据登录的用户去查询集成平台的数据
	PtUserCfgAction action = (PtUserCfgAction) ContextHolder.getApplicationContext().getBean(PtUserCfgAction.class);
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
</head>
<body>

		
    
   		<div class="box">
   		<img src="../images/background-image-index.png" height="100%" width="100%"/>    
	    <script type="text/javascript">
		$(function(){
			//图片设置整个浏览器的大小
		    $('.box').height($(window).height());
		    $('.box').width($(window).width());
		});
		</script>
   		<%	//根据用户在页面中显示
			List<PtSysLink> list=action.findByName(username_);
			if(list!=null){
		%>
			<div class="blk_18"> <a class="LeftBotton" onmousedown="ISL_GoUp_1()" onmouseup="ISL_StopUp_1()" onmouseout="ISL_StopUp_1()" href="javascript:void(0);" target="_self"></a>
			  <div class="pcont" id="ISL_Cont_1">
			    <div class="ScrCont">
			      <div id="List1_1">
			        <!-- piclist begin -->
		<%
				for (PtSysLink link : list) {
		%>
				<a class="pl" href="#" onclick="linkUrl('<%=link.getSysAddress()%>','<%=link.getUserName()%>','<%=link.getUserPwd()%>')" ><img src="<%=link.getImgUrl() %>" alt="" width="154" height="200"/><%=link.getSysSimpleName() %></a>
		<%
				}
		%>
					<!-- piclist end -->
			      </div>
			      <div id="List2_1"></div>
			    </div>
			  </div>
			 <a class="RightBotton" onmousedown="ISL_GoDown_1()" onmouseup="ISL_StopDown_1()" onmouseout="ISL_StopDown_1()" href="javascript:void(0);" target="_self"></a> </div>
		<%
			}
		%>  
			
			
		<!-- News Start -->
			<%
				getJwgkData jwgkData = (getJwgkData) ContextHolder.getApplicationContext().getBean(getJwgkData.class);
				List<Map<String, Object>> list_jwgk=jwgkData.getDataNews();
				if(list_jwgk!=null){
			%>
	
					<div class="news_left"  >
						<div class="news_left_element"><a target="_blank" href="http://218.2.99.66/jwgk/web/wz/wzshow.jsp?dz=<%=list_jwgk.get(0).get("fjbm") %>&&title=<%=list_jwgk.get(0).get("wzbt")%>&&time=<%=list_jwgk.get(0).get("fbsj").toString().substring(0,10)%>" >1.<%=list_jwgk.get(0).get("wzbt") %></a></div>
						<div class="news_left_element"><a target="_blank" href="http://218.2.99.66/jwgk/web/wz/wzshow.jsp?dz=<%=list_jwgk.get(1).get("fjbm") %>&&title=<%=list_jwgk.get(1).get("wzbt")%>&&time=<%=list_jwgk.get(1).get("fbsj").toString().substring(0,10)%>" >2.<%=list_jwgk.get(1).get("wzbt") %></a></div>
						<div class="news_left_element"><a target="_blank" href="http://218.2.99.66/jwgk/web/wz/wzshow.jsp?dz=<%=list_jwgk.get(2).get("fjbm") %>&&title=<%=list_jwgk.get(2).get("wzbt")%>&&time=<%=list_jwgk.get(2).get("fbsj").toString().substring(0,10)%>" >3.<%=list_jwgk.get(2).get("wzbt") %></a></div>
						<a target="_blank" href="http://218.2.99.66/pkqx/dorado/jwgk/index.jsp" style="font-size:15px;font-weight:bold;text-align:center;line-height:60px;width: 80px;height:50px;position: absolute;top:45%;left: 75%">
							更多&gt;&gt;
						</a>
					</div>
					<div class="news_right">
						<div class="news_right_element"><a target="_blank" href="http://218.2.99.66/pkqx/dorado/jwgk/index.jsp" >1.您有3封未读邮件</a></div>
						<div class="news_right_element"><a target="_blank" href="http://218.2.99.66/pkqx/dorado/jwgk/index.jsp" >2.您有2项待办任务</a></div>
						<div class="news_right_element"><a target="_blank" href="http://218.2.99.66/pkqx/dorado/jwgk/index.jsp" ></a></div>
						<a target="_blank" href="http://218.2.99.66/pkqx/dorado/jwgk/index.jsp" style="font-size:15px;font-weight:bold;text-align:center;line-height:60px;width: 80px;height:50px;position: absolute;top:45%;left: 85%">
							更多&gt;&gt;
						</a>
					</div>
			<%
				}
			%>
		
		<!-- News End -->
		
		
		
			
		
		
	
			
		    <div class="username">欢迎<%=username %>登录！</div> 						
		    <button id="chooseSystem" style="background-image:url('../images/mySystem.png'); width: 153px;height: 53px;position: absolute;top:62%;left: 45.42%;cursor:pointer;" ></button>
		    <button id="editPwd" style="background-image:url('../images/editPwd.png'); width: 82px;height: 25px;position: absolute;top:79.32%;left: 79.67%;cursor:pointer;" ></button>
		    <button onclick="javascript:history.back(-1);" style="background-image:url('../images/exit.png'); width: 82px;height: 25px;position: absolute;top:83.98%;left: 79.67%;cursor:pointer;" ></button>
		</div> 
		
		
		
		
		<!-- my system  start -->
		
		<div id="tanchu"  style="display:none;top:100px;z-index:99;">
				<div class="end"><img src="../images/tanchu_end.png" class="chooseSystem_close" width="20" height="20" /></div>
			    <div class="ico_list">
			        <ul>
			        <%
						List<PtSysLinkWithHav> listWithHav=action.findSysLinkSelectHav(username_);
						if(listWithHav!=null){
							for(int i=0;i<listWithHav.size();i++){
								PtSysLinkWithHav hav=listWithHav.get(i);
					%>
			            <li><img src="<%=hav.getIconUrl()%>" width="84" height="84"/><%=hav.getSysName()%>
			            	<div class="left"><a href="<%=hav.getSysAddress()%>"><%=hav.getSysAddress()%></a></div>
			            	<div class="right01"  p1="<%=hav.getId() %>" p="<%=hav.getHav()%>" ></div>
			            </li>
			        <%
							}
						}
					%>
						<li style="text-align: center;height: 50%"> <input type="button" style=" width:88px;height:30px;background:url(../images/index_btn_update.png) no-repeat center;" id="submit_chooseSystem" /></li>
			        </ul>
			       
				</div>
			</div>
		<!-- my system  end-->
		
		
		
		
		
		
		
		
		<!-- edit pwd start -->
		
		
		<div id="dialog_editPwd"  title="修改密码" style="display: none;height:500px;text-align: center; color: #079bd2;font-size: 16px;">
			<label>&nbsp;&nbsp;</label>
			<br/>
			<label for=pwd1 >旧密码</label>
			<input type=password required placeholder=请填写密码 id=pwd1 name=pwd1 />
			<br/><br/>
			<label for="pwd2" >新密码</label>
			<input type="password" required placeholder=请填写密码 id="pwd2" name="pwd2" />
			<br/><br/>
			<label for="pwd3" >新密码</label>
			<input type="password" required placeholder="请填写密码" id="pwd3" name="pwd3" />
			<br/><br/>
			<button id="editPwd_button" style="width:84px;height:28px;background:url(../images/index_btn_update.png) no-repeat center;"></button>
		</div>
		
		<!-- edit pwd end -->
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<script type="text/javascript">
		  $(document).ready(function(){
			  $("button").button();
			  $("#chooseSystem").click(function(){
				document.getElementById('tanchu').style.display="block";
			  });
			  
			  $(".chooseSystem_close").click(function(){
				  document.getElementById('tanchu').style.display="none";
			  });
			  
			  $("#editPwd").click(function(){
				  document.getElementById('tanchu').style.display="none";
				  document.getElementById('dialog_editPwd').style.display="block";
			  });
			  
			  
			  //根据隐藏的值将指定元素替换
				$(".right01").each(function(){
					var val=$(this).attr("p");
					if(val==1){
						$(this).append('<input type="button" class="t_btn02" value="" />');
					}else{
						$(this).append('<input type="button" class="t_btn01" value="" />');
					}
				});
			  //点击替换图标，修改隐藏的值
				$(".right01").click(function(){
					var val=$(this).attr("p");
					if(val==1){
						$(this).attr("p","0");
						$(this).find("input").attr("class","t_btn01");
					}else{
						$(this).attr("p","1");
						$(this).find("input").attr("class","t_btn02");
					}
				});
			  $("#submit_chooseSystem").click(function(){
				  //获取所有平台的编号和是否添加到当前用户中
				  var arr1="";
				  var arr2="";
				  $(".right01").each(function(){
						var hav=$(this).attr("p");
						var id=$(this).attr("p1");
						arr1+=id+",";
						arr2+=hav+",";
				  });
				   arr1=arr1.substring(0,arr1.length-1);
				   arr2=arr2.substring(0,arr2.length-1);
				  $.ajax({
	    				type:"post",
	    				dataType:"html",
	    				url:"<%=basePath%>ChooseSystemServlet",
	    				data:{
	    					arr1:arr1,
	    					arr2:arr2,
	    					username:'<%=username_%>'
	    				},
	    				success:function(){
	    					location.reload();
	    				},
	    				error:function(){
	    					alert("请联系管理员");
	    				}
	    			});
			  });
		  });
		  
		</script>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
   		
   		
   		<script type="text/javascript">
		    $(document).ready(function(){
		    	//点击确认修改密码
		    	$("#editPwd_button").click(function(){
		    		var pwd1=$("#pwd1").val();
		    		var pwd2=$("#pwd2").val();
		    		var pwd3=$("#pwd3").val();
		    		if (checkFrom(pwd1)&&checkFrom(pwd2)&&checkFrom(pwd3)&&checkPwd(pwd1,pwd2,pwd3)) {
		    			$.ajax({
		    				type:"post",
		    				dataType:"html",
		    				url:"<%=basePath%>EditPwdServlet",
		    				data:{"username":sessionStorage.username,"pwd":pwd2},
		    				success:function(){
		    					sessionStorage.pwd=pwd2;
		    					alert("密码修改成功");
		    					$( "#dialog_editPwd" ).dialog( "close" );
		    				},
		    				error:function(msg){
		    					alert(msg);
		    				}
		    			});
					}
		    	});
		    });
		</script>
</body>
</html>