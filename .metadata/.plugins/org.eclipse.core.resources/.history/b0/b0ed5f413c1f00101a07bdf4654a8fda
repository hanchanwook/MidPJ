<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항 등록</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;700&display=swap" rel="stylesheet">
    <link href="<c:url value='/resources/css/Header.css' />" rel="stylesheet">
    <link href="<c:url value='/resources/css/Footer.css' />" rel="stylesheet">
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
        }
        .form-container {
            max-width: 800px;
        }
        .form-label {
            font-weight: 700;
            color: #374151;
        }
        .form-input, .form-textarea, .form-file {
            border: 1px solid #d1d5db;
            border-radius: 0.375rem;
            padding: 0.5rem 1rem;
            width: 100%;
            transition: border-color 0.2s ease-in-out;
        }
        .form-input:focus, .form-textarea:focus, .form-file:focus {
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
        .btn-secondary {
            background-color: #e5e7eb;
            color: #374151;
        }
        .btn-secondary:hover {
            background-color: #d1d5db;
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
        <div class="bg-white shadow rounded-lg p-6 form-container">
            <h1 class="text-2xl font-bold text-gray-800 mb-6">공지사항 등록</h1>
            <form action="<c:url value='/notice/register' />" method="post" enctype="multipart/form-data">
                <!-- Title Field -->
                <div class="mb-4">
                    <label for="title" class="form-label block mb-2">제목</label>
                    <input type="text" id="title" name="title" class="form-input" placeholder="제목을 입력하세요" required>
                </div>
                <!-- Content Field -->
                <div class="mb-4">
                    <label for="content" class="form-label block mb-2">내용</label>
                    <textarea id="content" name="content" class="form-textarea" rows="10" placeholder="내용을 입력하세요" required></textarea>
                </div>
                <!-- File Attachment Field -->
                <div class="mb-6">
                    <label for="files" class="form-label block mb-2">첨부파일 (이미지)</label>
                    <input type="file" id="files" name="files" class="form-file" accept="image/*" multiple>
                    <p class="text-sm text-gray-500 mt-1">이미지 파일(jpg, png 등)을 선택하세요. 여러 파일 업로드 가능.</p>
                </div>
                <!-- Buttons -->
                <div class="flex justify-end space-x-3">
                    <button type="submit" class="btn btn-primary">등록</button>
                    <a href="<c:url value='/notice/list' />" class="btn btn-secondary">취소</a>
                </div>
            </form>
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
</body>
</html>