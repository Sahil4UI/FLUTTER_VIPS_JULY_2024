void main()
{
    // List<String> x = [];
    // List y = ["hey",1,2,3,4,true,[1,2,3,4]];
    // List a = [1,2,3,4,5];
    // List b = a;
    // List b = List.of(a);
    // ... -> spread operator
    // List b = [...a];
    // a.remove(1);
    // print(a);
    // print(b);
    // List x = [1,2,3,4,5,6];
    // List y = [11,12,13,14,15,16];
    // List? z = [99,100];
    // // ...?-> null aware spread operator
    // List res = [...x,...y,...?z];
    // print(res);
    // List b = [6,7,8,9,10];
      List m = [1,2,3,4,5];
      // m.add(12);
      // m.add(14);
      // m.add(15);
      // m.add(16);
      m..add(12)..add(90)..add(100);
      print(m.length);
      m.addAll([-100,-10,-20]);
      print(m);
      // remove by value
      // print("Is value removed : ${m.remove(-10000)} ");
      // m.removeAt(0);// 0 index value will be removed
      // m.removeLast();
      // m.removeRange(0,4);//end range - n-1
      // fat arrow function
      // m.removeWhere((element) => element%2==0 );
      // print("After Removal : $m");

      // Imperative Approach

      // List l = [1,2,300,4,-5,6,-7,8,9,10];
      // print(l);
      // var res = 0;
      // l.forEach((value){
      //     res += int.parse(value.toString());
      // });
      // print(res);
      // Declarative approach
      // reduce
      // print(l.reduce((val,element)=>val+element));
      // l.sort((f,s)=>f-s);
      // l.sort();
// ascending
      // print("Sort : ${l}");
      var p = ["c","d","a","b"];
      print("List before SHuffling");
      print(p);
      // p.sort();
      p.shuffle();
      print(p);
      print(p.every((value)=>value.isNotEmpty));
}