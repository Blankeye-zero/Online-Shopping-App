import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

//good practice. This widget does not need to be stateful to be implemented.
class WidgetCard extends StatelessWidget {
  final String name;
  final String imgUrl;
  final String price;

  WidgetCard(this.name, this.price, this.imgUrl);

  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            /*Navigator.of(context).pushNamed (...);
        */
          },
          child: Image.network(
            imgUrl,
            height: 5,
            width: 5,
            scale: 20.00,
            alignment: Alignment.center,
            fit: BoxFit.fitHeight,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          leading: Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.pink,
            ),
          ),
          title: Text(
            price,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.cyan,
            ),
          ),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
    
    
    //   Card(
    //       color: Colors.cyan,
    //       shadowColor: Colors.blueAccent,
    //       shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.all(Radius.circular(20.0))),
    //       elevation: 10.0,
    //       child: ClipRRect(
    //         borderRadius: BorderRadius.all(
    //           Radius.circular(20.0),
    //         ),
    //         child: Stack(
    //           children: <Widget>[
    //             Row(
    //               children: [
    //                 Container(
    //                     padding: EdgeInsets.only(bottom: 7, top: 7),
    //                     child: Image.network('$img',
    //                         height: 130, alignment: Alignment.center)),
    //                 Padding(
    //                   padding: const EdgeInsets.only(right: 8.0),
    //                   child: Text(
    //                     '$name',
    //                     style: TextStyle(
    //                       fontSize: 25,
    //                       fontWeight: FontWeight.bold,
    //                     ),
    //                   ),
    //                 )
    //               ],
    //             ),
    //             Container(
    //               margin: EdgeInsets.only(top: 139, left: 90),
    //               height: 40,
    //               width: 90,
    //               child: Stack(
    //                 children: <Widget>[
    //                   Padding(
    //                     padding: const EdgeInsets.all(5.0),
    //                     child: RaisedButton(
    //                         onPressed: () {},
    //                         shape: RoundedRectangleBorder(
    //                             borderRadius: BorderRadius.circular(130.0)),
    //                         padding: EdgeInsets.all(0.0),
    //                         child: Ink(
    //                           decoration: BoxDecoration(
    //                               gradient: LinearGradient(
    //                                 colors: [Colors.redAccent, Colors.red],
    //                                 begin: Alignment.topLeft,
    //                                 end: Alignment.topRight,
    //                               ),
    //                               borderRadius: BorderRadius.circular(10.0)),
    //                         )),
    //                   ),
    //                   Center(
    //                       child: Text(
    //                     'Buy Now',
    //                     style: TextStyle(color: Colors.white),
    //                   ))
    //                 ],
    //               ),
    //             ),
    //             Container(
    //               margin: EdgeInsets.only(top: 152, left: 5),
    //               child: Text(
    //                 'Rs. $price',
    //                 style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
    //               ),
    //             )
    //           ],
    //         ),
    //       ));
    // }
  
//  Its good that you have created a widget from scratch but there already exists an optimized widget Grid Tile
