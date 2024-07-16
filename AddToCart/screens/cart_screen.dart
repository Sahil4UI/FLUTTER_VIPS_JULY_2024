import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/cart_notifier.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    var obj = Provider.of<CartNotifier>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: ListView.builder(
        itemCount: obj.cartList.length,
        itemBuilder: (context, index) {
          return Card(
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      obj.cartList[index].productName,
                      style: TextStyle(fontSize: 20),
                    ),
                Text(obj.cartList[index].productAmount.toString(),
                style: TextStyle(
                  fontSize: 20
                ),),

                  ],
                ),
                Column(
                  children: [
                IconButton(onPressed: (){obj.plus(index);}, icon: Icon(Icons.exposure_plus_1))
                ,Text(obj.cartList[index].productQty.toString()),
                IconButton(onPressed: (){obj.minus(index);}, icon: Icon(Icons.exposure_minus_1)),

                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
