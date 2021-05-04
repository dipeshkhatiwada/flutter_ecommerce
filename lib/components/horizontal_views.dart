import 'package:flutter/material.dart';
class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_position: 'assets/images/mobiles.png',
            image_caption: 'Mobile',
          ),

            Category(
            image_position: 'assets/images/pc.png',
            image_caption: 'Laptop',
          ),

             Category(
            image_position: 'assets/images/monitor.png',
            image_caption: 'Desktop',
          ),

  Category(
            image_position: 'assets/images/earphone.png',
            image_caption: 'Earphone',
          ),

            Category(
            image_position: 'assets/images/electronics.png',
            image_caption: 'Electronics',
          ),

            Category(
            image_position: 'assets/images/mesin.png',
            image_caption: 'Washing',
          ),
           
           

          

        ],
      ),
    );
  }
}
class Category extends StatelessWidget {
  final String image_position;
  final String image_caption;

  Category(
{
  this.image_position,
  this.image_caption
}
  );
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(5.0),
      child: Container(
        width: 80,
        child: ListTile(
            onTap: () {
                    },
                    title: Image.asset(image_position,
                    height: 40,
                    width: 30,
                    ),
                    subtitle: Container(
                      alignment: Alignment.topCenter,
                   child: Text(image_caption),
                   
    ),
        ),
      ),
        
      );
    
  }
}