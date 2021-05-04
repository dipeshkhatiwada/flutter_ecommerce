import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:project/components/cart.dart';
import 'package:project/components/horizontal_views.dart';
import 'package:project/components/grid_views.dart';
import 'package:project/components/productDetails.dart';
import 'package:project/components/cart.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  //image carousel
    Widget image_carousel = new Container(
      height: 200,
      child:  new Carousel(
      
        boxFit: BoxFit.cover,
        images: [
          AssetImage("assets/images/iphone.jpg"),
          AssetImage("assets/images/laptop.jpg"),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 100),
        indicatorBgPadding: 3.0,
        dotSize: 5.0,
        dotColor: Colors.blueAccent,
      ),
    );
    return Scaffold(
      appBar: AppBar(
      
        title: Text("Ecommerce"),
        backgroundColor: Colors.blueAccent,
       actions: <Widget>[
IconButton(icon: Icon(
  Icons.search,
  color: Colors.white,
), onPressed: null),
IconButton(icon: Icon(
  Icons.shopping_cart,
  color: Colors.white,
),
 onPressed: () {
   Navigator.push(
    context,
    MaterialPageRoute(
    	builder: (context) => Cart()),
  );
}
)
       ],
      ),
  //drawer
      drawer: Drawer(
        child: Column(
          children: <Widget>[
        
          UserAccountsDrawerHeader(accountName: Text("Roshan Bhattarai"),
           accountEmail: Text("rsn.bhattarai@gmail.com"),
           currentAccountPicture: CircleAvatar(
             child: Text("R"),
             backgroundColor: Colors.white,
           ),
           ),
            ListTile(
              title: Text('Profile'),
              leading: Icon(Icons.person, color: Colors.blueAccent,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
            
              },
            ),
            ListTile(
              title: Text('Setting'),
              leading: Icon(Icons.settings, color: Colors.blueAccent,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
            
              },
            ),
             ListTile(
              title: Text('Notification'),
              leading: Icon(Icons.notifications, color: Colors.blueAccent,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
              
              },
            ),
             ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.note, color: Colors.blueAccent,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
              
              },
            ),
          ],
        
        ),
      ),
      body: new ListView(
        children: <Widget>[
          //image_carousel
          image_carousel,
          Padding(padding: const EdgeInsets.fromLTRB(15,15,15,0),
          child: Text("Categories",
          style: TextStyle(
            fontSize: 20,
          ),
          ),
          ),
          //horizontal views begins here
      HorizontalList(),
     

       Padding(padding: const EdgeInsets.fromLTRB(15,15,15,0),
          child: Text("Recent Products",
          style: TextStyle(
            fontSize: 20,
          ),
          ),
          ),
//Grid View
          Container(
            height: 350,
            child: Product(),
          )
        ],
      ),
    );
  }
}