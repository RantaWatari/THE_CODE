package model;

import java.io.Serializable;

public class Text implements Serializable{
	private String clearText;
	StringBuilder encodeText = new StringBuilder();
	StringBuilder decodeText = new StringBuilder();
	private int key;

	public String getClearText(){ return this.clearText; }
	public void setText(String clearText){ this.clearText = clearText; }

	public StringBuilder getEncodeText(){ return this.encodeText; }
	public void setEncodeText(StringBuilder text){ this.encodeText = text; }

	public StringBuilder getDecodeText(){ return this.decodeText; }
	public void setDecodeText(StringBuilder text){ this.decodeText = text; }

	public int getKey(){ return this.key; }
	public void setKey(int key){ this.key = key; }
}
