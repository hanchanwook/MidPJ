<!-- 최성현 -->


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="3부상조 - 급여 정보 조회">
    <title>3부상조 - 급여 정보</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap" rel="stylesheet">
    <link href="<c:url value='/resources/css/CSS.css' />" rel="stylesheet">
    <link href="<c:url value='/resources/css/CSS_working_ways.css' />" rel="stylesheet">
    <style type="text/css">
        /* Override and enhance styles for payroll info page */
        body {
            font-family: 'Roboto', sans-serif; /* Use Roboto for consistency */
        }

        main {
            margin-top: 60px;
            margin-left: 200px;
            padding: 2rem;
            max-width: calc(100% - 200px);
            min-height: calc(100vh - 60px);
            background: none; /* Remove background image for clarity */
            color: #333;
            text-align: left;
        }

        .payroll-section {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 2rem;
            max-width: 100%;
        }

        .payroll-section h2 {
            font-size: 2rem;
            color: #333;
            margin-bottom: 1rem;
            margin-left: 0; /* Override CSS_working_ways.css */
        }

        .payroll-section h4 {
            font-size: 1.2rem;
            color: #666;
            margin-bottom: 2rem;
            margin-left: 0; /* Override CSS_working_ways.css */
        }

        /* Search and Filter Area */
        .search-filter {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 2rem;
            flex-wrap: wrap;
            gap: 1rem;
        }

        .search-filter input[type="text"] {
            padding: 0.5rem;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 1rem;
            width: 200px;
        }

        .search-filter select {
            padding: 0.5rem;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 1rem;
            width: 150px;
            appearance: none;
            padding-right: 2rem;
        }

        .search-filter .total-cost {
            font-size: 1rem;
            color: #333;
            font-weight: bold;
        }

        /* Table Styles (Enhanced from CSS.css) */
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 0;
            font-size: 1rem;
            text-align: center;
        }

        table th,
        table td {
            padding: 1rem;
            border: 1px solid #ddd;
        }

        table thead {
            background-color: #87ceeb; /* Sky blue theme */
            color: #fff;
        }

        table tbody tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        table tbody tr:hover {
            background-color: #e0f4ff; /* Light sky blue on hover */
        }

        table input[type="checkbox"] {
            cursor: pointer;
        }

        /* Action Buttons */
        .action-buttons {
            margin-top: 1rem;
            display: flex;
            justify-content: flex-end;
            gap: 1rem;
        }

        .action-buttons button {
            padding: 0.5rem 1rem;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1rem;
            transition: all 0.3s ease;
        }

        .download-btn {
            background-color: #87ceeb;
            color: #fff;
        }

        .download-btn:hover {
            background-color: #6ab7d5;
        }

        .cancel-btn {
            background-color: #ccc;
            color: #333;
        }

        .cancel-btn:hover {
            background-color: #bbb;
        }

       
    </style>
</head>
<body>
    <!-- Header -->
    <header id="main-header">
        <div id="logo"><a href="/">3부상조</a></div>
        <nav>
            <ul class="nav-items">
        <li><a href="/">직원등록</a></li>
        <li><a href="/">근무 지정</a></li>
        <li><a href="/">인사 관리</a></li>
        <li><a href="/">급여</a></li>
        <li><a href="/">휴가</a></li>
      </ul>
        </nav>
    </header>

    <!-- Sidebar -->
    <aside id="sidebar">
        <nav>
            <ul>
                <li><a href="/">급여</a></li>
                <li><a href="/payrollInfo">급여 정보</a></li>
            </ul>
        </nav>
    </aside>

    <!-- Main Content -->
    <main>
        <section class="payroll-section">
            <h2>급여 정보</h2>
            <h4>내용 설명 - 본인 근무 조건 조회 (직원용)</h4>

            <!-- Search and Filter -->
            <div class="search-filter">
                <div>
                    <input type="text" placeholder="지번검색" value="001127">
                    <button class="submit-button">검색사직자</button>
                </div>
                <select>
                    <option value="2025">2025</option>
                    <option value="2024">2024</option>
                    <option value="2023">2023</option>
                </select>
                <div class="total-cost">231.20</div>
            </div>

            <!-- Payroll Table -->
            <table>
                <thead>
                    <tr>
                        <th><input type="checkbox" id="select-all"></th>
                        <th>지번검출일</th>
                        <th>지번사수</th>
                        <th>부서</th>
                        <th>직책</th>
                        <th>월급여테</th>
                        <th>운영</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>23.5.25</td>
                        <td>3</td>
                        <td>영업13팀</td>
                        <td>대리</td>
                        <td>월급지</td>
                        <td>3</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>23.2.25</td>
                        <td>2</td>
                        <td>영업팀</td>
                        <td>대리</td>
                        <td>월급지</td>
                        <td>3</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>23.1.24</td>
                        <td>1</td>
                        <td>영업3팀</td>
                        <td>대리</td>
                        <td>월급지</td>
                        <td>3</td>
                    </tr>
                </tbody>
            </table>

            <!-- Action Buttons -->
            <div class="action-buttons">
                <button class="download-btn">다운로드</button>
                <button class="cancel-btn">취소</button>
            </div>
        </section>
    </main>

    <script>
        // Select All Checkbox Functionality
        document.getElementById('select-all').addEventListener('change', function() {
            const checkboxes = document.querySelectorAll('tbody input[type="checkbox"]');
            checkboxes.forEach(checkbox => {
                checkbox.checked = this.checked;
            });
        });
    </script>
</body>
</html>