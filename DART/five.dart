import 'dart:io';

void main()
{
   print(
'''
Press 1 to Order Pizza
Press 2 to Order Burger
Press 3 to Order Dessert
Press 4 to Order Beverages
'''
   );
int choice = int.parse(stdin.readLineSync()!);
switch(choice)
{
  case 1 :{ print("Pizza");
      continue offer1;
  }
  case 2 : {print("Burger");
      continue offer2;
  }
// labels
  offer1:
  case 3 : print("Dessert");
  offer2:
  case 4 : print("Beverages");
  default : print("Invalid Choice");
}

}