import 'package:flutter/material.dart';
import 'package:online_shop/pages/product_list/prod_list.dart';
import 'package:online_shop/pages/signup/signup.dart';
import 'pages/login/login_in.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/prodlist': (context) => ProductList(),
        '/signup': (context) => SignUp(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Online App',
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
      home: AppLoginPage(),
    );
  }
}


