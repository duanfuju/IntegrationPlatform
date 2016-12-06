package cn.com.oking.util;

 
public final class KeyUtil {

	/**
	 * @return 20 number char
	 */
	public synchronized final static String getKey(){
		long l = System.currentTimeMillis();
		double d = Math.random();
		StringBuffer sb = new StringBuffer();
		sb.append(d);
		sb.delete(0,sb.length()-7);
		sb.insert(0,l);
		return sb.toString();
	}

	public synchronized final static String getKey(String prefix, String suffix){
		StringBuffer sb = new StringBuffer();
		sb.append(prefix);
		sb.append(getKey());
		sb.append(suffix);
		return sb.toString();
	}
	
	public synchronized final static String getKeyBefore(String prefix){
		StringBuffer sb = new StringBuffer();
		sb.append(prefix);
		sb.append(getKey());
		return sb.toString();
	}
	
	public synchronized final static String getKeyAfter(String suffix){
		StringBuffer sb = new StringBuffer();
		sb.append(getKey());
		sb.append(suffix);
		return sb.toString();
	}

	public synchronized final static String getCustomKey(int i){
		long l = System.currentTimeMillis();
		
		StringBuffer sb = new StringBuffer();
		sb.append(i);
		while ( sb.length()<7 ){
			sb.insert(0, "0");
		}
		sb.insert(0,l);
		return sb.toString();
	}

	public synchronized final static String getZoneString(int i, int size){
		StringBuffer sb = new StringBuffer();
		sb.append(i);
		
		return null;
	}
}
