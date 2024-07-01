void main()
{
  //  int x = 12;
  //  String z= x.toString();
  //  x = int.parse(z);
      // String x = "Welcome         to     Flutter";
      // print(x.length);
      // print(x.toUpperCase());
      // print(x.toLowerCase());
      // double z = 22/7;
      // print(z.toStringAsFixed(2));
      // // floor div
      // // int k = 22~/7;
      // // print(k);
      // print(x.isEmpty);
      // print(x.isNotEmpty);
      // print("Hello".compareTo("hello"));
      // // index
      // print("Hello".codeUnitAt(0));
      // print("Hello".codeUnits);
      // print("Hello".contains("h"));
      // // String a = "Hi" 
      // // "I"
      // // "am"
      // // "Sahil"
      // // "Kumar";
      // String a = '''Hi
      // I
      // am
      // Sahil
      // Kumar''';
      // print(a);
      // // cascading
      // a.toUpperCase().contains("A");
      // print(x.split(" "));
      // print(x.startsWith("X"));
      var a = "Hello Welcome to Dart";
      // print(a.padLeft(10));
      // print(a.padRight(10));
      // print(a.indexOf("o",5));
      // print(a.lastIndexOf("o"));
      // print(a.substring(0,5));
      // print(a.replaceFirst("o", "O"));
      // print(a.replaceAll("o", "O"));
      // String query = "select * from students";
      // query += " where id = 3";
      StringBuffer obj = StringBuffer();
      obj.write("select * from students");
      obj.write(" where id = 3");
      print(obj);
}