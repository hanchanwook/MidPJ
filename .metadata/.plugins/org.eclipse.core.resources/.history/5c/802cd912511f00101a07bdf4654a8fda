<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="3부상조 - 내 개인정보">
    <title>3부상조 - 내 개인정보</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap" rel="stylesheet">
    <link href="<c:url value='/resources/css/Header.css' />" rel="stylesheet">
    <link href="<c:url value='/resources/css/Footer.css' />" rel="stylesheet">
    <script src="https://cdn.tailwindcss.com"></script>
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: 'Roboto', sans-serif;
            line-height: 1.6;
            background-color: #f0f8ff;
            color: #333;
        }
        .info-section {
            padding: 4rem 2rem;
            max-width: 800px;
            margin: 0 auto;
        }
        .info-section h1 {
            font-size: 2.5rem;
            color: #333;
            text-align: center;
            margin-bottom: 2rem;
        }
        .info-container {
            margin-bottom: 2rem;
        }
        .info-table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        .info-table th, .info-table td {
            padding: 1rem;
            text-align: left;
            border: 1px solid #e5e7eb;
        }
        .info-table th {
            background-color: #f0f8ff;
            color: #333;
            font-weight: 700;
            width: 25%;
        }
        .info-table td {
            color: #666;
        }
        .info-table input, .info-table select {
            width: 100%;
            padding: 0.5rem;
            border: 1px solid #d1d5db;
            border-radius: 4px;
            color: #333;
        }
        .info-table input:focus, .info-table select:focus {
            outline: none;
            border-color: #87ceeb;
            box-shadow: 0 0 0 3px rgba(135, 206, 235, 0.1);
        }
        .profile-pic-preview {
            max-width: 100px;
            max-height: 100px;
            border-radius: 4px;
            margin-top: 0.5rem;
        }
        .btn {
            padding: 0.75rem 1.5rem;
            background-color: #87ceeb;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        .btn:hover {
            background-color: #6ab7d5;
            transform: scale(1.05);
        }
        .btn-container {
            text-align: center;
            margin-top: 1rem;
        }
        @keyframes slideUp {
            from { transform: translateY(20px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }
        .section-animation {
            opacity: 0;
            transform: translateY(20px);
            animation: slideUp 0.8s ease-out forwards;
        }
    </style>
</head>
<body>
    <header>
        <div id="logo"><a href="/">3부상조</a></div>
        <nav>
            <ul class="nav-menu">
                <li><a href="#">공지사항</a></li>
                <li><a href="login">로그인</a></li>
                <li><a href="<c:url value='/myinfo' />">개인정보</a></li>
            </ul>
        </nav>
    </header>

    <section class="info-section section-animation">
        <h1>인사 및 재고 정보 등록 및 등록</h1>
        
        <form action="<c:url value='/myinfo/save' />" method="post" enctype="multipart/form-data">
            <div class="info-container">
                <table class="info-table">
                    <tr>
                        <th>사건</th>
                        <td>
                            <table class="info-table">
                                <tr>
                                    <th>이름</th>
                                    <td><input type="text" name="name" value="${user.name != null ? user.name : '홍길동'}" required></td>
                                </tr>
                                <tr>
                                    <th>본인 사진</th>
                                    <td>
                                        <input type="file" name="profilePicture" accept="image/*">
                                        <c:if test="${not empty user.profilePicture}">
                                            <img src="${user.profilePicture}" alt="Profile Picture" class="profile-pic-preview">
                                        </c:if>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <th>소속</th>
                        <td>
                            <table class="info-table">
                                <tr>
                                    <th>사번</th>
                                    <td><input type="text" name="employeeId" value="${user.employeeId != null ? user.employeeId : '12345'}" required></td>
                                </tr>
                                <tr>
                                    <th>이메일</th>
                                    <td><input type="email" name="email" value="${user.email != null ? user.email : 'hong@example.com'}" required></td>
                                </tr>
                                <tr>
                                    <th>전화번호</th>
                                    <td><input type="text" name="phone" value="${user.phone != null ? user.phone : '010-1234-5678'}" required></td>
                                </tr>
                                <tr>
                                    <th>생년월일</th>
                                    <td><input type="date" name="dateOfBirth" value="${user.dateOfBirth != null ? user.dateOfBirth : '1995-01-01'}" required></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>

            <div class="info-container">
                <table class="info-table">
                    <tr>
                        <th>임사일</th>
                        <td>
                            <table class="info-table">
                                <tr>
                                    <th>직무</th>
                                    <td><input type="text" name="job" value="${user.job != null ? user.job : '개발자'}" required></td>
                                </tr>
                                <tr>
                                    <th>입사일</th>
                                    <td><input type="date" name="hireDate" value="${user.hireDate != null ? user.hireDate : '2023-01-01'}" required></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <th>퇴사일</th>
                        <td>
                            <table class="info-table">
                                <tr>
                                    <th>급여구분</th>
                                    <td>
                                        <select name="salaryType">
                                            <option value="정규" ${user.salaryType == '정규' ? 'selected' : ''}>정규</option>
                                            <option value="비정규" ${user.salaryType == '비정규' ? 'selected' : ''}>비정규</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th>급여부분</th>
                                    <td><input type="number" name="salary" value="${user.salary != null ? user.salary : '3000000'}" required> 원</td>
                                </tr>
                                <tr>
                                    <th>성별</th>
                                    <td>
                                        <select name="gender">
                                            <option value="남성" ${user.gender == '남성' ? 'selected' : ''}>남성</option>
                                            <option value="여성" ${user.gender == '여성' ? 'selected' : ''}>여성</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th>채용구분</th>
                                    <td>
                                        <select name="employmentType">
                                            <option value="신입" ${user.employmentType == '신입' ? 'selected' : ''}>신입</option>
                                            <option value="경력" ${user.employmentType == '경력' ? 'selected' : ''}>경력</option>
                                        </select>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>

            <div class="btn-container">
                <button type="submit" class="btn">수정</button>
                <button type="submit" class="btn" formaction="<c:url value='/myinfo/register' />">등록</button>
            </div>
        </form>
    </section>

    <footer>
        <div class="footer-content">
            <ul class="footer-links">
                <li><a href="#">공지사항</a></li>
                <li><a href="login">로그인</a></li>
                <li><a href="<c:url value='/myinfo' />">개인정보</a></li>
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