import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:online_shop/main.dart';

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:  Stack(
          fit: StackFit.expand,
          children: [
            
            Image.asset(
              'assets/images/SIGNUP.jpg',
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.darken,
              color: Colors.black45
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
              
                child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(top: 1.0, right: 5.0, left: 5.0),
                                 child: TextFormField(
                                   autocorrect: false,
                                   autofocus: false,
                                   style: TextStyle(
                                     fontSize: 10.0
                                   ),
                                   decoration: InputDecoration(
                                     labelText: 'Enter Username',
                                     labelStyle: TextStyle(
                                       color: Colors.black
                                     ),
                                     hintText: 'Username',
                                     filled: true,
                                     fillColor: Colors.blueAccent,
                                     border: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(30),
                                     ),
                                   ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(top: 1.0, right: 5.0, left: 5.0),
                                 child: TextFormField(
                                   obscureText: true,
                                   autocorrect: false,
                                   autofocus: false,
                                   style: TextStyle(
                                    //  fontWeight: FontWeight.bold,
                                     fontSize: 10.0
                                   ),
                                   decoration: InputDecoration(
                                     labelText: 'Enter Email',
                                     labelStyle: TextStyle(
                                       color: Colors.black
                                     ),
                                     hintText: 'Email',
                                     filled: true,
                                     fillColor: Colors.blueAccent,
                                     border: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(30),
                                     ),
                                   ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(top: 1.0, right: 5.0, left: 5.0),
                                 child: TextFormField(
                                   obscureText: true,
                                   autocorrect: false,
                                   autofocus: false,
                                   style: TextStyle(
                                     fontSize: 10.0
                                   ),
                                   decoration: InputDecoration(
                                     labelText: 'Enter password',
                                     labelStyle: TextStyle(
                                       color: Colors.black
                                     ),
                                     hintText: 'password',
                                     filled: true,
                                     fillColor: Colors.blueAccent,
                                     border: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(30),
                                     ),
                                   ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(top: 1.0, right: 5.0, left: 5.0),
                                 child: TextFormField(
                                   key: formKey,
                                   autocorrect: false,
                                   autofocus: false,
                                   style: TextStyle(
                                     fontSize: 10.0
                                   ),
                                   decoration: InputDecoration(
                                     labelText: 'Enter DOB',
                                     labelStyle: TextStyle(
                                       color: Colors.black
                                     ),
                                     hintText: 'DOB',
                                     filled: true,
                                     fillColor: Colors.blueAccent,
                                     border: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(30),
                                     ),
                                   ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(top: 1.0, right: 5.0, left: 5.0),
                                 child: TextFormField(
                                   obscureText: true,
                                   autocorrect: false,
                                   autofocus: false,
                                   style: TextStyle(
                                     fontSize: 10.0
                                   ),
                                   decoration: InputDecoration(
                                     labelText: 'Enter Dpartment',
                                     labelStyle: TextStyle(
                                       color: Colors.black
                                     ),
                                     hintText: 'Dpartment',
                                     filled: true,
                                     fillColor: Colors.blueAccent,
                                     border: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(30),
                                     ),
                                   ),
                                 ),
                               ),
                                Padding(
                                 padding: const EdgeInsets.only(top: 1.0, right: 5.0, left: 5.0),
                                 child: TextFormField(
                                   autovalidate: true,
                                   obscureText: true,
                                   autocorrect: false,
                                   autofocus: false,
                                   style: TextStyle(
                                     fontSize: 10.0
                                   ),
                                   decoration: InputDecoration(
                                     labelText: 'Enter year of studying',
                                     labelStyle: TextStyle(
                                       color: Colors.black
                                     ),
                                     hintText: 'Year of studying',
                                     filled: true,
                                     fillColor: Colors.blueAccent,
                                     border: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(30),
                                     ),
                                   ),
                                 ),
                               ),
                                Padding(
                                 padding: const EdgeInsets.only(top: 1.0, right: 5.0, left: 5.0),
                                 child: TextFormField(
                                   autovalidate: true,
                                   obscureText: true,
                                   autocorrect: false,
                                   autofocus: false,
                                   style: TextStyle(
                                     fontSize: 10.0
                                   ),
                                   decoration: InputDecoration(
                                     labelText: 'Enter college name',
                                     labelStyle: TextStyle(
                                       color: Colors.black
                                     ),
                                     hintText: 'College name',
                                     filled: true,
                                     fillColor: Colors.blueAccent,
                                     border: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(30),
                                     ),
                                   ),
                                 ),
                               ),
                                Padding(
                                 padding: const EdgeInsets.only(top: 1.0, right: 5.0, left: 5.0),
                                 child: TextFormField(
                                   obscureText: true,
                                   autocorrect: false,
                                   autofocus: false,
                                   style: TextStyle(
                                     fontSize: 10.0
                                   ),
                                   decoration: InputDecoration(
                                     labelText: 'Enter phone-number',
                                     labelStyle: TextStyle(
                                       color: Colors.black
                                     ),
                                     hintText: 'phone-number',
                                     filled: true,
                                     fillColor: Colors.blueAccent,
                                     border: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(30),
                                     ),
                                   ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(top: 1.0, right: 5.0, left: 5.0),
                                 child: TextFormField(
                                   obscureText: true,
                                   autocorrect: false,
                                   autofocus: false,
                                   style: TextStyle(
                                     fontSize: 10.0
                                   ),
                                   decoration: InputDecoration(
                                     labelText: 'Enter Area of interest',
                                     labelStyle: TextStyle(
                                       color: Colors.black
                                     ),
                                     hintText: 'Area of interest',
                                     filled: true,
                                     fillColor: Colors.blueAccent,
                                     border: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(30),
                                     ),
                                   ),
                                 ),
                               ),
                               
                              RaisedButton(
                                     onPressed: (){
                                       Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                                     },
                                     color: Colors.greenAccent,
                                     padding: EdgeInsets.symmetric(
                                       horizontal: 30.0
                                     ),
                                     child: Text(
                                       'SignUp',
                                       style: TextStyle(
                                         fontWeight: FontWeight.w900,
                                         fontSize: 10.0,
                                         color: Colors.black
                                       ),
                                     ),
                            ),
                          ]
                  ),
                )
            ),
          ]
      )
    );
  }
}