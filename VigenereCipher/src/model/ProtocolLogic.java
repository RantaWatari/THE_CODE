package model;
public class ProtocolLogic {

	private String[] alpha = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"};
	private String[] ALPHA = {"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"};
	StringBuilder resultText = new StringBuilder();
	int[] keyArray;

// 入力されたテキストのencode処理
	public void LogicStart(Text ｔextProperty){
		int protocol = ｔextProperty.getProtocol();
		String text = ｔextProperty.getText();
		String keyWord = ｔextProperty.getKeyWord();

		keyArray = Logic1(protocol,keyWord);
		resultText = Logic2(text,keyArray);
		ｔextProperty.setAfterText(resultText);
	}

//	keyWordを数値の鍵に変換するために、alpha[j]と同値であれば、jを鍵として配列に格納する。
	public int[] Logic1(int protocol,String keyWord){

		// keyArrrayは鍵の役割を持つ。keyWordSplitはalpha[j]と比較するために使用する。
		int[] keyArray = new int[keyWord.length()];
		String keyWordSplit;

		// keyWord.lengthと同じ長さのintを要素とする配列を作成する。
		for(int i = 0; i < keyWord.length(); i++){
			keyWordSplit = keyWord.substring(i,i+1);
			keyWordSplit.toLowerCase();

			// protocol,alpha[j]と同値のものをifで分岐して、keyArray[i]に格納する（要素が鍵になる）。
			for(int j = 0; j < alpha.length; j++){
				if(protocol == 0 && keyWordSplit.matches(alpha[j])){
					keyArray[i] = j;
				}else if(protocol == 1 && keyWordSplit.matches(alpha[j])){
					keyArray[i] = alpha.length - j;
				}
			}
		}
		return keyArray;
	}

// encodeとdecodeメソッドから送られてきた、textとkeyでresultText（変換後の文章）を作るメソッド
	public StringBuilder Logic2(String text,int[] keyArray){
		String textSplit;
		int key;
		int count = 0;

		for(int j = 0; j < text.length(); j++ ){
			// clearTextから一文字ずつ取り出す。
			textSplit = text.substring(j, j+1);

			if(textSplit.matches("[a-z]")){
				// textSplitごとにkeyを取得する。countがkeyArray.length==countになる場合、count=0になる。
				if(keyArray.length == count){
					count = 0;
				}
				key = keyArray[count];
				count++;

				for(int i = 0; i < alpha.length; i++){
					if(textSplit.equals(alpha[i])){
						if(i + key >= alpha.length){
							resultText.append(alpha[(i + key)%26]);
						}else{
							resultText.append(alpha[i + key]);
						}
						break;
					}
				}
			}else if(textSplit.matches("[A-Z]")){
				if(keyArray.length == count){
					count = 0;
				}
				key = keyArray[count];
				count++;
				for(int i = 0; i < ALPHA.length; i++){
					if(textSplit.equals(ALPHA[i])){
						if(i + key >= ALPHA.length){
							resultText.append(ALPHA[(i + key)%26]);
						}else{
							resultText.append(ALPHA[i + key]);
						}
						break;
					}
				}
			}else if(textSplit.matches("\n")){
				resultText.append("<br>");
			}else{
				resultText.append(textSplit);
			}
//str.append(textSplit);
		}
		return resultText;
	}

}
