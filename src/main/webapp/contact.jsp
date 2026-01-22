<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, Helvetica, sans-serif;
        background-color: #f4f6f9;
    }

    .container {
        width: 100%;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .contact-box {
        width: 400px;
        background-color: #ffffff;
        padding: 30px;
        border-radius: 8px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
    }

    .contact-box h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }

    .form-group {
        margin-bottom: 15px;
    }

    .form-group label {
        display: block;
        margin-bottom: 5px;
        color: #555;
        font-weight: bold;
    }

    .form-group input,
    .form-group textarea {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 14px;
    }

    .form-group textarea {
        resize: none;
        height: 100px;
    }

    .btn-submit {
        width: 100%;
        padding: 10px;
        background-color: #007bff;
        border: none;
        color: #ffffff;
        font-size: 16px;
        font-weight: bold;
        border-radius: 4px;
        cursor: pointer;
    }

    .btn-submit:hover {
        background-color: #0056b3;
    }
</style>

</head>
<body>

<div class="container">
    <div class="contact-box">
        <h2>Contact Us</h2>
        <form action="contact" method="post">
            <div class="form-group">
                <label>Name</label>
                <input type="text" name="name" placeholder="Enter your name" required>
            </div>

            <div class="form-group">
                <label>Email</label>
                <input type="email" name="email" placeholder="Enter your email" required>
            </div>

            <div class="form-group">
                <label>Message</label>
                <textarea name="message" placeholder="Enter your message" required></textarea>
            </div>

            <button type="submit" class="btn-submit">Send Message</button>
        </form>
    </div>
</div>

</body>
</html>
