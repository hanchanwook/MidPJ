package com.ict.project.vo.personnel;
/* 작성자: 김재겸 */
public class PersonnelChangeVO {
	private int change_id;
	private String emp_id, change_type, change_date, prev_dept_id, new_dept_id;
	
	//=====발령 ID=====
	public int getChange_id() {
		return change_id;
	}
	public void setChange_id(int change_id) {
		this.change_id = change_id;
	}
	
	//=====직원 코드=====
	public String getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}
	
	//=====발령 유형=====
	public String getChange_type() {
		return change_type;
	}
	public void setChange_type(String change_type) {
		this.change_type = change_type;
	}
	
	//=====발령일=====
	public String getChange_date() {
		return change_date;
	}
	public void setChange_date(String change_date) {
		this.change_date = change_date;
	}
	
	//=====이전 부서명=====
	public String getPrev_dept_id() {
		return prev_dept_id;
	}
	public void setPrev_dept_id(String prev_dept_id) {
		this.prev_dept_id = prev_dept_id;
	}
	
	//=====변경 후 부서명=====
	public String getNew_dept_id() {
		return new_dept_id;
	}
	public void setNew_dept_id(String new_dept_id) {
		this.new_dept_id = new_dept_id;
	}
	
	
}
