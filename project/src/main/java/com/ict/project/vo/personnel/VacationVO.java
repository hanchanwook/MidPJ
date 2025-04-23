/* 작성자: 한찬욱 */
package com.ict.project.vo.personnel;

public class VacationVO {
//휴가 ID,직원 코드,휴가일(잔여 연차), 휴가 시작일 , 휴가 종료일,휴가 종류,휴가 상태
	private String vacation_id, emp_id, vacation_day, start_date, end_date, vacation_type, status;

	public String getVacation_id() {
		return vacation_id;
	}

	public void setVacation_id(String vacation_id) {
		this.vacation_id = vacation_id;
	}

	public String getEmp_id() {
		return emp_id;
	}

	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}

	public String getVacation_day() {
		return vacation_day;
	}

	public void setVacation_day(String vacation_day) {
		this.vacation_day = vacation_day;
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

	public String getVacation_type() {
		return vacation_type;
	}

	public void setVacation_type(String vacation_type) {
		this.vacation_type = vacation_type;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}