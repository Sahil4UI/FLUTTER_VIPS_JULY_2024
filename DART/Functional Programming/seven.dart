
// f1(int x,int y)
// {
//     print("$x + $y = ${x+y}");
// }
// named parameter
// named optional parameter
// String f1({x=1, required int y})
// {
//     return "x = $x &y =  $y";
// }
f1()
{
   f2(){
        print("f2 called");
   }
   f3(){
        print("f3 called");
   }
   return [f2,f3];
}
void main()
{
   f1()[0]();
}