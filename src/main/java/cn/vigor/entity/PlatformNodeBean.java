package cn.vigor.entity;

public class PlatformNodeBean {

	private String nodeName;
	private String nodeIp;
	private int nodePort;
	private String nodeDir;
	private String nodeUser;
	private String nodePwd;
	private int nodeType;
	private int plamId;
	public int getPlamId() {
		return plamId;
	}
	public void setPlamId(int plamId) {
		this.plamId = plamId;
	}
	public String getNodeName() {
		return nodeName;
	}
	public void setNodeName(String nodeName) {
		this.nodeName = nodeName;
	}
	public String getNodeIp() {
		return nodeIp;
	}
	public void setNodeIp(String nodeIp) {
		this.nodeIp = nodeIp;
	}
	public int getNodePort() {
		return nodePort;
	}
	public void setNodePort(int nodePort) {
		this.nodePort = nodePort;
	}
	public String getNodeDir() {
		return nodeDir;
	}
	public void setNodeDir(String nodeDir) {
		this.nodeDir = nodeDir;
	}
	public String getNodeUser() {
		return nodeUser;
	}
	public void setNodeUser(String nodeUser) {
		this.nodeUser = nodeUser;
	}
	public String getNodePwd() {
		return nodePwd;
	}
	public void setNodePwd(String nodePwd) {
		this.nodePwd = nodePwd;
	}
	public int getNodeType() {
		return nodeType;
	}
	public void setNodeType(int nodeType) {
		this.nodeType = nodeType;
	}
}
