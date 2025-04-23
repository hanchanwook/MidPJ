<!-- 최성현 -->


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>3부상조 - 메인 페이지</title>
<style type="text/css">
/* Reset default styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Arial', sans-serif;
    line-height: 1.6;
    background-color: #f0f8ff; /* Light sky blue background */
    color: #333;
}

/* Header Styles */
#main-header {
    background-color: #87ceeb; /* Sky blue theme */
    padding: 1rem 2rem;
    display: flex;
    justify-content: space-between;
    align-items: center;
    position: fixed;
    width: 100%;
    top: 0;
    z-index: 1000;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

#logo a {
    color: #fff;
    text-decoration: none;
    font-size: 1.5rem;
    font-weight: bold;
}

.nav-items {
    list-style: none;
    display: flex;
    gap: 1.5rem;
}

.nav-items li a {
    color: #fff;
    text-decoration: none;
    padding: 0.5rem 1rem;
    transition: all 0.3s ease;
    font-size: 1rem;
}

.nav-items li a:hover {
    background-color: #6ab7d5; /* Slightly darker sky blue on hover */
    border-radius: 4px;
}

.badge {
    background-color: #ff6b6b; /* Coral red for badge */
    color: #fff;
    padding: 0.2rem 0.5rem;
    border-radius: 12px;
    font-size: 0.8rem;
}

/* Mobile Menu Button */
#mobile-menu-btn {
    display: none;
    background: none;
    border: none;
    cursor: pointer;
}

#mobile-menu-btn span {
    display: block;
    width: 25px;
    height: 3px;
    background-color: #fff;
    margin: 5px 0;
    transition: all 0.3s ease;
}

/* Mobile Menu */
#mobile-menu {
    display: none;
    position: fixed;
    top: 0;
    right: -250px;
    width: 250px;
    height: 100%;
    background-color: #87ceeb; /* Sky blue theme */
    padding: 5rem 2rem 2rem;
    transition: all 0.3s ease;
}

#mobile-menu.active {
    right: 0;
}

/* Sidebar (Aside) Styles */
#sidebar {
    position: fixed;
    top: 60px; /* Below the header */
    left: 0;
    width: 200px;
    height: calc(100vh - 60px);
    background-color: #fff;
    border-right: 1px solid #ddd;
    padding: 1rem;
    z-index: 999;
}

#sidebar nav ul {
    list-style: none;
}

#sidebar nav ul li {
    margin-bottom: 1rem;
}

#sidebar nav ul li a {
    color: #333;
    text-decoration: none;
    font-size: 1rem;
    display: block;
    padding: 0.5rem;
    transition: all 0.3s ease;
}

#sidebar nav ul li a:hover {
    background-color: #e0f4ff; /* Very light sky blue on hover */
    border-radius: 4px;
    color: #4682b4; /* Steel blue for text on hover */
}

/* Main Content */
main {
    margin-top: 60px; /* Space for header */
    margin-left: 200px; /* Space for sidebar */
    padding: 2rem;
    max-width: calc(100% - 200px);
    min-height: calc(100vh - 60px);
    background-color: #f0f8ff; /* Match body background */
}

/* Attendance Section */
.attendance-section {
    max-width: 800px;
    margin: 0 auto;
}

.attendance-section h1 {
    font-size: 2rem;
    color: #333;
    margin-bottom: 1.5rem;
    text-align: left;
}

.date-display {
    font-size: 1.2rem;
    color: #333;
    margin-bottom: 1.5rem;
    text-align: right;
}

/* Card Container */
.card-container {
    display: flex;
    gap: 2rem;
    justify-content: center;
    flex-wrap: wrap;
}

/* Attendance Card */
.attendance-card {
    background-color: #87ceeb; /* Sky blue theme */
    border-radius: 8px;
    padding: 1.5rem;
    width: 250px;
    text-align: center;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.attendance-card img {
    width: 100px;
    height: auto;
    margin-bottom: 1rem;
}

.attendance-card h2 {
    font-size: 1.5rem;
    color: #333;
    margin-bottom: 1rem;
}

.attendance-card .time {
    font-size: 2rem;
    color: #333;
    margin-bottom: 0.5rem;
}

.attendance-card .date {
    font-size: 1rem;
    color: #666;
    margin-bottom: 1rem;
}

.attendance-card .btn {
    display: inline-block;
    padding: 0.75rem 1.5rem;
    background-color: #6ab7d5; /* Slightly darker sky blue */
    color: #fff;
    text-decoration: none;
    border-radius: 4px;
    transition: all 0.3s ease;
    border: none;
    cursor: pointer;
    width: 100%;
    font-size: 1rem;
}

.attendance-card .btn:hover {
    background-color: #5aa4c2; /* Even darker on hover */
    transform: translateY(-2px) scale(1.02); /* Lift effect */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Shadow for depth */
}

/* Responsive Design */
@media (max-width: 768px) {
    /* Hide desktop nav and show mobile menu button */
    .nav-items {
        display: none;
    }

    #mobile-menu-btn {
        display: block;
    }

    #mobile-menu {
        display: block;
    }

    /* Hide sidebar on mobile */
    #sidebar {
        display: none;
    }

    /* Adjust main content for mobile */
    main {
        margin-left: 0;
        max-width: 100%;
    }

    .attendance-section h1 {
        font-size: 1.5rem;
    }

    .date-display {
        font-size: 1rem;
    }

    .attendance-card {
        width: 100%;
        max-width: 300px;
    }
}

/* Additional Styling */
a {
    transition: color 0.3s ease;
}

a:hover {
    color: #4682b4; /* Steel blue for links on hover */
}
</style>
</head>
<body>
    <header id="main-header">
        <div id="logo"><a href="/">3부상조</a></div>
        <nav>
            <ul class="nav-items">
                <li><a href="/">거래처 등록</a></li>
                <li><a href="/cart">품목 등록 <span class="badge">0</span></a></li>
                <li><a href="/orders">재고 조정</a></li>
                <li><a href="/signup">구매 관리</a></li>
                <li><a href="/login">판매 관리</a></li>
            </ul>
        </nav>
        <button id="mobile-menu-btn">
            <span></span>
            <span></span>
            <span></span>
        </button>
    </header>

    <!-- Mobile Menu -->
    <aside id="mobile-menu">
        <nav>
            <ul class="nav-items">
                <li><a href="/">거래처 등록</a></li>
                <li><a href="/cart">품목 등록</a></li>
                <li><a href="/orders">재고 조정</a></li>
                <li><a href="/signup">구매 관리</a></li>
                <li><a href="/login">판매 관리</a></li>
            </ul>
        </nav>
    </aside>

    <!-- Sidebar for Desktop -->
    <aside id="sidebar">
        <nav>
            <ul>
                <li><a href="/">거래처 등록</a></li>
                <li><a href="/cart">품목 등록</a></li>
                <li><a href="/orders">재고 조정</a></li>
                <li><a href="/signup">구매 관리</a></li>
                <li><a href="/login">판매 관리</a></li>
            </ul>
        </nav>
    </aside>

    <!-- Main Content -->
    <main>
        <section class="attendance-section">
            <h1>출퇴근 등록</h1>
            <div class="date-display">< 2025.4.3</div>
            <div class="card-container">
                <div class="attendance-card">
                    <img src="https://via.placeholder.com/100x100?text=출근아이콘" alt="출근 아이콘">
                    <h2>출근하기</h2>
                    <div class="time" id="checkin-time">00:00</div>
                    <div class="date" id="checkin-date">9:00</div>
                    <button class="btn" onclick="recordCheckin()">출근 등록</button>
                </div>
                <div class="attendance-card">
                    <img src="https://via.placeholder.com/100x100?text=퇴근아이콘" alt="퇴근 아이콘">
                    <h2>퇴근하기</h2>
                    <div class="time" id="checkout-time">00:00</div>
                    <div class="date" id="checkout-date">00:00:00</div>
                    <button class="btn" onclick="recordCheckout()">퇴근 등록</button>
                </div>
            </div>
        </section>
    </main>

    <script>
        // Format time as HH:MM
        function formatTime(date) {
            return date.toTimeString().slice(0, 5);
        }

        // Format date as YYYY.MM.DD HH:MM:SS
        function formatDate(date) {
            return `${date.getFullYear()}.${(date.getMonth() + 1).toString().padStart(2, '0')}.${date.getDate().toString().padStart(2, '0')} ${date.toTimeString().slice(0, 8)}`;
        }

        // Record check-in time
        function recordCheckin() {
            const now = new Date();
            const time = formatTime(now);
            const date = formatDate(now);
            
            // Update display
            document.getElementById('checkin-time').textContent = time;
            document.getElementById('checkin-date').textContent = date;
            
            // Save to localStorage
            localStorage.setItem('checkin-time', time);
            localStorage.setItem('checkin-date', date);
        }

        // Record check-out time
        function recordCheckout() {
            const now = new Date();
            const time = formatTime(now);
            const date = formatDate(now);
            
            // Update display
            document.getElementById('checkout-time').textContent = time;
            document.getElementById('checkout-date').textContent = date;
            
            // Save to localStorage
            localStorage.setItem('checkout-time', time);
            localStorage.setItem('checkout-date', date);
        }

        // Load saved times on page load
        window.onload = function() {
            const checkinTime = localStorage.getItem('checkin-time');
            const checkinDate = localStorage.getItem('checkin-date');
            const checkoutTime = localStorage.getItem('checkout-time');
            const checkoutDate = localStorage.getItem('checkout-date');

            if (checkinTime && checkinDate) {
                document.getElementById('checkin-time').textContent = checkinTime;
                document.getElementById('checkin-date').textContent = checkinDate;
            }

            if (checkoutTime && checkoutDate) {
                document.getElementById('checkout-time').textContent = checkoutTime;
                document.getElementById('checkout-date').textContent = checkoutDate;
            }
        };
    </script>
</body>
</html>