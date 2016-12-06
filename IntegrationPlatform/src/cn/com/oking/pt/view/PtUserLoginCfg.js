var username="${request.getParameter('username')}";


//@Bind #dsCfg.onReady
!function(dsCfg){
	dsCfg.set("parameter",{username:username});
	dsCfg.flushAsync();
};

//@Bind #btnupdate.onClick
!function(dialogupdate){
	dialogupdate.show();
};


//@Bind #btnAdd.onClick
!function(dialogSysLink,dsCfgSingle){
	dsCfgSingle.clear();
	dialogSysLink.show();
};
//@Bind #btnSubmit.onClick
!function(dgSysLink,dsCfgSingle,dialogSysLink,dialogAdd){
	var dataset =dgSysLink.get("dataSet");
	var row = dataset.getData("#");
	var sysSimpleName= row.get("sysSimpleName");
	var sysName= row.get("sysName");
	var sysAddress= row.get("sysAddress");
	var id= row.get("id");
	dsCfgSingle.insert({
		roleName:username,
		sysSimpleName:sysSimpleName,
		sysName:sysName,
		sysUrl:sysAddress,
		systemId:id
	});
	dialogSysLink.hide();
	dialogAdd.show();
};

//@Bind #btnCancel.onClick
!function(dialogSysLink,dialogAdd,dialogupdate){
	dialogAdd.hide();
	dialogupdate.hide();
	dialogSysLink.hide();
};
//@Bind #btnCancelAdd.onClick
!function(dialogAdd){
	dialogAdd.hide();
};
//@Bind #btnCancelUpdate.onClick
!function(dialogupdate){
	dialogupdate.hide();
};



//@Bind #saveCfgAction.onSuccess
!function(dsCfg,dialogupdate){
	dsCfg.set("parameter",{username:username});
	dsCfg.flushAsync();
	dialogupdate.hide();
};
//@Bind #saveCfgSingleAction.onSuccess
!function(dsCfg,dialogAdd){
	dsCfg.set("parameter",{username:username});
	dsCfg.flushAsync();
	dialogAdd.hide();
};

















