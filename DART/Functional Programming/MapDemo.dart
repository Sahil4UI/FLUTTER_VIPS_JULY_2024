void main() {
  // Map x = {"id": 101, "name": "Rahul"};
  // x.putIfAbsent("contact", () => "9876543210");
  // print(x);
  // print(x["id"]);
  // print("Keys : ${x.keys}");
  // print("values : ${x.values}");
  // print("entries : ${x.entries}");
  // x.addAll({"marks": 98, "name": "Ram"});
  // x.addEntries({"father's Name": "Mukesh"}.entries);
  // print(x);
  //  update
  // x["marks"] = 0;
  //  x.remove("marks");
  // x.removeWhere((key, value) => value == "Mukesh" );
  // x.clear();
  // print(x.containsKey("marks"));
  // print(x.containsValue("Shyam"));
  // print(x.length);
  // print(x.isEmpty);

  // Set ->
  // Set x = {1,1,1,2,2,2,3,3,4,4,4};
  // print(x);
  // x.add(12);
  // print(" after adding : $x");
  // x.addAll({6,7,8,11});
  // print(x);
  // x.remove(6);
  // // x.removeAll({6,1,3});
  // x.removeWhere((element) => element>4);
  // print("After removal  :$x");
  // // x.clear();
  // print(x.contains(4));
  // print(x.containsAll({1,3}));
  Set a = {21,3254,56,768,45,1,2,3,100000,4,5,6,11,19,21,45,78,789};
  // Set b = {4,5,6,7,8,9};
  // print("Union => ${a.union(b)}");
  // print("Intersection => ${a.intersection(b)}");
  // print("Difference => ${a.difference(b)}");
  // print(a.take(10));
  print("before skiping : $a");
  // print(a.skip(5));
  // print("After skiping 5 values : $a");
  print(a.skipWhile((value)=>value>11));
  print(a.takeWhile((value)=>value>11));

}
