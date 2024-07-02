void main()
{
  // List<int> x = [1,2,3,4,5];
  // var y = x.take(5).toList().remove(1);
// cascade notation
  // print(x.take(5).toList().remove(-10));
  // x.add(12);
  // x.addAll([7,8,9,10]);
  // print(x);
  // shallow copy vs deep copy
  // List y = x;
  // List y = List.of(x);
  // spread operator
  // List y = [...x];
  // x.remove(5);
  // print(x);
  // print(y);
  List x = [2,4,6,8];
  // List y  = [6,7,8,9,10];
  // you have to use null aware if you are using null aware spread
  // List? z ;
  // ...? null aware spread operator
  // List a  = [...x,...y,...?z];
  // print(a);
  //  int res= x.reduce((value,element)=>value+element);
  // print(x.where((element) => element>2 ).toList());
  // x.forEach((value){
  //     (value%2==0)?print(true):print(false);
  // });
  x.every((value)=> value>2);
  }

