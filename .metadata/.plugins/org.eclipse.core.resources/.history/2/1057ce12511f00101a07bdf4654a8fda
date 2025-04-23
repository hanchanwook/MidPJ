<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="3부창조 회원가입 - 안전하고 간편한 비즈니스 플랫폼에 가입하세요.">
    <title>3부창조 - 회원가입</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Roboto', sans-serif;
        } /* 기본 스타일 초기화 */

        body, html {
            height: 100vh;
            background-size: cover;
            background-position: center;
            display: flex;
            flex-direction: column;
            color: #fff;
        } /* 전체 페이지 레이아웃 설정 */

        /* Header */
        header {
            background-color: #87ceeb;
            padding: 1rem 2rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        } /* 헤더 스타일 정의 */

        .logo a {
            color: #fff;
            text-decoration: none;
            font-size: 1.8rem;
            font-weight: 700;
        } /* 로고 스타일 */

        .nav-links {
            display: flex;
            gap: 1.5rem;
        } /* 네비게이션 링크 컨테이너 */

        .nav-links a {
            color: #fff;
            text-decoration: none;
            font-size: 1rem;
            padding: 0.5rem 1rem;
            transition: all 0.3s ease;
        } /* 네비게이션 링크 스타일 */

        .nav-links a:hover {
            background-color: #6ab7d5;
            border-radius: 4px;
        } /* 네비게이션 링크 호버 효과 */

        /* Main Content */
        main {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 2rem;
        } /* 메인 콘텐츠 레이아웃 */

        .signup-container {
            background: linear-gradient(135deg, rgba(135, 206, 235, 0.95), rgba(106, 183, 213, 0.95));
            border-radius: 16px;
            padding: 3rem;
            width: 100%;
            max-width: 600px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.3);
            animation: fadeIn 0.8s ease-out;
        } /* 회원가입 폼 컨테이너 */

        .signup-container h2 {
            font-size: 2rem;
            color: #fff;
            text-align: center;
            margin-bottom: 1rem;
        } /* 회원가입 제목 */

        .signup-container p.welcome {
            font-size: 1.1rem;
            color: #e0f4ff;
            text-align: center;
            margin-bottom: 2rem;
        } /* 환영 메시지 */

        .section-title {
            font-size: 1.2rem;
            color: #fff;
            margin: 1.5rem 0 1rem;
            border-bottom: 1px solid #e0f4ff;
            padding-bottom: 0.5rem;
        } /* 섹션 제목 스타일 */

        .error-message {
            display: none;
            color: #fff;
            background-color: #ff6b6b;
            padding: 0.75rem;
            border-radius: 4px;
            margin-bottom: 1rem;
            font-size: 0.9rem;
            text-align: center;
        } /* 에러 메시지 스타일 */

        .error-message.show {
            display: block;
        } /* 에러 메시지 표시 스타일 */

        .form-group {
            margin-bottom: 1.2rem;
            display: flex;
            flex-wrap: wrap;
            gap: 0.5rem;
            align-items: center;
        } /* 폼 입력 그룹 스타일 */

        .form-group label {
            position: absolute;
            width: 1px;
            height: 1px;
            padding: 0;
            margin: -1px;
            overflow: hidden;
            clip: rect(0, 0, 0, 0);
            border: 0;
        } /* 접근성을 위한 숨김 라벨 */

        input[type="text"], input[type="email"], input[type="password"] {
            flex: 1;
            padding: 0.85rem;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 1rem;
            background-color: rgba(255, 255, 255, 0.9);
            transition: all 0.3s ease;
            min-width: 200px;
        } /* 텍스트, 이메일, 비밀번호 입력 필드 */

        input[type="text"]:focus, input[type="email"]:focus, input[type="password"]:focus {
            outline: none;
            border-color: #87ceeb;
            box-shadow: 0 0 8px rgba(135, 206, 235, 0.3);
            background-color: #fff;
        } /* 입력 필드 포커스 효과 */

        input[readonly] {
            background-color: #e9ecef;
            cursor: not-allowed;
        } /* 읽기 전용 입력 필드 스타일 */

        input:disabled {
            background-color: #e9ecef;
            cursor: not-allowed;
            opacity: 0.6;
        } /* 비활성화 입력 필드 스타일 */

        .form-group button, .form-group input[type="button"] {
            padding: 0.85rem 1.5rem;
            background-color: #6ab7d5;
            color: #fff;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 0.9rem;
            transition: all 0.3s ease;
        } /* 폼 그룹 내 버튼 스타일 */

        .form-group button:hover, .form-group input[type="button"]:hover {
            background-color: #5aa4c2;
            transform: scale(1.03);
        } /* 폼 그룹 내 버튼 호버 효과 */

        button[type="submit"] {
            width: 100%;
            padding: 1rem;
            background-color: #1e3a8a;
            color: #fff;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 1.1rem;
            margin-top: 1.5rem;
            transition: all 0.3s ease;
        } /* 제출 버튼 스타일 */

        button[type="submit"]:hover {
            background-color: #172554;
            transform: scale(1.03);
        } /* 제출 버튼 호버 효과 */

        button[type="submit"]:disabled {
            background-color: #6b7280;
            cursor: not-allowed;
            transform: none;
        } /* 비활성화 제출 버튼 스타일 */

        .login-link {
            text-align: center;
            margin-top: 1.5rem;
            font-size: 0.9rem;
            color: #e0f4ff;
        } /* 로그인 링크 섹션 */

        .login-link a {
            color: #fff;
            text-decoration: none;
        } /* 로그인 링크 스타일 */

        .login-link a:hover {
            text-decoration: underline;
            color: #e0f4ff;
        } /* 로그인 링크 호버 효과 */

        footer {
            padding: 1rem;
            text-align: center;
            font-size: 0.9rem;
            color: #e0f4ff;
            background-color: rgba(0, 0, 0, 0.5);
        } /* 푸터 스타일 */

        footer a {
            color: #e0f4ff;
            text-decoration: none;
        } /* 푸터 링크 스타일 */

        footer a:hover {
            text-decoration: underline;
        } /* 푸터 링크 호버 효과 */

        /* Animations */
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        } /* 페이드 인 애니메이션 */

        @keyframes slideUp {
            from { transform: translateY(20px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        } /* 슬라이드 업 애니메이션 */

        .form-group {
            animation: slideUp 0.5s ease-out forwards;
            animation-delay: calc(0.1s * var(--order));
        } /* 폼 그룹 애니메이션 */
    </style>
</head>
<body>
    <header>
        <div class="logo"><a href="/index.jsp">3부상조</a></div> <!-- 로고 -->
        <nav class="nav-links">
            <a href="#">공지사항</a> <!-- 공지사항 링크 -->
            <a href="login">로그인</a> <!-- 로그인 링크 -->
            <a href="#">공지사항</a> <!-- 공지사항 링크 (중복) -->
        </nav>
    </header>
    <main>
        <div class="signup-container">
            <h2>회원가입</h2> <!-- 회원가입 제목 -->
            <p class="welcome">3부창조와 함께 비즈니스 여정을 시작하세요!</p> <!-- 환영 메시지 -->
            <div class="error-message" id="error-message"><c:out value="${error}" /></div> <!-- 에러 메시지 -->
            <form action="/members_join_ok" method="post" autocomplete="off" onsubmit="return checkForm();">
                <div class="section-title">계정 정보</div> <!-- 계정 정보 섹션 제목 -->
                <div class="form-group" style="--order: 1;">
                    <label for="m_id">아이디</label> <!-- 아이디 라벨 -->
                    <input type="text" id="m_id" name="m_id" placeholder="아이디" required tabindex="1" /> <!-- 아이디 입력 -->
                </div>
                <div class="form-group" style="--order: 2;">
                    <label for="m_pw">비밀번호</label> <!-- 비밀번호 라벨 -->
                    <input type="password" id="m_pw" name="m_pw" placeholder="비밀번호" required tabindex="2" /> <!-- 비밀번호 입력 -->
                </div>
                <div class="form-group" style="--order: 3;">
                    <label for="m_pw2">비밀번호 확인</label> <!-- 비밀번호 확인 라벨 -->
                    <input type="password" id="m_pw2" name="m_pw2" placeholder="비밀번호 확인" required tabindex="3" /> <!-- 비밀번호 확인 입력 -->
                </div>
                <div class="form-group" style="--order: 4;">
                    <label for="m_name">이름</label> <!-- 이름 라벨 -->
                    <input type="text" id="m_name" name="m_name" placeholder="이름" required tabindex="4" /> <!-- 이름 입력 -->
                </div>

                <div class="section-title">주소 정보</div> <!-- 주소 정보 섹션 제목 -->
                <div class="form-group" style="--order: 5;">
                    <label for="m_addr">주소</label> <!-- 주소 라벨 -->
                    <input type="text" id="m_addr" name="m_addr" placeholder="주소" readonly required tabindex="5" /> <!-- 주소 입력 -->
                    <input type="button" value="주소찾기" onclick="execDaumPostcode()" tabindex="6" /> <!-- 주소 찾기 버튼 -->
                </div>
                <div class="form-group" style="--order: 6;">
                    <label for="m_addr2">상세주소</label> <!-- 상세주소 라벨 -->
                    <input type="text" id="m_addr2" name="m_addr2" placeholder="상세주소 입력" tabindex="7" /> <!-- 상세주소 입력 -->
                </div>

                <div class="section-title">연락처 정보</div> <!-- 연락처 정보 섹션 제목 -->
                <div class="form-group" style="--order: 7;">
                    <label for="m_email">이메일</label> <!-- 이메일 라벨 -->
                    <input type="email" id="m_email" name="m_email" placeholder="이메일" required tabindex="8" /> <!-- 이메일 입력 -->
                    <input type="button" value="인증번호 보내기" onclick="sendVerificationCode()" tabindex="9" /> <!-- 인증번호 보내기 버튼 -->
                </div>
                <div class="form-group" style="--order: 8;">
                    <label for="emailCode">인증번호</label> <!-- 인증번호 라벨 -->
                    <input type="text" id="emailCode" placeholder="인증번호 입력" tabindex="10" /> <!-- 인증번호 입력 -->
                    <input type="button" value="인증확인" onclick="checkVerificationCode()" tabindex="11" /> <!-- 인증확인 버튼 -->
                </div>
                <div class="form-group" style="--order: 9;">
                    <label for="m_phone">전화번호</label> <!-- 전화번호 라벨 -->
                    <input type="text" id="m_phone" name="m_phone" placeholder="전화번호" required disabled tabindex="12" /> <!-- 전화번호 입력 -->
                </div>

                <button type="submit" id="submitBtn" disabled tabindex="13">가입 완료</button> <!-- 가입 완료 버튼 -->
            </form>
            <div class="login-link">
                이미 계정이 있으신가요? <a href="/login">로그인</a> <!-- 로그인 링크 -->
            </div>
        </div>
    </main>
    <footer>
        <p>© 2025 3부창조. <a href="#">개인정보처리방침</a> | <a href="#">고객 지원</a></p> <!-- 푸터 콘텐츠 -->
    </footer>

    <script>
        function checkForm() {
            const pw = $("#m_pw").val();
            const pw2 = $("#m_pw2").val();
            const errorMessage = $("#error-message");

            if (pw !== pw2) {
                errorMessage.text("비밀번호가 일치하지 않습니다.").addClass("show");
                $("#m_pw").val("");
                $("#m_pw2").val("").focus();
                return false;
            }

            errorMessage.removeClass("show");
            return true;
        } /* 폼 제출 전 비밀번호 확인 */

        function execDaumPostcode() {
            new daum.Postcode({
                oncomplete: function(data) {
                    document.getElementById('m_addr').value = data.address;
                }
            }).open();
        } /* 다음 우편번호 API 호출 */

        function sendVerificationCode() {
            alert("이메일로 인증번호가 전송되었습니다. (구현 필요)");
            // Ajax로 서버 요청 예제
        } /* 이메일 인증번호 전송 (미구현) */

        function checkVerificationCode() {
            alert("인증번호 확인 완료. (구현 필요)");
            $("#m_phone").prop('disabled', false);
            $("#submitBtn").prop('disabled', false);
        } /* 인증번호 확인 (미구현) */
    </script>
</body>
</html>