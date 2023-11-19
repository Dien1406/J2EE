<%-- 
    Document   : postResult
    Created on : Nov 19, 2023, 11:45:28 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kết quả bài đăng</title>
    </head>
    <body>
        <h2>Bài viết đã được đăng:</h2>
    <p>Nội dung: ${post.content}</p>
    <img src="images/${imageStream.name}">
    </body>
</html>
