<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/Top.css"  type="text/css" media="screen" />
<title>VigenereCipher-TOP</title>
</head>
<body>

<section class="conA">
	<div class="containner">
		<h1>VigenereCipher</h1>
		<form action="/VigenereCipher/VigenereCipher" method="post">
			<p>
			1.暗号化または復号化を行いますか？<br>
			ENCRYPT:<input type="radio" name="protocol" value="0" checked="checked">
			DECRYPT:<input type="radio" name="protocol" value="1"><br>
			2.暗号の鍵を入力してください。<br>
			KEY:<input type="password" name="keyWord"><br>
			3.下記のテキストフォームに平文を入力してください。<br>
			<textarea name="text" placeholder="平文または暗号文を入力してください。" rows=15 cols=90></textarea><br>
			</p>
			<div class="inputA">
				<input type="submit" value="Encrypt or Decrypt">
				<input type="reset" value="Erasing">
			</div>
		</form>
		<br><br>
		<a href="http://localhost/CipherProject/">HOMEに戻る</a><br>
	</div>
</section>

</body>
</html>