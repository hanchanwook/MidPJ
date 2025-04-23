package com.ict.project.vo.management;

public class Permission {
	private String emp_email;
	private int can_access_employee, can_access_worktype,
		can_access_personnel, can_access_salary, can_access_vacation;
	
	//===== 직원 이메일(외래키) =====
	public String getEmp_email() {
		return emp_email;
	}
	public void setEmp_email(String emp_email) {
		this.emp_email = emp_email;
	}
	
	//===== 직원 정보 접근 권한 =====
	public int getCan_access_employee() {
		return can_access_employee;
	}
	public void setCan_access_employee(int can_access_employee) {
		this.can_access_employee = can_access_employee;
	}
	
	//===== 근무 방식 접근 권한 =====
	public int getCan_access_worktype() {
		return can_access_worktype;
	}
	public void setCan_access_worktype(int can_access_worktype) {
		this.can_access_worktype = can_access_worktype;
	}
	
	//===== 인사 발령 접근 권한 =====
	public int getCan_access_personnel() {
		return can_access_personnel;
	}
	public void setCan_access_personnel(int can_access_personnel) {
		this.can_access_personnel = can_access_personnel;
	}
	
	//===== 급여 정보 접근 권한 =====
	public int getCan_access_salary() {
		return can_access_salary;
	}
	public void setCan_access_salary(int can_access_salary) {
		this.can_access_salary = can_access_salary;
	}
	
	//===== 휴가 정보 접근 권한 =====
	public int getCan_access_vacation() {
		return can_access_vacation;
	}
	public void setCan_access_vacation(int can_access_vacation) {
		this.can_access_vacation = can_access_vacation;
	}
	
	
}
