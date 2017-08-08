package model;

import java.io.Serializable;

public class Text implements Serializable{

// keyword(鍵),text(平文or暗号文),afterText(textを変換した文)のプロパティの用意。
	private int protocol, keyLen, textLen;
	private String keyWord,text;
	private StringBuilder afterText;

	public Text(){}

// getterの代行役メソッド。"スッキリわかる"のリスト10-1のマネ。
	public Text(int protocol,String keyWord,String text){
		this.protocol = protocol;
		this.keyWord = keyWord;
		this.text = text;
	}
	public int getProtocol(){ return this.protocol; }
	public String getKeyWord(){ return this.keyWord; }
	public String getText(){ return this.text; }

	public void setKeyLen(int keyLen){ this.keyLen = keyLen; }
	public int getKeyLen(){ return this.keyLen; }

	public void setTextLen(int textLen){ this.textLen = textLen; }
	public int getTextLen(){ return this.textLen; }

	public void setAfterText(StringBuilder afterText){ this.afterText = afterText; }
	public StringBuilder getAfterText(){ return this.afterText; }
}
