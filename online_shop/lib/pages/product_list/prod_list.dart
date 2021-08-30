import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  const ProductList({ Key? key }) : super(key: key);

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {

  String name = "";
  String price = "";
  String img = "";
  Widget card(name,price, img){
    return Card(
              color: Colors.cyan,
              shadowColor: Colors.blueAccent,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))
              ),
              elevation: 10.0,
              child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20.0),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(bottom: 7,top: 7),
                                  child: Image.network('$img',height: 130,alignment: Alignment.center)
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Text('$name',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 139,left: 90),
                              height: 40,width: 90,
                              child: Stack(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: RaisedButton(
                                          onPressed: (){},
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(130.0)),
                                          padding: EdgeInsets.all(0.0),
                                          child:Ink(
                                            decoration: BoxDecoration(
                                                gradient: LinearGradient(colors: [Colors.redAccent,Colors.red],
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.topRight,
                                                ),
                                                borderRadius: BorderRadius.circular(10.0)

                                            ),
                                          )
                                      ),
                                  ),
                                  Center(child: Text('Buy Now',style: TextStyle(color: Colors.white),))
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 152,left: 5),
                              child: Text('Rs. $price',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                            )
                          ],
                        ),
              )
            );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 2,
                children: <Widget>[
                 card('MI Note5','33,600','https://rukminim1.flixcart.com/image/312/312/k9loccw0/mobile/p/z/q/apple-iphone-se-mxd02hn-a-original-imafrcpjfehbbqgb.jpeg?q=70'), 
                 card('Samsung\n   A50','44,000','https://rukminim1.flixcart.com/image/312/312/kg8avm80/mobile/y/7/n/apple-iphone-12-dummyapplefsn-original-imafwg8dqq7z8cgh.jpeg?q=70'),
                 card('MI Note6','54,000','https://rukminim1.flixcart.com/image/312/312/kg8avm80/mobile/r/h/z/apple-iphone-12-dummyapplefsn-original-imafwg8dqgncgbcb.jpeg?q=70'),
                 card('MI Pro','34,000','https://rukminim1.flixcart.com/image/312/312/kg8avm80/mobile/j/f/9/apple-iphone-12-dummyapplefsn-original-imafwg8dhe5aeyhk.jpeg?q=70'),
                 card('Lava','64,050','https://rukminim1.flixcart.com/image/312/312/kg8avm80/mobile/p/f/w/apple-iphone-12-dummyapplefsn-original-imafwg8dqjuq8sug.jpeg?q=70'),
                 card('Samsung\n   A60','44,999','https://rukminim1.flixcart.com/image/312/312/k9loccw0/mobile/6/b/z/apple-iphone-se-mxd12hn-a-original-imafrcqfsuzwa3dz.jpeg?q=70'),
                 card('iPhone','45,999','https://rukminim1.flixcart.com/image/312/312/kg8avm80/mobile/y/7/n/apple-iphone-12-dummyapplefsn-original-imafwg8dqq7z8cgh.jpeg?q=70'),
                 card('Lava','43,000','https://rukminim1.flixcart.com/image/312/312/kg8avm80/mobile/q/8/f/apple-iphone-12-dummyapplefsn-original-imafwg8drqaam5vu.jpeg?q=70'),
                 card('iPhone','44,000','https://rukminim1.flixcart.com/image/312/312/kg8avm80/mobile/j/f/9/apple-iphone-12-dummyapplefsn-original-imafwg8dhe5aeyhk.jpeg?q=70'),
                 card('Samsung\n   A70','41,000','https://rukminim1.flixcart.com/image/312/312/kg8avm80/mobile/p/f/w/apple-iphone-12-dummyapplefsn-original-imafwg8dqjuq8sug.jpeg?q=70'),
                 card('Lava','47,000','https://rukminim1.flixcart.com/image/312/312/kg8avm80/mobile/r/h/z/apple-iphone-12-dummyapplefsn-original-imafwg8dqgncgbcb.jpeg?q=70'),
                 card('MI Pro','74,000','https://rukminim1.flixcart.com/image/312/312/kg8avm80/mobile/q/8/f/apple-iphone-12-dummyapplefsn-original-imafwg8drqaam5vu.jpeg?q=70'),
                 card('Samsung\n   A50','94,000','https://rukminim1.flixcart.com/image/312/312/kg8avm80/mobile/p/f/w/apple-iphone-12-dummyapplefsn-original-imafwg8dqjuq8sug.jpeg?q=70'),
                 card('MI Note5','44,000','https://rukminim1.flixcart.com/image/312/312/k9loccw0/mobile/6/8/g/apple-iphone-se-mxvv2hn-a-original-imafrcqmfxhcrpsb.jpeg?q=70'),
                 card('MI Pro','94,000','https://rukminim1.flixcart.com/image/312/312/jnj7iq80/mobile/3/f/a/apple-iphone-xr-mry62hn-a-original-imafa6zkhyceh8dg.jpeg?q=70'),
                 card('MI Pro','24,000','https://rukminim1.flixcart.com/image/312/312/kg8avm80/mobile/j/f/9/apple-iphone-12-dummyapplefsn-original-imafwg8dhe5aeyhk.jpeg?q=70'),
                 card('Samsung\n   A50','44,000','https://rukminim1.flixcart.com/image/312/312/jnj7iq80/mobile/u/x/j/apple-iphone-xr-mryf2hn-a-original-imafa6zkjfkwymuz.jpeg?q=70'),
                 card('iPhone','54,000','https://rukminim1.flixcart.com/image/312/312/kg8avm80/mobile/r/h/z/apple-iphone-12-dummyapplefsn-original-imafwg8dqgncgbcb.jpeg?q=70'),
                 card('MI Pro','74,000','https://rukminim1.flixcart.com/image/312/312/k0lbdzk0pkrrdj/mobile/4/8/c/apple-iphone-xr-mryd2hn-a-original-imafbhywqyhvww9c.jpeg?q=70'),
                 card('iPhone','84,000','https://rukminim1.flixcart.com/image/312/312/k0lbdzk0pkrrdj/mobile/f/z/3/apple-iphone-xr-mrya2hn-a-original-imafbhyvbz2hmaxd.jpeg?q=70'),
                 card('Samsung\n   A50','54,000','https://rukminim1.flixcart.com/image/312/312/kg8avm80/mobile/q/8/f/apple-iphone-12-dummyapplefsn-original-imafwg8drqaam5vu.jpeg?q=70'),
                 card('MI Note5','94,000','https://rukminim1.flixcart.com/image/312/312/kg8avm80/mobile/y/7/n/apple-iphone-12-dummyapplefsn-original-imafwg8dqq7z8cgh.jpeg?q=70'),
                 card('Samsung\n   A50','14,000','https://rukminim1.flixcart.com/image/312/312/k0lbdzk0pkrrdj/mobile/s/p/d/apple-iphone-xr-mry42hn-a-original-imafbhyxurw8y7zg.jpeg?q=70'),
                 card('iPhone','44,000','https://rukminim1.flixcart.com/image/312/312/kgiaykw0/mobile/3/x/e/apple-iphone-11-mhdc3hn-a-original-imafwqepx5yxwctc.jpeg?q=70'),

                ]
            )
      );
  }
}