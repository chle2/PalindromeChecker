public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String reversedWord = reverse(word);

  String sNew = new String();

    for(int i = word.length() - 1; i >= 0; i--){
        if(word.substring(i, i + 1) != "!" || word.substring(i, i + 1) != " ")
        sNew = sNew + word.substring(i, i + 1);
    }

  return sNew.equalsIgnoreCase(reversedWord);
}
public String reverse(String str)
{
    String sNew = new String();

    for(int i = str.length() - 1; i >= 0; i--){
        if(str.substring(i, i + 1) != "!" || str.substring(i, i + 1) != " ")
        sNew sNew + str.substring(i, i + 1);
    }

    return sNew;
}




