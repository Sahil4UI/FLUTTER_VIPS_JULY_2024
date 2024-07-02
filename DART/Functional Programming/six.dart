import "dart:io";

void main() {
  // for (int i=1;i<=10;i++)
  // {
  //   // print(i);
  //   // stdout.write(i);
  //   stdout.writeln(i);
  // }
  // OUTER_LOOP:
  // for (int i = 1; i <= 10; i++) {
  //   INNER_LOOP:
  //   for (int j = 1; j <= i; j++) {
  //     if (j == 3) {
  //       // break OUTER_LOOP;
  //       // continue INNER_LOOP;
  //       continue OUTER_LOOP;
  //     }
  //     print("i=$i & j=$j");
  //   }
  // }
  // enhanced for loop
  List x = [1,2,3,4,5,6,7];
  // for (int i =0 ; i< x.length;i++)
  // {
  //   print(x[i]);
  // }
  for (int val in x)
  {
    print(val);
  }
  x.forEach((val){
    print(val);
  });

}
