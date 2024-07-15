import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/products_data.dart';
import 'package:google_fonts/google_fonts.dart';

import 'cart_screen.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.electric_bolt_rounded,
          size: 50,
        ),
        title: Text(
          "Electronic Store",
          style: GoogleFonts.akronim(
              textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (_)=>CartScreen()));
            },
            icon: Icon(
              Icons.shopping_cart,
              size: 40,
            ),
          ),
        ],
      ),
      body: Container(
        child: ListView.builder(
            itemCount: products_list.length,
            itemBuilder: (context, index) {
              return Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network(
                      products_list[index].p_img,
                      width: MediaQuery.sizeOf(context).width/2-100,
                    ),
                    Expanded(
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("${products_list[index].p_name}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),),
                          SizedBox(
                            height: 10,
                          ),
                          Text("${products_list[index].p_price}"),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.add_shopping_cart),
                            label: Text("Add To Cart"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
