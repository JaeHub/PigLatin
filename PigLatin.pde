public void setup()
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines.");
	for (int i = 0 ; i < lines.length; i++)
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public boolean isVowel(char c) {
	return "aeiou".indexOf(c) != -1;
}

public boolean isQU(String qWord){
	for(int i = 0; i < 1; i++){
		if(qWord.charAt(i) == 'q' && qWord.charAt(i+1) == 'u'){
			return true;
		}
	}
	return false;
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	if(isQU(sWord) == true){
		return -2;
	}
	for(int i = 0; i < sWord.length()-1; i++){
		if (isVowel(sWord.charAt(i)) == true) {
			return i;
		}
	}
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -2){
		return sWord.substring(2, sWord.length()) + "quay";
	}
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	if(findFirstVowel(sWord) == 0){
		return sWord + "way";
	}
	if(findFirstVowel(sWord) > 0){
		return sWord.substring(findFirstVowel(sWord), sWord.length()) + sWord.substring(0,findFirstVowel(sWord)) + "ay";
	}

	else
	{
		return "ERROR!";
	}
}
