<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Text" %>
<%
	Text text = (Text) request.getAttribute("text");
%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>カエサルシフトサイファー-復号化完了画面</title>
<link rel="stylesheet" href="css/ResultScreen.css"  type="text/css" media="screen" />
</head>
<body>

<section class="conA">
<div class="containner">
<strong>暗号文を復号しました</strong><br>
<p>Key:<%= text.getKey() %></p><br>
PlainText↓<br>
<hr><br>
<p><%= text.getDecodeText().toString() %></p><br>
<hr>
<a href="/CaesarShiftCipher/CaesarShiftCipher">入力画面に戻る</a><br><br>
</div>
</section>

</body>
</html>