package com.workspace.mvc.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "member")
public class Member {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int studId;
	
	private String studName;
	
	@ManyToOne
	@JoinColumn(name = "workId", referencedColumnName = "workId")
	private WorkSpace workspace;

	public int getStudId() {
		return studId;
	}

	public void setStudId(int studId) {
		this.studId = studId;
	}

	public String getStudName() {
		return studName;
	}

	public void setStudName(String studName) {
		this.studName = studName;
	}

	public WorkSpace getWorkspace() {
		return workspace;
	}

	public void setWorkspace(WorkSpace workspace) {
		this.workspace = workspace;
	}

	public Member() {
		super();
	}
	
	
}
