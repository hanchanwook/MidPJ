package com.ict.project.vo.personnel;
/* 작성자: 김재겸 */
public class EmployeeVO {
	private String emp_email, emp_id, emp_password, 
		dept_name, position, hire_date, resignation_date, file_name;
	private int pay_grade;
	
	//=====이메일(로그인용 ID로 사용)=====
	public String getEmp_email() {
		return emp_email;
	}
	public void setEmp_email(String emp_email) {
		this.emp_email = emp_email;
	}
	
	//=====직원 고유 코드(4자리)=====
	public String getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}
	
	//=====비밀번호=====
	public String getEmp_password() {
		return emp_password;
	}
	public void setEmp_password(String emp_password) {
		this.emp_password = emp_password;
	}
	
	//=====부서명=====
	public String getDept_name() {
		return dept_name;
	}
	public void setDept_name(String dept_name) {
		this.dept_name = dept_name;
	}
	
	//=====직책=====
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	
	//=====입사일=====
	public String getHire_date() {
		return hire_date;
	}
	public void setHire_date(String hire_date) {
		this.hire_date = hire_date;
	}
	
	//=====퇴사일=====
	public String getResignation_date() {
		return resignation_date;
	}
	public void setResignation_date(String resignation_date) {
		this.resignation_date = resignation_date;
	}
	
	//=====직원 증명 사진 파일=====
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	
	//=====호봉=====
	public int getPay_grade() {
		return pay_grade;
	}
	public void setPay_grade(int pay_grade) {
		this.pay_grade = pay_grade;
	}
	
	
}
