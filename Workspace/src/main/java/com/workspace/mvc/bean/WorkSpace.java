package com.workspace.mvc.bean;


import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "workSpace")
public class WorkSpace {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int workId;
	private String workspaceName;
	
	@OneToMany(mappedBy = "workspace")
	private Set<Member> members;
	
	public int getWorkdId() {
		return workId;
	}
	public void setWorkdId(int workdId) {
		this.workId = workdId;
	}
	public String getWorkspaceName() {
		return workspaceName;
	}
	public void setWorkspaceName(String workspaceName) {
		this.workspaceName = workspaceName;
	}
	public WorkSpace() {
		super();
	}
}
