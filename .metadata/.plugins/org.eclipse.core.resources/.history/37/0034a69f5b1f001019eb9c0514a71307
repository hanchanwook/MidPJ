<!-- 최성현 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ko">
<head>
    <!-- 메타데이터 및 기본 설정 -->
    <meta charset="UTF-8">
    <meta name="description" content="3부상조 - 당신의 비즈니스 파트너로 차별화된 서비스와 지원을 제공합니다.">
    <title>3부상조 - 메인 페이지</title>

    <!-- 구글 웹폰트 로드: Roboto -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap" rel="stylesheet">

    <!-- CSS 경로 지정: Header, Footer 스타일 -->
    <link href="<c:url value='/resources/css/Header.css' />" rel="stylesheet">
    <link href="<c:url value='/resources/css/Footer.css' />" rel="stylesheet">

    <!-- 페이지 전반적인 CSS 스타일 정의 -->
    <style type="text/css">
        /* 공통 스타일 초기화 및 글꼴 설정 */
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body {
            font-family: 'Roboto', sans-serif;
            line-height: 1.6;
            background-color: #f0f8ff;
            color: #333;
        }

        /* 상단 Hero Section 스타일 */
        .hero-section {
            position: relative;
            height: 800px;
            background: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)),
                        url('https://images.unsplash.com/photo-1600585154340-be6161a56a0c?ixlib=rb-4.0.3&auto=format&fit=crop&w=1350&q=80')
                        no-repeat center center/cover;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            color: #fff;
            animation: fadeIn 1s ease-out;
        }

        /* Hero 콘텐츠 박스 */
        .hero-content {
            background-color: rgba(255,255,255,0.95);
            padding: 3rem 4rem;
            border-radius: 12px;
            box-shadow: 0 6px 12px rgba(0,0,0,0.2);
            max-width: 700px;
            animation: slideUp 0.8s ease-out;
        }

        .hero-content h1 { font-size: 2.5rem; color: #333; margin-bottom: 1rem; }
        .hero-content p { font-size: 1.2rem; color: #666; margin-bottom: 2rem; }

        /* 버튼 스타일: primary / secondary */
        .hero-content .btn {
            display: inline-block;
            padding: 0.75rem 1.5rem;
            background-color: #87ceeb;
            color: #fff;
            text-decoration: none;
            border-radius: 4px;
            margin: 0.5rem;
            transition: all 0.3s ease;
        }
        .hero-content .btn:hover {
            background-color: #6ab7d5;
            transform: scale(1.05);
        }
        .hero-content .btn.secondary {
            background-color: #fff;
            color: #87ceeb;
            border: 1px solid #87ceeb;
        }
        .hero-content .btn.secondary:hover {
            background-color: #e0f4ff;
            color: #6ab7d5;
        }

        /* Features(최근 게시글) 섹션 */
        .features-section {
            padding: 4rem 2rem;
            background-color: #fff;
            text-align: center;
        }
        .features-section h2 {
            font-size: 2rem;
            margin-bottom: 2rem;
            color: #333;
        }
        .features-grid {
            display: flex;
            justify-content: center;
            gap: 2rem;
            max-width: 1200px;
            margin: 0 auto;
        }
        .feature-card {
            background-color: #f0f8ff;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            transition: all 0.3s ease;
            width: 300px;
        }
        .feature-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 12px rgba(0,0,0,0.15);
        }
        .feature-card img { width: 60px; height: 60px; margin-bottom: 1rem; }
        .feature-card h3 { font-size: 1.5rem; color: #333; margin-bottom: 0.5rem; }
        .feature-card p { font-size: 1rem; color: #666; }

        /* 소식받기 구독 섹션 */
        .connection-section {
            background-color: #333;
            padding: 4rem 2rem;
            text-align: center;
            color: #fff;
        }
        .connection-section h2 { font-size: 2rem; margin-bottom: 1rem; }
        .connection-section p { font-size: 1.2rem; margin-bottom: 2rem; color: #ccc; }

        /* 뉴스레터 입력 폼 스타일 */
        .newsletter-form {
            display: inline-block;
        }
        .newsletter-form input {
            padding: 0.75rem;
            font-size: 1rem;
            border: none;
            border-radius: 4px;
            width: 300px;
        }
        .newsletter-form button {
            padding: 0.75rem 1.5rem;
            background-color: #87ceeb;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        .newsletter-form button:hover {
            background-color: #6ab7d5;
            transform: scale(1.05);
        }

        /* 고객 후기 섹션 */
        .testimonial-section {
            padding: 4rem 2rem;
            background-color: #f0f8ff;
            text-align: center;
        }
        .testimonial-section h2 { font-size: 2rem; margin-bottom: 2rem; color: #333; }
        .testimonial-grid {
            display: flex;
            justify-content: center;
            gap: 2rem;
            max-width: 1200px;
            margin: 0 auto;
        }
        .testimonial-card {
            background-color: #fff;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            transition: all 0.3s ease;
            width: 300px;
        }
        .testimonial-card:hover { transform: translateY(-5px); }
        .testimonial-card p {
            font-size: 1rem;
            color: #666;
            margin-bottom: 1rem;
            font-style: italic;
        }
        .testimonial-card h4 { font-size: 1.2rem; color: #333; }

        /* 등장 애니메이션 keyframe 정의 */
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        @keyframes slideUp {
            from { transform: translateY(20px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }
        /* 공통 애니메이션 효과 */
        .section-animation {
            opacity: 0;
            transform: translateY(20px);
            animation: slideUp 0.8s ease-out forwards;
        }
    </style>
</head>
<body>

    <!-- 페이지 상단 Header: 로고 및 네비게이션 -->
    <header>
        <div id="logo"><a href="/">3부상조</a></div>
        <nav>
            <ul class="nav-menu">
                <li><a href="#">공지사항</a></li>
                <li><a href="login">로그인</a></li>
                <li><a href="#">개인정보</a></li>
            </ul>
        </nav>
    </header>

    <!-- 메인 배너: Hero Section -->
    <section class="hero-section">
        <div class="hero-content">
            <h1>당신의 성공을 위한 최적의 파트너</h1>
            <p>3부상조는 차별화된 시스템과 신뢰할 수 있는 서비스로<br>비즈니스 성장을 지원합니다.</p>
            <a href="#" class="btn">지금 시작하기</a>
            <a href="#features" class="btn secondary">더 알아보기</a>
        </div>
    </section>

    <!-- 최근 게시글 소개 영역 -->
    <section class="features-section section-animation" id="features">
        <h2>최근 게시글</h2>
        <div class="features-grid">
            <!-- 게시글 카드 -->
            <div class="feature-card">
                <img src="https://via.placeholder.com/60x60?text=아이콘" alt="">
                <h3>게시글1</h3>
                <p>내용</p>
            </div>
            <div class="feature-card">
                <img src="https://via.placeholder.com/60x60?text=아이콘" alt="">
                <h3>게시글2</h3>
                <p>내용2</p>
            </div>
            <div class="feature-card">
                <img src="https://via.placeholder.com/60x60?text=아이콘" alt="">
                <h3>게시글3</h3>
                <p>내용3</p>
            </div>
        </div>
    </section>

    <!-- 뉴스레터 구독 섹션 -->
    <section class="connection-section section-animation">
        <h2>소식받기</h2>
        <p>뉴스레터를 구독하고 최신 정보를 받아보세요.</p>
        <div class="newsletter-form">
            <input type="email" placeholder="이메일을 입력하세요">
            <button>구독하기</button>
        </div>
    </section>

    <!-- 고객 후기 섹션 -->
    <section class="testimonial-section section-animation">
        <h2>고객 후기</h2>
        <div class="testimonial-grid">
            <div class="testimonial-card">
                <p>정말 훌륭한 서비스입니다! 믿을 수 있는 비즈니스 파트너.</p>
                <h4>김철수</h4>
            </div>
            <div class="testimonial-card">
                <p>전문적이고 신뢰할 수 있는 고객지원에 만족합니다.</p>
                <h4>이영희</h4>
            </div>
            <div class="testimonial-card">
                <p>3부상조와 함께한 이후 비즈니스가 훨씬 안정적입니다.</p>
                <h4>박민수</h4>
            </div>
        </div>
    </section>

    <!-- 푸터 영역 -->
    <footer>
        <div class="footer-content">
            <ul class="footer-links">
                <li><a href="#">공지사항</a></li>
                <li><a href="login">로그인</a></li>
                <li><a href="#">개인정보</a></li>
            </ul>
            <div class="social-icons">
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
            </div>
            <p>© 2025 3부삼조. All rights reserved.</p>
        </div>
    </footer>

</body>
</html>
