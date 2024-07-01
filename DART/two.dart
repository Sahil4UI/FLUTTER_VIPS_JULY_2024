void main()
{
  // it is telling that string is non nullable
  // nullable -> ?-> Null aware operator
  // ?? -> null assignment operator 
   String? a;
  //  a = "Lets learn flutter";
   a??="hello Students";
   print(a);
}