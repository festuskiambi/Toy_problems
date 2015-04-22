// VOWEL COUNT
// LANGUAGE: JAVA

// Create a VowelCount class with a vowelCount method and a main method.
// The vowelCount method should contain the algorithm and the main method
// should be used for testing your algorithm.To make testing easier, make the vowelCount method static.

// Given an input of a String sentence, count the number of vowels that occur in the sentence.
// Return a HashMap object containing the vowels as keys and their counts as values.

// Example:
// HashMap vowelMap = VowelCount.vowelCount("mary had a little lamb");
// vowelMap.get('a'); // 4
// vowelMap.get('i'); // 1
// vowelMap.get('e'); // null
// HashMap vowelMap = VowelCount.vowelCount("do we control our computers, or do they control us?");
// vowelMap.get('o'); // 8
// vowelMap.get('i'); // 3
// vowelMap.get('e'); // 3
// vowelMap.get('u'); // 3


class VowelCount{
	public static HashMap vowelCount(String s){
		HashMap<Character, Integer>vowels=new HashMap<Character, Integer>();
		for(int i=0;i<s.length();i++){
	if ("aeios".indexof(leteer)!==-1){
      if (vowels.get(letter)== null){
      	vowels.put(letter,0);
      }
      vowels.put(letter,vowels.get(letter)+1);
	}

}
Return vowels
}