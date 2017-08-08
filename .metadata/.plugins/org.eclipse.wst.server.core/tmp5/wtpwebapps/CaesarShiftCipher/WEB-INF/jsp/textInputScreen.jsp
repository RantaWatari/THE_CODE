<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/textInputScreen.css"  type="text/css" media="screen" />
<title>カエサルシフトサイファー-入力画面</title>
</head>
<body>

<section class="conA">
<div class="containner">
<h1>CaesarShiftCipher</h1>
<form action="/CaesarShiftCipher/CaesarShiftCipher" method="post">
<p>
１．暗号化（encrypt）か復号化（decrypt）のどちらかを選択してください。<br>
ENCRYPT:<input type="radio" name="protocol" value="0" checked="checked">
DECRYPT:<input type="radio" name="protocol" value="1">
<br>
２．暗号の鍵を選択してください。<br>
KEY:
<select name="key">
  <option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option>
  <option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option>
  <option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option>
  <option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option>
  <option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option>
  <option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option>
  <option value="24">24</option><option value="25">25</option>
</select>
<br>
３．下記のテキストフォームに平文(平仮名・片仮名・漢字は対応してません)を入力してください。<br>
TEXTFORM:<br>
<textarea name="clearText" placeholder="ここに平文を入力してください。" rows=15 cols=95 ></textarea><br>
<input type="submit" value="Encrypt　or Decrypt">
<input type="reset" value="Erasing">
</form>
<br><br>
<a href="http://localhost/CipherProject/">HOMEに戻る</a><br>
</div>
</section>

</body>
</html>