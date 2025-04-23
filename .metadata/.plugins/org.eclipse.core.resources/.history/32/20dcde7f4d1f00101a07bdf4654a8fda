<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="3부상조 공지사항 - 최신 소식과 업데이트를 확인하세요.">
    <title>3부상조 - 공지사항</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        } /* 기본 스타일 초기화 */

        body {
            font-family: 'Roboto', sans-serif;
            line-height: 1.6;
            background-color: #f0f8ff; /* Light sky blue background */
            color: #333;
        } /* 전체 페이지 스타일 */

        /* Header */
        header {
            background-color: #87ceeb; /* Light sky blue */
            padding: 1rem 2rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: sticky;
            top: 0;
            z-index: 1000;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        } /* 헤더 스타일 정의 */

        #logo a {
            color: #fff;
            text-decoration: none;
            font-size: 1.8rem;
            font-weight: 700;
        } /* 로고 스타일 */

        .nav-menu {
            display: flex;
            list-style: none;
            gap: 1.5rem;
        } /* 네비게이션 메뉴 컨테이너 */

        .nav-menu li a {
            color: #fff;
            text-decoration: none;
            font-size: 1rem;
            padding: 0.5rem 1rem;
            transition: all 0.3s ease;
        } /* 네비게이션 메뉴 링크 스타일 */

        .nav-menu li a:hover {
            background-color: #6ab7d5;
            border-radius: 4px;
        } /* 네비게이션 링크 호버 효과 */

        /* Mobile Menu Button */
        .mobile-menu-btn {
            display: none;
            background: none;
            border: none;
            cursor: pointer;
        } /* 모바일 메뉴 버튼 (기본 숨김) */

        .mobile-menu-btn span {
            display: block;
            width: 25px;
            height: 3px;
            background-color: #fff;
            margin: 5px 0;
            transition: all 0.3s ease;
        } /* 모바일 메뉴 버튼 아이콘 스타일 */

        /* Mobile Menu */
        .mobile-nav {
            display: none;
            position: fixed;
            top: 0;
            right: -100%;
            width: 100%;
            height: 100%;
            background-color: #87ceeb;
            padding: 5rem 2rem;
            transition: right 0.3s ease;
            z-index: 999;
        } /* 모바일 네비게이션 메뉴 (기본 숨김) */

        .mobile-nav.active {
            right: 0;
        } /* 모바일 네비게이션 활성화 스타일 */

        .mobile-nav ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 1.5rem;
        } /* 모바일 네비게이션 메뉴 리스트 */

        .mobile-nav ul li a {
            color: #fff;
            text-decoration: none;
            font-size: 1.2rem;
            padding: 0.5rem;
            display: block;
            transition: all 0.3s ease;
        } /* 모바일 네비게이션 링크 스타일 */

        .mobile-nav ul li a:hover {
            background-color: #6ab7d5;
            border-radius: 4px;
        } /* 모바일 네비게이션 링크 호버 효과 */

        /* Main Content */
        main {
            max-width: 1200px;
            margin: 2rem auto;
            padding: 0 2rem;
        } /* 메인 콘텐츠 레이아웃 */

        /* Main Notice */
        .main-notice {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 2rem;
            overflow: hidden;
            animation: slideUp 0.8s ease-out;
        } /* 메인 공지사항 섹션 스타일 */

        .main-notice img {
            width: 100%;
            height: 300px;
            object-fit: cover;
        } /* 메인 공지사항 이미지 스타일 */

        .main-notice-content {
            padding: 2rem;
        } /* 메인 공지사항 콘텐츠 스타일 */

        .main-notice-content h2 {
            font-size: 2rem;
            color: #333;
            margin-bottom: 1rem;
        } /* 메인 공지사항 제목 스타일 */

        .main-notice-content p {
            font-size: 1rem;
            color: #666;
            margin-bottom: 1rem;
        } /* 메인 공지사항 설명 스타일 */

        /* Notice List (X 스타일 게시글) */
        .notice-list {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 1rem;
            animation: slideUp 0.8s ease-out;
        } /* 공지사항 목록 섹션 스타일 */

        .notice-list h2 {
            font-size: 2rem;
            color: #333;
            margin-bottom: 1.5rem;
            padding: 0 1rem;
        } /* 공지사항 목록 제목 스타일 */

        .notice-item {
            border-bottom: 1px solid #eee;
            padding: 1rem;
            display: flex;
            gap: 1rem;
            transition: background-color 0.3s ease;
        } /* 개별 공지사항 게시글 스타일 */

        .notice-item:last-child {
            border-bottom: none;
        } /* 마지막 게시글의 하단 테두리 제거 */

        .notice-item:hover {
            background-color: #f0f8ff;
        } /* 게시글 호버 효과 */

        .notice-item .user-icon {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background-color: #ccc;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.2rem;
            color: #fff;
        } /* 사용자 아이콘 스타일 */

        .notice-item .content-wrapper {
            flex: 1;
        } /* 게시글 내용 컨테이너 */

        .notice-item .user-info {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            margin-bottom: 0.5rem;
        } /* 사용자 정보 (이름, 날짜) 스타일 */

        .notice-item .user-info .username {
            font-weight: bold;
            color: #333;
        } /* 사용자 이름 스타일 */

        .notice-item .user-info .date {
            font-size: 0.9rem;
            color: #666;
        } /* 게시글 날짜 스타일 */

        .notice-item .post-content a {
            color: #333;
            text-decoration: none;
            font-size: 1.1rem;
            display: block;
            margin-bottom: 0.5rem;
        } /* 게시글 제목 링크 스타일 */

        .notice-item .post-content a:hover {
            color: #87ceeb;
        } /* 게시글 제목 링크 호버 효과 */

        .notice-item .post-content p {
            font-size: 0.95rem;
            color: #666;
            margin-bottom: 0.5rem;
        } /* 게시글 본문 스타일 */

        .notice-item .post-image {
            max-width: 100%;
            border-radius: 8px;
            margin: 0.5rem 0;
        } /* 게시글 이미지 스타일 */

        .notice-item .interaction-buttons {
            display: flex;
            gap: 1.5rem;
            margin-top: 0.5rem;
        } /* 상호작용 버튼 컨테이너 */

        .notice-item .interaction-buttons span {
            display: flex;
            align-items: center;
            gap: 0.3rem;
            font-size: 0.9rem;
            color: #666;
            cursor: pointer;
        } /* 상호작용 버튼 스타일 */

        .notice-item .interaction-buttons span:hover {
            color: #87ceeb;
        } /* 상호작용 버튼 호버 효과 */

        /* Animations */
        @keyframes slideUp {
            from { transform: translateY(20px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        } /* 슬라이드 업 애니메이션 */
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div id="logo"><a href="${pageContext.request.contextPath}/">3부상조</a></div> <!-- 로고 -->
        <nav>
            <ul class="nav-menu">
                <li><a href="#">공지사항</a></li> <!-- 공지사항 링크 -->
                <li><a href="login">로그인</a></li> <!-- 로그인 링크 -->
                <li><a href="#">개인정보</a></li> <!-- 개인정보 링크 -->
            </ul>
        </nav>
        <button class="mobile-menu-btn">
            <span></span> <!-- 모바일 메뉴 버튼 라인 -->
            <span></span> <!-- 모바일 메뉴 버튼 라인 -->
            <span></span> <!-- 모바일 메뉴 버튼 라인 -->
        </button>
    </header>

    <!-- Mobile Menu -->
    <nav class="mobile-nav">
        <ul>
            <li><a href="#">공지사항</a></li> <!-- 모바일 공지사항 링크 -->
            <li><a href="login">로그인</a></li> <!-- 모바일 로그인 링크 -->
            <li><a href="#">개인정보</a></li> <!-- 모바일 개인정보 �링크 -->
        </ul>
    </nav>

    <!-- Main Content -->
    <main>
        <!-- Main Notice -->
        <section class="main-notice">
            <img src="https://images.unsplash.com/photo-1600585154340-be6161a56a0c?ixlib=rb-4.0.3&auto=format&fit=crop&w=1350&q=80" alt="공지사항 이미지"> <!-- 메인 공지사항 이미지 -->
            <div class="main-notice-content">
                <h2>공지사항</h2> <!-- 메인 공지사항 제목 -->
                <p>특별한 이벤트와 최신 소식을 놓치지 마세요!</p> <!-- 메인 공지사항 설명 -->
            </div>
        </section>

        <!-- Notice List (X 스타일 게시글) -->
        <section class="notice-list">
            <h2>공지사항</h2> <!-- 공지사항 목록 제목 -->
            <div class="notice-item">
                <div class="user-icon">소</div> <!-- 사용자 아이콘 -->
                <div class="content-wrapper">
                    <div class="user-info">
                        <span class="username">소설성인연구소</span> <!-- 사용자 이름 -->
                        <span class="date">2025.04.21</span> <!-- 게시글 날짜 -->
                    </div>
                    <div class="post-content">
                        <a href="#">2025년 새해엔 안성한 바래닙니다.</a> <!-- 게시글 제목 -->
                        <p>2025년 새해에는 안성한 바래닙니다.<br>
                        자살 예방 보호시스템 대폭 강화, 장기근로자 안성한 바래닙니다.<br>
                        소설성인연구소는 장애인들의 복지 향상을 위해 새해에도 열일하겠습니다.<br>
                        ESG 기준을 철저히 지키는 장애인 복지 안성한 대로 만들겠습니다.<br>
                        우리는 변함없이 장애인 보호, 장애인 복지, 장애자 권익<br>
                        안성한 대로 지키겠습니다.<br>
                        2025년 안성한 장기 바래닙니다.</p> <!-- 게시글 본문 -->
                        <img src="https://via.placeholder.com/400x200.png?text=2025+Image" alt="2025 이미지" class="post-image"> <!-- 게시글 이미지 -->
                    </div>
                    <div class="interaction-buttons">
                        <span>💬 0</span> <!-- 댓글 버튼 -->
                        <span>👁️ 19</span> <!-- 조회수 -->
                    </div>
                </div>
            </div>
            <div class="notice-item">
                <div class="user-icon">소</div> <!-- 사용자 아이콘 -->
                <div class="content-wrapper">
                    <div class="user-info">
                        <span class="username">소설성인연구소</span> <!-- 사용자 이름 -->
                        <span class="date">2024.12.30</span> <!-- 게시글 날짜 -->
                    </div>
                    <div class="post-content">
                        <a href="#">제주명문 여객기 희생자들과 위기극복을 걸친 에도를 표현합니다.</a> <!-- 게시글 제목 -->
                        <p>건희 효율은 느끼며, 에피타이저<br>
                        1229 여객기 감사 희생자들을 추모합니다.<br>
                        보다 누구도 탄환하며 열원하지 않을 바래닙니다.</p> <!-- 게시글 본문 -->
                        <img src="https://via.placeholder.com/200x300.png?text=Memorial+Image" alt="추모 이미지" class="post-image"> <!-- 게시글 이미지 -->
                    </div>
                    <div class="interaction-buttons">
                        <span>💬 0</span> <!-- 댓글 버튼 -->
                        <span>👁️ 4</span> <!-- 조회수 -->
                    </div>
                </div>
            </div>
            <div class="notice-item">
                <div class="user-icon">소</div> <!-- 사용자 아이콘 -->
                <div class="content-wrapper">
                    <div class="user-info">
                        <span class="username">소설성인연구소</span> <!-- 사용자 이름 -->
                        <span class="date">2022.10.30</span> <!-- 게시글 날짜 -->
                    </div>
                    <div class="post-content">
                        <a href="#">이벤트 안내 - 디지털 워크샵 참가 안내</a> <!-- 게시글 제목 -->
                        <p>디지털 워크샵 참가 안내 이벤트가 진행됩니다. 많은 참여 부탁드립니다.</p> <!-- 게시글 본문 -->
                    </div>
                    <div class="interaction-buttons">
                        <span>💬 0</span> <!-- 댓글 버튼 -->
                        <span>👁️ 10</span> <!-- 조회수 -->
                    </div>
                </div>
            </div>
            <div class="notice-item">
                <div class="user-icon">소</div> <!-- 사용자 아이콘 -->
                <div class="content-wrapper">
                    <div class="user-info">
                        <span class="username">소설성인연구소</span> <!-- 사용자 이름 -->
                        <span class="date">2023.10.30</span> <!-- 게시글 날짜 -->
                    </div>
                    <div class="post-content">
                        <a href="#">홈페이지 리뉴얼 및 신규 서비스 안내</a> <!-- 게시글 제목 -->
                        <p>홈페이지가 리뉴얼되었습니다. 새로운 서비스를 확인해보세요!</p> <!-- 게시글 본문 -->
                    </div>
                    <div class="interaction-buttons">
                        <span>💬 0</span> <!-- 댓글 버튼 -->
                        <span>👁️ 15</span> <!-- 조회수 -->
                    </div>
                </div>
            </div>
        </section>
    </main>

    <script>
        // Mobile menu toggle
        document.querySelector('.mobile-menu-btn').addEventListener('click', () => {
            document.querySelector('.mobile-nav').classList.toggle('active');
        }); /* 모바일 메뉴 토글 기능 */
    </script>
</body>
</html>