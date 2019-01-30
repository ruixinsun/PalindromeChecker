public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}

public boolean palindrome(String word)
{
  String word2 = onlyLetters(word);
  word2 = noCapitals(word2);
  word2 = noSpaces(word2);
  if(word2.equals(reverse(word2)))
    return true;
  return false;
}

public String reverse(String str)
{
    String sNew = new String();
    sNew = "";
    for(int i = str.length() - 1; i >= 0; i--)
      sNew = sNew + str.substring(i, i + 1);
    return sNew;
}


public String onlyLetters(String word)
{
  String s = "";
  for(int i = 0; i < word.length(); i++)
    if(Character.isLetter(word.charAt(i)) == true)
      s = s + word.charAt(i);
  return s;
}
public String noCapitals(String sWord){
    return sWord.toLowerCase();
}



public String noSpaces(String sWord){
  String s = "";
  for(int i = 0; i < sWord.length(); i++)
    if(sWord.charAt(i) != ' ')
      s = s + sWord.substring(i, i + 1);
  return s;
}

