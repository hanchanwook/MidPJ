DROP DATABASE IF EXISTS pj;
CREATE DATABASE pj;
USE pj;

-- 작성자 정택준
--  1. 회원가입 테이블
CREATE TABLE user(
	emp_email VARCHAR(255)PRIMARY KEY,					-- 이메일 
	emp_name VARCHAR(50) NOT NULL,                  -- 직원 이름
   emp_password VARCHAR(100) UNIQUE NOT NULL,      -- 비밀번호 
   home VARCHAR(200)  NOT NULL,              		-- 집주소
   detail_home VARCHAR(200),								-- 상세 집주소
   phone_number VARCHAR(50) UNIQUE NOT NULL        -- 휴대전화번호
    );

--  2. 직원 테이블
CREATE TABLE Employee (
    emp_email VARCHAR(255)UNIQUE NOT NULL ,         -- 이메일 (로그인용 ID로 사용)
    emp_id VARCHAR(50) PRIMARY KEY,             	 -- 직원 고유 코드 (예: E001)
    emp_password VARCHAR(100) UNIQUE NOT NULL,      -- 비밀번호
    dept_name ENUM('인사', '대기','관리자') NOT NULL DEFAULT '대기', -- 부서명 (ENUM 타입)
    position VARCHAR(50),                           -- 직책 (예: 사원, 대리)
    pay_grade INT,                                  -- 호봉 (정수형)
    hire_date DATE,                                 -- 입사일
    resignation_date DATE,                          -- 퇴사일 (NULL이면 재직 중)
    file_name VARCHAR(255),								 -- 직원 사진
    quitter ENUM('입사','퇴사','퇴사대기') NOT NULL DEFAULT '입사', -- 퇴사자  
    FOREIGN KEY (emp_email) REFERENCES USER(emp_email)
    
);

--  3. 근무 방식 테이블
CREATE TABLE WorkType (
    work_id INT AUTO_INCREMENT PRIMARY KEY,         -- 근무 방식 ID
    emp_id VARCHAR(50),                             -- 직원 코드 (FK)
    work_type ENUM('출장', '재택', '회사') NOT NULL DEFAULT '회사', -- 근무 방식
    start_date DATE,                                -- 시작일
    end_date DATE,                                  -- 종료일
    demerit INT,                                    -- 벌점
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
);

--  4. 인사 발령 테이블 (부서 테이블 없이 문자열로 관리)
CREATE TABLE PersonnelChange (
    change_id INT AUTO_INCREMENT PRIMARY KEY,       					-- 발령 ID
    emp_id VARCHAR(50),                             					-- 직원 코드
    change_type ENUM('사내', '전출') NOT NULL  DEFAULT '사내', 	-- 발령 유형
    change_date DATE,                              					-- 발령일
    prev_dept_id VARCHAR(10),                       					-- 이전 부서명
    new_dept_id VARCHAR(10),                        					-- 변경 후 부서명
    Employment_type ENUM('정규직','계약직','아르바르이트')NOT NULL, -- 고용 타입
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
);

--  5. 급여 테이블
CREATE TABLE Salary (
    salary_id INT AUTO_INCREMENT PRIMARY KEY,       -- 급여 ID
    emp_id VARCHAR(50),                             -- 직원 코드
    pay_grade INT,                                  -- 호봉
    base_salary INT,                    	  			 -- 기본급
    bonus int DEFAULT 0,              	 				 -- 보너스 (기본값 0)
    payment_date DATE,                              -- 지급일
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
);

--  6. 휴가 테이블
CREATE TABLE Vacation (
    vacation_id INT AUTO_INCREMENT PRIMARY KEY,     -- 휴가 ID
    emp_id VARCHAR(50),                             -- 직원 코드
    vacation_type ENUM('연차','공가')NOT NULL,      -- 휴가 종류 (연차 , 공가 )
    start_date DATE,                                -- 시작일
    end_date DATE,                                  -- 종료일
    vacation_day INT,										 -- 휴가일 
    coment TEXT,												 -- 사유
    status ENUM('승인', '대기', '반려') DEFAULT '대기', -- 상태
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
);
-- 게시글 최성현 파트(정택준 1도움)
-- 7. 게시글 테이블
CREATE TABLE Board (
    board_id INT AUTO_INCREMENT PRIMARY KEY,          -- 게시글 번호
    title VARCHAR(255) NOT NULL,                      -- 제목
    content TEXT NOT NULL,                            -- 본문
    emp_email VARCHAR(255) NOT NULL,                  -- 작성자 이메일
    created_at DATETIME DEFAULT NOW(),                -- 작성일
    updated_at DATETIME DEFAULT NOW() ON UPDATE NOW(),-- 수정일
    view_count INT DEFAULT 0,                         -- 조회수
    is_deleted BOOLEAN DEFAULT FALSE,                 -- 삭제 여부
    f_name VARCHAR(255),                              -- 사진 파일명
    importance ENUM('중요','일반') NOT NULL DEFAULT '일반', -- 글의 우선도	
    FOREIGN KEY (emp_email) REFERENCES Employee(emp_email)
    
);

-- 8.댓글 테이블
CREATE TABLE Comment (
    comment_id INT AUTO_INCREMENT PRIMARY KEY,        -- 댓글 번호
    board_id INT NOT NULL,                            -- 게시글 번호
    emp_email VARCHAR(255) NOT NULL,                  -- 작성자 이메일
    content TEXT NOT NULL,                            -- 댓글 내용
    created_at DATETIME DEFAULT NOW(),                -- 작성일
    is_deleted BOOLEAN DEFAULT FALSE,                 -- 삭제 여부
    FOREIGN KEY (board_id) REFERENCES Board(board_id),
    FOREIGN KEY (emp_email) REFERENCES Employee(emp_email)
);

-- 9. 권한 테이블
CREATE TABLE Permission (
    emp_email VARCHAR(255) PRIMARY KEY,                -- 직원 이메일 (고유)
    can_access_employee INT DEFAULT 0,                 -- 직원 정보 접근 권한
    can_access_worktype INT DEFAULT 0,                 -- 근무 방식 접근 권한
    can_access_personnel INT DEFAULT 0,                -- 인사 발령 접근 권한
    can_access_salary INT DEFAULT 0,                   -- 급여 정보 접근 권한
    can_access_vacation INT DEFAULT 0,                 -- 휴가 정보 접근 권한
FOREIGN KEY (emp_email) REFERENCES Employee(emp_email)
);