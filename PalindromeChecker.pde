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
  String st = new String();
  for(int i = 0; i < word.length(); i++)
  {
    if (Character.isLetter(word.charAt(i)) == true)
    {
      st = st + word.charAt(i);
    }
  }
  st = st.toLowerCase();

  if(reverse(st).equals(st))
  {
    return true;
  }

  return false;
}
public String reverse(String str)
{
    String n = new String();
    int nLast = str.length()-1;
    for(int i = nLast; i >= 0; i--)
    {
      n = n + str.substring(i,i+1);
    }
    return n;
}


