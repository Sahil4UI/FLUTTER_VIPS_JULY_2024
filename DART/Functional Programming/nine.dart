import 'dart:math';
var evenOrOdd = (x)=> (x%2==0)?"Even":"Odd";
var cube = (x)=> pow(x,3);
var square = (x)=> pow(x,2);
void Result(Function f1)
{
      for (int i=1;i<=3;i++)
      {
           f1(i);
      }
      print("**************");
}
void main()
{
      Result(evenOrOdd);
      Result(cube);
      Result(square);
}