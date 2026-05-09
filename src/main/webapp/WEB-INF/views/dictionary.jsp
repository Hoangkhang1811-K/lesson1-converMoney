<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/9/2026
  Time: 3:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Từ điển Anh - Việt</title>
</head>
<body>
<h2>Ứng dụng Từ điển Anh - Việt</h2>

<!-- Form nhập từ khóa -->
<form action="dictionary" method="post">
    <label>Nhập từ tiếng Anh (hello, apple, book...): </label>
    <input type="text" name="keyword" value="${keyword}" required />
    <button type="submit">Tra cứu</button>
</form>

<br>

<!-- Hiển thị kết quả nếu có -->
<div style="color: blue;">
    <!-- Sử dụng điều kiện: nếu biến 'result' có dữ liệu thì mới hiển thị dòng này -->
    <% if(request.getAttribute("result") != null) { %>
    <h3>Kết quả: ${result}</h3>
    <% } %>
</div>

<hr>
<!-- Nút quay lại trang Chuyển đổi tiền tệ -->
<a href="./">🔙 Quay lại ứng dụng Chuyển đổi tiền tệ</a>
</body>
</html>
