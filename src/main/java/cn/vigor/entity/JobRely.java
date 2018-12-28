package cn.vigor.entity;

public class JobRely {
	  private int taskId=22;
	  private int palmId=0;
	  
	public JobRely(int taskId ,int palmId )
	{
		this.palmId=palmId;
		this.taskId=taskId;
	}
	public int getTaskId() {
		return taskId;
	}
	public void setTaskId(int taskId) {
		this.taskId = taskId;
	}
	public int getPalmId() {
		return palmId;
	}
	public void setPalmId(int palmId) {
		this.palmId = palmId;
	}
	  
	  
}
