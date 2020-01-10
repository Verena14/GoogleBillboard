public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";
public void setup()
{
  //your code here
  ArrayList <Double> digits = new ArrayList <Double>();
  String temp1;
  double temp2;
  int i = 0;
  while(true)
  {
    temp1 = e.substring(i+2,i+12);
    temp2 = Double.parseDouble(temp1);
    digits.add(temp2);
    if( isPrime(digits.get(i)) )
    {
      System.out.println(digits.get(i));
      break;
    }
    i++;
  }
}

public boolean isPrime(double dNum)
{
  //your code here
  if(dNum < 2)
  {
    return false;
  }
  for(int i = 2; i <= Math.sqrt(dNum); i++)
  {
    if(dNum % i == 0)
    {
      return false;
    }
  }
  return true;
}
