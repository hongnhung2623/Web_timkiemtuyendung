<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangBatDau.aspx.cs" Inherits="Web_timkiemtuyendung.TrangBatDau" %>

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
        <form id="loginForm" runat="server">
            <!-- Correcting TextBox for username -->
            <asp:TextBox ID="txtUsername" runat="server" placeholder="Tên đăng nhập" required></asp:TextBox>
            
            <!-- Correcting TextBox for password with TextMode="Password" -->
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Mật khẩu" required></asp:TextBox>
            
            <!-- Button for login -->
            <asp:Button ID="btnLogin" runat="server" Text="Đăng Nhập" OnClick="btnLogin_Click" />
            
            <!-- Label for error messages -->
            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
        </form>
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

    

    <div class="footer">
        <p>&copy; 2024 VietnamWorks. All rights reserved.</p>
    </div>

    <script>

        function loginUser(event) {
            event.preventDefault(); // Prevent the form from submitting the default way
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;

            // Check if the credentials match
            if (username === "admin" && password === "123") {
                window.location.href = "TrangChu.aspx";  // Redirect to TrangChu.aspx after successful login
            } else {
                alert("Sai tên đăng nhập hoặc mật khẩu!");
            }
        }


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

