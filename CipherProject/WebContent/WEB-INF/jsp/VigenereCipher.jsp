<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/VigenereCipher.css"  type="text/css" media="screen" />



<title>VigenereCipher-Page</title>
</head>
<body>


<header class="header">
	<div class="container">
		<a class="headA" href="/CipherProject/">CipherProject</a>
	</div>
</header>


<section class="con">
	<div class="container">
	<div class="photoA">
	<div class="container">
		<h1>VigenereCipher</h1>
	</div>
	<div class="container">
		<ol>
		<strong>-目次-</strong>
		<li>VigenereCipherとは...</li>
		<li>暗号の仕組み ～ 暗号化と復号化</li>
		<li>VigenereCipherの使い方</li>
		</ol>
	</div>
		<a class="urlA" href="http://localhost/VigenereCipher/VigenereCipher">これを使ってみる</a>
	</div>
		<div class="text">
			<h3>1.VigenereCipherとは...</h3>
				<p>VigenereCipherは16世紀初頭頃、ブレーズ・ド・ヴィジュネルによってvigenereCipherを実用的な暗号として作り上げました。<br>
					というのも、VigenereCipherの原型は1460年頃レオン・バティスタ・アルベルティから始まり、その後、ドイツの修道院長ヨハネス・トリテミウス、イタリアのジョヴァンニ・ポルタがその仕事を受け継ぎ、最後に彼らの考えをまとめ上げたのがブレーズ・ド・ヴィジュネルなのです。</p>

			<h3>2.暗号の仕組み ～ 暗号化と復号化</h3>
				<p>vigenereCipherは先ずヴィジュネル方陣を用意します（図.1）。鍵は文字を使います。その鍵の文字にヴィジュネル方陣に対応させながら平文を暗号文に変化させていきます。</p>
				<legend>図.1 ヴィジュネル方陣</legend>
				<img src="img/VigenereCipher-jpeg/VigenereSquare.jpg"alt="fig.1"><br><br><br>

				<h4>暗号化</h4>
					<p>例えば、次の平文"Hello"を鍵"dog"で暗号化するとこうなります（図.2）。</p>

					<legend>図.2</legend>
					<img class="imgA" src="img/VigenereCipher-jpeg/VigenereCipher_gigure_1.jpg" alt="fig.2">

					<p>平文の最初の"H"は"K"に変換されています。これは鍵の"d"と対応するヴィジュネル暗号の３行目を用いて"H"を"K"に変換したのです（図.3）。</p>

					<legend>図.3</legend>
					<img src="img/VigenereCipher-jpeg/VigenereCipher_gigure_2.jpg" alt="fig.3">

					<p>同様に平文の"e"は鍵の"o"（ヴィジュネル方陣の１４行目）によって"s"に変換されて、平文の"l"は鍵の"g"（ヴィジュネル方陣の６行目）によって"r"変換されます。<br>
						さて、鍵は"dog"の三文字ですが、続く二文字目の"l"は何で変換されるでしょうか。鍵は平文の文字数に対して再利用されて、"l"は鍵の"d"（ヴィジュネル方陣の1行目）によって"o"に変換されます。</p>
					<strong>ああ...なんと環境にやさしいエコな暗号なのでしょう!!</strong><br><br>
					<p>このように続けて平文の一文字ずつを暗号化してやると、最終的に暗号文"Ksroc crfrg"が出来ます。暗号化の過程を確認してください（図.4）。</p>

					<legend>図.4</legend>
					<img  class="imgA" src="img/VigenereCipher-jpeg/VigenereCipher_gigure_3.jpg" alt="fig.4"><br><br>

				<h4>復号化</h4>
					<p>復号化の手順は暗号化で使った鍵"dog"をヴィジュネル方陣の行に対応をさせながら、暗号文"Ksroc crfrg"を一文字ずつ復号化していけば良いわけです。</p>
			<h3>3.当サイトVigenereCipherの使い方</h3>
				<img class="imgB" src="img/VigenereCipher-jpeg/VigenereCipher_page.jpg" alt="VigenereCipher_page"><br><br>
				<p>ここではVigenereCipherの使い方の手順について説明します。</p>
				<ol>
				<li type="I">"1."では、あなたのメッセージを暗号化（encrypt）または復号化（decrypt）するのかを選択してください。</li><br>
				<li type="I">"2."では、暗号化（または復号化）に使う鍵の文字を入力してください。鍵の文字に対応するヴィジュネル方陣は以下の図（図.5）のとおりです。</li><br>
				<li type="I">"3."では、あなたのメッセージを入れてください。ただし、暗号化（または復号化）できるのはアルファベットの小文字（a-z）と大文字（A-Z）のみとなっております。</li><br>
				<li type="I">テキストフォームの下にある"Encrypt or Decrypt"のフォーム入力ボタンで"1.と2."の設定に基づいて"3."のテキストフォームに入力されたメッセージを
					暗号化（または復号化）します。"Erasing"はテキストフォームのメッセージを消去できます。結果は別途にWebページが表示されます。</li>
				</ol>
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
		</div>
	</div>
</footer>

</body>
</html>

