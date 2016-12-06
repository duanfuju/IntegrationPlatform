$(document).ready(function(){
	//创建一个dialog的对话框用来修改密码
    $("#dialog_editPwd").dialog({
        autoOpen: false,
        width: 300,
        height: 'auto',
        closeText:'&nbsp;X&nbsp;'
    });
 /* //创建一个dialog的对话框用来选择系统平台
    $("#dialog_chooseSystem").dialog({
        autoOpen: false,
        width: 450,
        height: 'auto',
        closeText:"关闭"
    });*/
    
    
	//弹出用来修改密码对话框
    $("#editPwd").click(function(){
        $( "#dialog_editPwd" ).dialog( "open" );
        $('[title="X"]').css({"float":"right","border":"0px","color":"white"});
        $("#pwd1").val("");
		$("#pwd2").val("");
		$("#pwd3").val("");
    });
    /*$("#chooseSystem").click(function(){
        $( "#dialog_chooseSystem" ).dialog( "open" );
        $("button").css("float","right");
    });*/
	
});


function linkUrl(address,username,userpwd){
   	//创建form表单
      var objform = document.createElement("form");
      document.body.appendChild(objform);
      //新开一个窗口
      objform.target = "_blank";

      var username_Input = document.createElement("input");
      username_Input.type = "text";
      objform.appendChild(username_Input);
      username_Input.value = sessionStorage.username;
      username_Input.name = username;

      var password_Input = document.createElement("input");
      password_Input.type = "password";
      objform.appendChild(password_Input);
      password_Input.value = sessionStorage.pwd;
      password_Input.name = userpwd;
  	//设置表单提交地址
      objform.action = address;
      objform.method = "post";
      objform.submit();
      //删除没有用的from表单
      clearAllNode(objform);
      objform.parentNode.removeChild(objform);
      
  }
function checkFrom(str){
	if(!str){
		alert("密码不能为空");
		return false;
	}
	if(str.length<6){
		alert("密码长度不能小于6位");
		return false;
	}
	return true;
};
function checkPwd(pwd1,pwd2,pwd3){
	if (sessionStorage.pwd!=pwd1) {
		alert("旧密码输入不正确");
		return false;
	}
	if(pwd2!=pwd3){
		alert("新密码两次输入不一致");
		return false;
	}
	return true;
};

function clearAllNode(parentNode){
    while (parentNode.firstChild) {
      var oldNode = parentNode.removeChild(parentNode.firstChild);
       oldNode = null;
     }
} 
