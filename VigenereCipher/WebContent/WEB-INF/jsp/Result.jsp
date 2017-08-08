<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<%@ page import="model.Text" %>
<% Text textProperty = (Text) request.getAttribute("text"); %>
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/Result.css"  type="text/css" media="screen" />
<title>VigenereCipher-RESULT</title>
</head>
<body>
<section class="conA">
<div class="containner">
<% if(textProperty.getProtocol() == 0){ %>
	<h1>暗号化しました</h1>
<% }else if(textProperty.getProtocol() == 1){ %>
	<h1>復号化しました</h1>
<% } %>
<p>
KEY:<%= textProperty.getKeyWord() %><br>
TEXT↓<br>
</p>
<hr>
<p><%= textProperty.getAfterText().toString() %></p><br>
<hr>
<a href="/VigenereCipher/VigenereCipher">入力画面に戻る</a><br><br>
</div>
</section>
</body>
</html>