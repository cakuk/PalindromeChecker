public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(onlyLetters(lines[i]))==true)
    {
      println(onlyLetters(lines[i]) + " IS a palindrome.");
    }
    else
    {
      println(onlyLetters(lines[i]) + " is NOT a palindrome.");
    }
  }
  
}
public String onlyLetters(String sString){
  sString = sString.toLowerCase();
  String a = "";
  for(int i = 0; i < sString.length(); i = i + 1) {
    if(sString.substring(i, i + 1).equals(" ")) {
      
    } else {
      a = a + sString.substring(i, i + 1);
    }
  }


  String s = "";
  for(int i = 0; i < a.length(); i = i + 1) {
    if(Character.isLetter(a.charAt(i)) == true) {
      s = s + a.substring(i, i + 1);
    }
  }
  return s;
}
public boolean palindrome(String word)
{
    String s = "";
    for(int i = 1; i < word.length() + 1; i = i + 1) {
      s = s + word.substring(word.length() - i, word.length() - i + 1);
    }
    if(s.equals(word)) {
      return true;
    } 
    return false;
}
public String reverse(String str)
{
    String s = "";
    for(int i = 1; i < str.length() + 1; i = i + 1) {
      s = s + str.substring(str.length() - i, str.length() - i + 1);
    }
    return s;
}

