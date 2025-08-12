<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Parcel Management System</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        :root {
            --primary-color: #7c3aed;
            --accent-color: #a78bfa;
            --background-color: #f3e8ff;
            --text-color: #2d1a4a;
            --button-radius: 2rem;
            --button-shadow: 0 2px 8px rgba(124,58,237,0.08);
        }
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #f3e8ff 0%, #ede9fe 100%);
            color: var(--text-color);
            min-height: 100vh;
        }
        .main-row {
            display: flex;
            min-height: 100vh;
        }
        .image-side {
            flex: 1;
            background: url('assets/dashboard.png') center center/cover no-repeat;
            min-height: 350px;
            border-top-left-radius: 2rem;
            border-bottom-left-radius: 2rem;
            box-shadow: 0 8px 32px rgba(124,58,237,0.10);
        }
        .content-side {
            flex: 1;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 350px;
            background: rgba(255,255,255,0.85);
            border-top-right-radius: 2rem;
            border-bottom-right-radius: 2rem;
            box-shadow: 0 8px 32px rgba(124,58,237,0.10);
        }
        .card {
            width: 100%;
            max-width: 420px;
            margin: 0 auto;
            padding: 2.5rem 2rem;
            border-radius: 2rem;
            background: #fff;
            box-shadow: 0 4px 24px rgba(124,58,237,0.08);
            text-align: center;
        }
        h2 {
            font-size: 2.2rem;
            font-weight: 800;
            letter-spacing: 2px;
            color: var(--primary-color);
            text-shadow: 0 2px 8px #ede9fe;
            margin-bottom: 2rem;
        }
        .button-row {
            display: flex;
            justify-content: center;
            gap: 1.5rem;
        }
        .btn-custom {
            background: linear-gradient(90deg, var(--primary-color) 60%, var(--accent-color) 100%);
            color: #fff;
            border: none;
            padding: 0.85rem 2.2rem;
            font-size: 1.08rem;
            font-weight: 600;
            border-radius: var(--button-radius);
            box-shadow: var(--button-shadow);
            cursor: pointer;
            transition: transform 0.13s, box-shadow 0.13s, background 0.2s;
            letter-spacing: 0.5px;
            outline: none;
        }
        .btn-custom:hover, .btn-custom:focus {
            background: linear-gradient(90deg, var(--accent-color) 10%, var(--primary-color) 90%);
            transform: translateY(-2px) scale(1.04);
            box-shadow: 0 6px 18px rgba(124,58,237,0.13);
        }
        @media (max-width: 991px) {
            .main-row {
                flex-direction: column;
            }
            .image-side, .content-side {
                min-height: 200px;
                border-radius: 0;
                box-shadow: none;
            }
            .content-side {
                border-radius: 0 0 2rem 2rem;
            }
        }
        @media (max-width: 600px) {
            .card {
                padding: 1.2rem 0.5rem;
                border-radius: 1rem;
            }
            .button-row {
                flex-direction: column;
                gap: 0.8rem;
            }
            .btn-custom {
                width: 100%;
                font-size: 1rem;
                padding: 0.9rem 0;
            }
            h2 {
                font-size: 1.5rem;
            }
        }
    </style>
</head>
<body>
    <div class="main-row">
        <div class="image-side"></div>
        <div class="content-side">
            <div class="card">
                <h2>Parcel Management System</h2>
                <div class="button-row">
                    <button class="btn-custom" onclick="register()">Register</button>
                    <button class="btn-custom" onclick="login()">Login</button>
                </div>
            </div>
        </div>
    </div>
    <script>
        function register() {
            window.location.href = "register.jsp";
        }
        function login() {
            window.location.href = "login.jsp";
        }
    </script>
</body>