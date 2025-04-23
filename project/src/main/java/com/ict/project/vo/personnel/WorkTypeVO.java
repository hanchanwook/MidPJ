/* 작성자: 한찬욱 */
package com.ict.project.vo.personnel;

public class WorkTypeVO {
//   근무방식ID, 직원코드, 근무 방식  ,시작일,종료일,벌점
	private String work_id, emp_id, work_type, start_date, end_date, demerit;

	public String getWork_id() {
		return work_id;
	}

	public void setWork_id(String work_id) {
		this.work_id = work_id;
	}

	public String getEmp_id() {
		return emp_id;
	}

	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}

	public String getWork_type() {
		return work_type;
	}

	public void setWork_type(String work_type) {
		this.work_type = work_type;
	}

	public String getStart_date() {
		return start_date;
	}

	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}

	public String getEnd_date() {
		return end_date;
	}

	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}

	public String getDemerit() {
		return demerit;
	}

	public void setDemerit(String demerit) {
		this.demerit = demerit;
	}

}
