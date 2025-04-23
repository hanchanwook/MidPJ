<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항 상세</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;700&display=swap" rel="stylesheet">
    <link href="<c:url value='/resources/css/Header.css' />" rel="stylesheet">
    <link href="<c:url value='/resources/css/Footer.css' />" rel="stylesheet">
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
        }
        .comment-container {
            max-width: 800px;
        }
        .comment-label {
            font-weight: 700;
            color: #374151;
        }
        .comment-textarea {
            border: 1px solid #d1d5db;
            border-radius: 0.375rem;
            padding: 0.5rem 1rem;
            width: 100%;
            transition: border-color 0.2s ease-in-out;
        }
        .comment-textarea:focus {
            outline: none;
            border-color: #3b82f6;
            box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
        }
        .btn {
            padding: 0.5rem 1.5rem;
            border-radius: 0.375rem;
            font-weight: 500;
            transition: background-color 0.2s ease-in-out;
        }
        .btn-primary {
            background-color: #3b82f6;
            color: white;
        }
        .btn-primary:hover {
            background-color: #2563eb;
        }
        .comment-item {
            border-bottom: 1px solid #e5e7eb;
            padding: 1rem 0;
        }
        .comment-meta {
            color: #6b7280;
            font-size: 0.875rem;
        }
    </style>
</head>
<body class="bg-gray-100">
    <!-- Header -->
    <header>
        <div id="logo">
            <a href="#">3부삼조</a>
        </div>
        <nav class="nav-menu">
            <ul class="flex">
                <li><a href="">홈</a></li>
                <li><a href="">회사소개</a></li>
                <li><a href="">공지사항</a></li>
                <li><a href="">고객지원</a></li>
            </ul>
        </nav>
    </header>

    <!-- Main Content -->
    <main class="max-w-4xl mx-auto mt-8 px-4 sm:px-6 lg:px-8">
        <div class="bg-white shadow rounded-lg p-6">
            <!-- Post Title -->
            <h1 class="text-2xl font-bold text-gray-800 mb-4">${notice.title}</h1>
            <!-- Post Meta -->
            <div class="flex items-center text-gray-500 text-sm mb-6">
                <span>작성일: ${notice.createdDate}</span>
            </div>
            <!-- Post Content -->
            <div class="prose max-w-none text-gray-700">
                <p>${notice.content}</p>
            </div>
            <!-- Comment Section -->
            <div class="comment-container mt-8">
                <h2 class="text-xl font-bold text-gray-800 mb-4">댓글</h2>
                <!-- Comment Form -->
                <form action="<c:url value='/notice/${notice.id}/comment' />" method="post" class="mb-6">
                    <div class="mb-4">
                        <label for="comment" class="comment-label block mb-2">댓글 작성</label>
                        <textarea id="comment" name="comment" class="comment-textarea" rows="4" placeholder="댓글을 입력하세요" required></textarea>
                    </div>
                    <div class="flex justify-end">
                        <button type="submit" class="btn btn-primary">댓글 등록</button>
                    </div>
                </form>
                <!-- Comment List -->
                <div class="comment-list">
                    <c:forEach var="comment" items="${notice.comments}">
                        <div class="comment-item">
                            <div class="comment-meta mb-1">
                                <span>${comment.author}</span> | <span>${comment.createdDate}</span>
                            </div>
                            <p class="text-gray-700">${comment.content}</p>
                        </div>
                    </c:forEach>
                    <c:if test="${empty notice.comments}">
                        <p class="text-gray-500">아직 댓글이 없습니다.</p>
                    </c:if>
                </div>
            </div>
            <!-- Back Button -->
            <div class="mt-8">
                <a href="">목록으로</a>
            </div>
        </div>
    </main>

    <!-- Footer -->
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
            <p>© 2025 회사명. All rights reserved.</p>
        </div>
    </footer>

    <!-- JavaScript for Mobile Menu Toggle -->
    <script>
    </script>
</body>
</html>