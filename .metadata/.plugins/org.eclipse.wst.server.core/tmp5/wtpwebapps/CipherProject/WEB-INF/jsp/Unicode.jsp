<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Unicode-TestPage</title>
</head>
<body>


<h1>UnicodeTest!!</h1>
<%
String c = "あ";
int code = (int)'あ';
String Num = "\u0041\u0042\u0043\u0044\u0045\u0021\u003F";
String aiueo = "\u3042\u3044\u3046\u3048\u304A\u0021\u003F" + "-> \u0031";
String ezipt = "\\u0031";
String eziptA = "\\u0031";

byte[] utf8 = c.getBytes("UTF-8");
byte[] utf16 = c.getBytes("UTF-16");
 %>

<%= c %><br>
<%= code %><br>
<%= Num %><br>
<%= aiueo %><br>
<%= ezipt %><br>
<%= eziptA.substring(1,ezipt.length()) %><br><br>
<%= utf8 %><br>
<%= utf16 %><br>
<br>
<%= 29%26 %><br>
<%= 26%26 %><br>

</body>
</html>