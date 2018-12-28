package cn.vigor.entity;

import java.io.Serializable;
import java.util.Date;
public class Platform implements Serializable {

	public Platform()
	{
		super();
	}
	public Platform(int id,String name,String ip,int port,String url,int status,int type)
	{
		this.id=id;
		this.platformName=name;
		this.platformIp=ip;
		this.agentUrl=url;
		this.platformPort=port;
		this.state=status;
		this.type=type;
	}
	private int loginId;
	private String deleteId;
	
	public String getDeleteId() {
		return deleteId;
	}
	public void setDeleteId(String deleteId) {
		this.deleteId = deleteId;
	}
	public int getLoginId() {
		return loginId;
	}
	public void setLoginId(int loginId) {
		this.loginId = loginId;
	}
	public Integer getState() {
		if(state == null){
			this.setState(0);
		}
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public Integer getType() {
		if(type == null){
			type = 0;
		}
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPlatformName() {
		return platformName;
	}
	public void setPlatformName(String platformName) {
		this.platformName = platformName;
	}
	public String getAgentUrl() {
		return agentUrl;
	}
	public void setAgentUrl(String agentUrl) {
		this.agentUrl = agentUrl;
	}
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	public String getPlatformIp() {
		return platformIp;
	}
	public void setPlatformIp(String platformIp) {
		this.platformIp = platformIp;
	}
	
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	private static final long serialVersionUID = 1L;

	private Integer state;
	private Integer type;
	private int id;
	private String platformName;
	private String agentUrl;
	private int page = 1;
	private int pageSize = 10;
	private String platformIp;
	private long platformPort;
	
	public long getPlatformPort() {
		return platformPort;
	}
	public void setPlatformPort(long platformPort) {
		this.platformPort = platformPort;
	}
	private Date updateTime;
}
