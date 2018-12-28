package cn.vigor.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * 
* @Title: ComputerBean.java 
* @Description: 计算机信�?
* @author liangwen 
* @date 2013�?12�?2�? 下午5:10:27 
* @version V1.0
 */
public class ComputerBean implements Serializable{
	public ComputerBean(String ip, String passWord, int port, int memory,
			String cpu, int type, String loninName, List<String> modules,
			String machineName) {
		this.ip = ip;
		this.passWord = passWord;
		this.port = port;
		this.memory = memory;
		this.cpu = cpu;
		this.type = type;
		this.loninName = loninName;
		this.modules = modules;
		this.machineName = machineName;
	}
	public ComputerBean() {
	}
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//IP
    private String ip;
    /**ssh登陆的密�?*/
    private String passWord;
    //SSH登陆的端�?
    private int port=22;
    //内存大小，以M为单�?
    private int memory;
    //CPU信息�?
    private String cpu;
    //0:是共享，1：互�?
    private int  type=0;
    //登陆�?;
    private String loninName="root";
	private List <String> modules=null;
	
    public List<String> getModules() {
    	if(modules==null)
    	{
    		modules=new ArrayList<String>();
    	}
		return modules;
	}
	public void setModules(List<String> modules) {
		this.modules = modules;
	}
	//机器�?
    private String machineName;
	public String getLoninName() {
		return loninName;
	}
	public void setLoninName(String loninName) {
		this.loninName = loninName;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public int getPort() {
		return port;
	}
	public void setPort(int port) {
		this.port = port;
	}
	public int getMemory() {
		return memory;
	}
	public void setMemory(int memory) {
		this.memory = memory;
	}
	public String getCpu() {
		return cpu;
	}
	public void setCpu(String cpu) {
		this.cpu = cpu;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getMachineName() {
		return machineName;
	}
	public void setMachineName(String machineName) {
		this.machineName = machineName;
	}
	@Override
	protected Object clone() throws CloneNotSupportedException {
		return super.clone();
	}
	
     
}
