import 'package:flutter/material.dart';
import 'package:project/components/productDetails.dart';
class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var product_list = [
     {
    "name": "Mobile",
    "picture": "assets/images/mobile.jpg",
    "old_price": 2000,
    "price": 1500,
    "brand": "Samsung",
    "Camera": "24MP",
    "RAM": "4GB",
    "Storage": "64GB",
  },
  {
    "name": "Laptop",
    "picture": "assets/images/laptop.jpg",
    "old_price": 2000,
    "price": 1500,
    "brand": "DELL-i3, 10th gen",
    "Camera": "4MP",
    "RAM": "4GB",
    "Storage": "128GB SSD",
  },
   {
    "name": "Mobile",
    "picture": "assets/images/mobile.jpg",
    "old_price": 2000,
    "price": 1500,
     "brand": "Samsung",
    "Camera": "24MP",
    "RAM": "4GB",
    "Storage": "64GB",
  },
  {
    "name": "Laptop",
    "picture": "assets/images/laptop.jpg",
    "old_price": 2000,
    "price": 1500,
     "brand": "DELL-i3, 10th gen",
     "Camera": "4MP",
    "RAM": "4GB",
    "Storage": "128GB SSD",
  }
  
  ];


  
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,

      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
      itemBuilder: (BuildContext context, int index){
return Single_prod(
  prod_name: product_list[index]['name'],
  prod_picture: product_list[index]['picture'],
  prod_old_price: product_list[index]['old_price'],
  prod_price: product_list[index]['price'],
  prod_brand: product_list[index]['brand'],
  prod_Camera: product_list[index]['Camera'],
  prod_RAM: product_list[index]['RAM'],
  prod_Storage: product_list[index]['Storage'],
);
      }
      );
   
  }
}
class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;
  final prod_brand;
  final prod_Camera;
  final prod_RAM;
  final prod_Storage;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
    this.prod_brand,
    this.prod_Camera,
    this.prod_RAM,
    this.prod_Storage,
  }
  );
  @override
  Widget build(BuildContext context) {
    return Card(
  child: GridTile(
  
    footer: Container(
      height: 60,
      color: Colors.white38,
      child: ListTile(
        
        leading: Text(prod_name,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
        subtitle: Text("\$$prod_old_price",
          style: TextStyle(decoration: TextDecoration.lineThrough),),
          
        title: Text("\$$prod_price",
        style: TextStyle(
          fontSize: 15
        ),),

         
        
        
       onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(
      //passing value of product details
      builder: (context) => Roshan(
      product_details_name: prod_name,
      product_details_picture: prod_picture,
      product_details_old_price: prod_old_price,
      product_details_price: prod_price,
      product_details_Camera: prod_Camera,
      product_details_RAM: prod_RAM,
      product_details_Storage: prod_Storage,
      product_details_brand: prod_brand,
    )),
  );
}
        ),
      ),
child: Image.asset(prod_picture,
fit: BoxFit.cover),

    ),
  );
    
  }
}
