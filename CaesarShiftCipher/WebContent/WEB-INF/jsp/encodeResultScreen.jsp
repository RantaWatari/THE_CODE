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
<title>カエサルシフトサイファー-暗号化完了画面</title>
<link rel="stylesheet" href="css/ResultScreen.css"  type="text/css" media="screen" />
</head>
<body>

<section class="conA">
<div class="containner">
<strong>平文を暗号化しました</strong><br>
<p>Key: <%= text.getKey() %> （復号に使ってください）</p><br>
CipherText↓<br>
<hr><br>
<p><%= text.getEncodeText().toString() %></p><br>
<hr>
<a href="/CaesarShiftCipher/CaesarShiftCipher">入力画面に戻る</a><br><br>
</div>
</section>

</body>
</html>