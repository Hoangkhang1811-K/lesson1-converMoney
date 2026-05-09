<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/9/2026
  Time: 3:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Chuyển đổi tiền tệ</title>
</head>
<body>
<h2>Ứng dụng chuyển đổi tiền tệ</h2>
<form action="convert" method="post">
    <label>USD: </label>
    <input type="number" step="0.01" name="usd" required />
    <br><br>

    <label>Tỉ giá (VND/USD): </label>
    <input type="number" step="0.01" name="rate" value="25000" required />
    <br><br>

    <button type="submit">Chuyển đổi</button>
</form>
<hr>
<h3>Tính năng khác:</h3>
<a href="dictionary">👉 Chuyển đến Ứng dụng Từ điển Anh - Việt</a>
</body>
</html>
