/**
 * 
 */
package cn.com.oking.util;
 
import java.util.List;

/** 
* @ClassName: 	StringUtil 
* @Description: TODO(String工具类) 
* @author:		Ctt http://weibo.com/u/3227366511  
* @date: 		2014-12-26 下午4:49:26 
* Company:		OKING 广东奥博信息产业有限公司  版权所有
* QQContact:    点击链接加入群【ITTeam】：http://jq.qq.com/?_wv=1027&k=WTydpC 
*/
public class StringUtil {
	
	public static String changNull(Object obj){
		String s = "";
		if(obj != null ){
			s = (String)obj;
		}
		return s;
	}
	
	
	public static boolean isNotEmpty(String s){
		if(s != null && !s.equals("") && !s.equals("null") && !s.equals("undefined")){
			return true;
		}
		return false;
	}
	
	/**
	 * 将字符创用特定字符拼接
	 * @param ls   字符创组
	 * @param sub 分隔符
	 * @return
	 */
	public static String changeListToStirng(List<String> ls,String sub){
		String str = "";
		for(String s:ls){
			str = str + s + sub;
		}
		return str;
	}
	
	
	public static String getSubString(String str,int start,int end){
		str = str.substring(start, end);
		return str;
	}
	
	
	 public static String  replaceWord(String s){
		 s = s.trim();
		 String b = "";
		 if(s!=null && !s.equals("")){
			 String message =  s.substring(0,s.length()-1);
			 String end = s.substring(s.length()-1);
			 message = message.replaceAll("，", ", ");
			 message = message.replaceAll("；", "; ");
			 message = message.replaceAll("。", "; ");
			 b = message+end;
		 }
		 return b;
	 }
	
}
