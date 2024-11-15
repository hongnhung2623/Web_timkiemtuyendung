<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="Web_timkiemtuyendung.TrangChu" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VietnamWorks - Trang tìm việc</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            margin: 0;
            padding: 0;
        }

        .navbar {
            overflow: hidden;
            background-color: #333;
        }

            .navbar a {
                float: left;
                display: block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

                .navbar a:hover {
                    background-color: #ddd;
                    color: black;
                }

                .navbar a.active {
                    background-color: #04AA6D;
                }

        header {
            background-color: #0073e6;
            color: white;
            padding: 20px 0;
            text-align: center;
        }

            header img {
                width: 300px;
                height: 200px;
                margin: 10px;
            }

        .container {
            padding: 20px;
        }

        .job-listing {
            border: 1px solid #ddd;
            padding: 15px;
            margin: 10px 0;
            border-radius: 5px;
        }

            .job-listing img {
                width: 100%;
                max-width: 300px;
                height: auto;
                border-radius: 5px;
            }

        .footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
            position: relative;
            bottom: 0;
            width: 100%;
        }
        /* Modal styles */
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.4);
            padding-top: 60px;
        }

        .modal-content {
            background-color: #fefefe;
            margin: 5% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            max-width: 400px;
            border-radius: 5px;
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

            .close:hover,
            .close:focus {
                color: black;
                text-decoration: none;
                cursor: pointer;
            }

        .modal-content h2 {
            margin-top: 0;
        }

        .modal-content input[type="text"],
        .modal-content input[type="password"],
        .modal-content input[type="email"] {
            width: 100%;
            padding: 12px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .modal-content button {
            width: 100%;
            background-color: #04AA6D;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

            .modal-content button:hover {
                background-color: #45a049;
            }
    </style>
</head>
<body>

    <div class="navbar">
        <a class="active" href="#">Trang Chủ</a>

        <a href="#" onclick="openModal('loginModal')">Đăng Nhập</a>
        <a href="#" onclick="openModal('registerModal')">Đăng Ký</a>
    </div>

    <header>
        <img src="HinhAnh/anh13.jpg" alt="Banner 1" />
        <img src="HinhAnh/anh15.jpg" alt="Banner 2" />
        <img src="HinhAnh/anh17.jpg" alt="Banner 3" />
    </header>

    <!-- Login Modal -->
    <div id="loginModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal('loginModal')">&times;</span>
            <h2>Đăng Nhập</h2>
            <input type="text" placeholder="Tên đăng nhập" required>
            <input type="password" placeholder="Mật khẩu" required>
            <button>Đăng Nhập</button>
        </div>
    </div>

    <!-- Register Modal -->
    <div id="registerModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal('registerModal')">&times;</span>
            <h2>Đăng Ký</h2>
            <input type="text" placeholder="Tên đăng nhập" required>
            <input type="email" placeholder="Email" required>
            <input type="password" placeholder="Mật khẩu" required>
            <button>Đăng Ký</button>
        </div>
    </div>

    <!-- Individual Job Detail Modals -->

<div id="jobDetailModal1" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal('jobDetailModal1')">&times;</span>
        <h2>Thông tin công việc</h2>
        <p><strong>Công ty:</strong> Samsung - Phổ Yên, Thái Nguyên</p>
        <p><strong>Mô tả:</strong> Sản xuất các thiết bị điện tử, điện thoại thông minh.</p>
        <p><strong>Lương:</strong> 7-10 triệu/tháng</p>
        <p><strong>Yêu cầu:</strong> Nam/Nữ, có CCCD, đi làm ngay</p>
        <button onclick="openModal('applicationModal')">Gửi Hồ Sơ</button>
    </div>
</div>

<div id="jobDetailModal2" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal('jobDetailModal2')">&times;</span>
        <h2>Thông tin công việc</h2>
        <p><strong>Công ty:</strong> New One Vina - KCN Điềm Thụy Phú Bình</p>
        <p><strong>Mô tả:</strong> Sản xuất linh kiện điện thoại.</p>
        <p><strong>Lương:</strong> 6-9 triệu/tháng</p>
        <p><strong>Yêu cầu:</strong> Nam/Nữ, có CCCD, làm theo ca</p>
        <button onclick="openModal('applicationModal')">Gửi Hồ Sơ</button>
    </div>
</div>

<div id="jobDetailModal3" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal('jobDetailModal3')">&times;</span>
        <h2>Thông tin công việc</h2>
        <p><strong>Công ty:</strong> SR TECH - Sông Công Thái Nguyên</p>
        <p><strong>Mô tả:</strong> Sản xuất linh kiện điện thoại.</p>
        <p><strong>Lương:</strong> 6-8 triệu/tháng</p>
        <p><strong>Yêu cầu:</strong> Nam/Nữ, có kinh nghiệm 6 tháng</p>
        <button onclick="openModal('applicationModal')">Gửi Hồ Sơ</button>
    </div>
    </div>

    <div id="jobDetailModal4" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal('jobDetailModal3')">&times;</span>
        <h2>Thông tin công việc</h2>
        <p><strong>Công ty:</strong> Glonic - Phú Xá Thái Nguyên</p>
        <p><strong>Mô tả:</strong> Sản xuất linh kiện điện thoại.</p>
        <p><strong>Lương:</strong> 6-8 triệu/tháng</p>
        <p><strong>Yêu cầu:</strong> Nam/Nữ, có kinh nghiệm 6 tháng</p>
        <button onclick="openModal('applicationModal')">Gửi Hồ Sơ</button>
    </div>
        </div>

        <div id="jobDetailModal5" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal('jobDetailModal3')">&times;</span>
        <h2>Thông tin công việc</h2>
        <p><strong>Công ty:</strong> Hansol - Phổ Yên Thái Nguyên</p>
        <p><strong>Mô tả:</strong> Sản xuất linh kiện điện thoại.</p>
        <p><strong>Lương:</strong> 6-8 triệu/tháng</p>
        <p><strong>Yêu cầu:</strong> Nam/Nữ, có kinh nghiệm 6 tháng</p>
        <button onclick="openModal('applicationModal')">Gửi Hồ Sơ</button>
    </div>

</div>


    <!-- Modal Gửi Hồ Sơ -->
    <div id="applicationModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal('applicationModal')">&times;</span>
            <h2>Gửi Hồ Sơ</h2>
            <input type="text" placeholder="Họ và tên" required>
            <input type="email" placeholder="Email" required>
            <textarea placeholder="Giới thiệu về bản thân" required></textarea>
            <button>Gửi Hồ Sơ</button>
        </div>
    </div>


    <div class="container">
        <h2>Danh sách việc làm</h2>

        <div class="job-listing">
        <h3>Tuyển dụng công nhân</h3>
        <img src="HinhAnh/anh1.jpg" alt="Job 1 Image" />
        <p>Công ty Samsung - Phổ Yên- Thái Nguyên</p>
        <p>Mô tả công việc: sản xuất các thiết bị điện tử, điện thoại thông minh.</p>
        <button onclick="openModal('jobDetailModal1')">Xem chi tiết</button>
    </div>

    <div class="job-listing">
        <h3>Tuyển dụng công nhân</h3>
        <img src="HinhAnh/anh4.jpg" alt="Job 2 Image" />
        <p>Công ty New One Vina - KCN Điềm Thụy Phú Bình</p>
        <p>Mô tả công việc: Sản xuất linh kiện điện thoại.</p>
        <button onclick="openModal('jobDetailModal2')">Xem chi tiết</button>
    </div>

    <div class="job-listing">
        <h3>Tuyển dụng công nhân</h3>
        <img src="HinhAnh/anh6.jpg" alt="Job 3 Image" />
        <p>Công ty SR TECH - Sông Công Thái Nguyên</p>
        <p>Mô tả công việc: Sản xuất linh kiện điện thoại.</p>
        <button onclick="openModal('jobDetailModal3')">Xem chi tiết</button>
    </div>

        <div class="job-listing">
            <h3>Tuyển dụng công nhân</h3>
            <img src="HinhAnh/anh10.jpg" alt="Job 4 Image" />
            <p>Công ty Glonic - Phú Xá Thái Nguyên</p>
            <p>Mô tả công việc: Sản xuất linh kiện điện thoại.</p>
            <button onclick="openModal('jobDetailModal4')">Xem chi tiết</button>
        </div>

        <div class="job-listing">
            <h3>Tuyển dụng công nhân</h3>
            <img src="HinhAnh/anh11.jpg" alt="Job 5 Image" />
            <p>Công ty Hansol - Phổ Yên Thái Nguyên</p>
            <p>Mô tả công việc: Sản xuất linh kiện điện thoại.</p>
            <button onclick="openModal('jobDetailModal5')">Xem chi tiết</button>
        </div>

    </div>

    <div class="footer">
        <p>&copy; 2024 VietnamWorks. All rights reserved.</p>
    </div>

    <script>
        function openModal(modalId) {
            document.getElementById(modalId).style.display = "block";
        }

        function closeModal(modalId) {
            document.getElementById(modalId).style.display = "none";
        }

        // Close the modal when clicking outside of it
        window.onclick = function (event) {
            if (event.target.className === 'modal') {
                event.target.style.display = "none";
            }
        }
    </script>

</body>
</html>
