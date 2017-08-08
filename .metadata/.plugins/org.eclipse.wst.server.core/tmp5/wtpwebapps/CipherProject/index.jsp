<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/home.css"  type="text/css" media="screen" />
<title>CipherProject-HOME</title>
</head>
<body>

<header class="header">
	<div class="container">
	<a class="headA" href="/CipherProject/">CipherProject</a>
	</div>
</header>

<section class="conA">
	<div class="container">
		<hr>
		<h1>CipherProject</h1>
		<p>
		ここは"CipherProject"のトップページです。<br>
		下記のリンクから暗号化できるページに飛ぶことが出来ます。
		</p>
		<hr>
	</div>
</section>


<section class="conB">
	<div class="container">
		<div class="text">
			<h2>CaesarShiftCipher</h2>
			<p>カエサルシフト暗号は対応するアルファベットの文字列をずらします。<a class="urlB" href="/CipherProject/CipherMore?page=1">MORE...</a></p>
			<a class="urlA" href="http://localhost/CaesarShiftCipher/CaesarShiftCipher">これを使ってみる</a><br>
		</div>
		<div class="text">
			<h2>ViginereCipher</h2>
			<p>ヴィジュネル暗号は鍵をもとに一文字ずつにカエサルシフト暗号を掛けます。<a class="urlB" href="/CipherProject/CipherMore?page=2">MORE...</a></p>
			<a class="urlA" href="http://localhost/VigenereCipher/VigenereCipher">これを使ってみる</a><br>
		</div>
		<div class="text">
			<h2>Enigma</h2>
			<p>第二次世界大戦中、ヒトラー率いるナチス・ドイツ軍が使用した暗号機器です。<a class="urlB" href="/CipherProject/CipherMore?page=3">MORE...</a></p>
			<a class="urlA" href="#">SOON OPEN!!</a><br>
		</div>
	</div>
</section>

<footer>
	<div class="container">
		<div class="footA">
			<h2>CipherProject</h2>
			<p>作成者：渡利蘭太</p>
			<p>
			Hello!!CipherProject!!webサイトを作ってみました。<br>
			タイトルに特別な意味はありません。
			</p>

			<a href="/CipherProject/CipherMore?page=777">UnicodeTest</a>

		</div>
	</div>
</footer>

</body>
</html>