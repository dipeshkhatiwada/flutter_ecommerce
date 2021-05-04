import 'package:flutter/material.dart';
class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
        title: Text("Cart"),
        backgroundColor: Colors.blueAccent,
      ),
      bottomNavigationBar: Container(
        child: Row(

        children: <Widget>[
Expanded(child: ListTile(
  title: Text("Total"),
  subtitle: Text("\$300"),

),
),
Expanded(child: MaterialButton(onPressed: (){},
child: Text("Check Out"),
color: Colors.blueAccent,
),
)

        ]
        )
      ),
    );
  }
}
