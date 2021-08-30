import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:registration_form/login.dart';
// import 'package:registration_form/product_list.dart';
import 'package:form_field_validator/form_field_validator.dart';

class AppLoginPage extends StatefulWidget {
  const AppLoginPage({ Key? key }) : super(key: key);

  @override
  _AppLoginPageState createState() => _AppLoginPageState();
}

class _AppLoginPageState extends State<AppLoginPage> {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void prodlist(){
    if(formKey.currentState!.validate()){
      Navigator.pushNamed(context, '/prodlist');
    }else{
      print("error");
    }
  }

  TextEditingController _userid = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(
      //   toolbarHeight: 30,
      //   title: Text(
      //     'Login Page',
      //     style: TextStyle(
      //       fontWeight: FontWeight.w800,
      //       fontSize: 20.0,
      //     ),
      //   ),
      // ),
      body: Container(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              'assets/images/SIGNIN.jpg',
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.darken,
              color: Colors.black54
            ),
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Image.asset(
                 'assets/images/logo.png',
                 height: 120.0,
                 width: 120.0
               ),
               Padding(
                 padding: const EdgeInsets.all(5.0),
                 child: Stack(
                   children: [
                     SingleChildScrollView(
                       child: Container(
                       height: 350.0,
                       width: 300.0,
                       padding: EdgeInsets.symmetric(
                         horizontal: 5.0,
                         vertical: 20.0
                       ),
                       decoration: BoxDecoration(
                         shape: BoxShape.rectangle,
                         color: Colors.lightBlueAccent,
                         borderRadius: BorderRadius.circular(20),
                       ),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(5.0),
                             child: TextFormField(
                               key: formKey,
                               autovalidate: true,
                              //  validator: (val){
                              //     if(val!.isEmpty){
                              //       return "Required";
                              //     }else{
                              //       return null;
                              //     }
                              //  },
                                validator: MultiValidator([
                                  RequiredValidator(errorText: 'Required'),
                                  EmailValidator(errorText: 'Invalid'),
                                ]),
                               autocorrect: false,
                               autofocus: false,
                               style: TextStyle(
                                //  fontWeight: FontWeight.bold,
                                 fontSize: 15.0
                               ),
                               decoration: InputDecoration(
                                 labelText: 'Enter UserID',
                                 labelStyle: TextStyle(
                                   color: Colors.black
                                 ),
                                 hintText: 'UserID',
                                 filled: true,
                                 fillColor: Colors.purpleAccent,
                                 border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(30),
                                 ),
                               ),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.all(5.0),
                             child: TextFormField(
                               autovalidate: true,
                               validator: MultiValidator([
                                  RequiredValidator(errorText: 'Required'),
                                  MaxLengthValidator(6, errorText: "Min length exceeded"),
                                ]),
                               obscureText: true,
                               autocorrect: false,
                               autofocus: false,
                               style: TextStyle(
                                //  fontWeight: FontWeight.bold,
                                 fontSize: 15.0
                               ),
                               decoration: InputDecoration(
                                 labelText: 'Enter Password',
                                 hintText: 'Password',
                                 labelStyle: TextStyle(
                                   color: Colors.black
                                 ),
                                 filled: true,
                                 fillColor: Colors.purpleAccent,
                                 border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(30),
                                 ),
                               ),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(right: 5.0),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.end,
                               children: [
                                 
                                 Text(
                                   'forgot password',
                                   style: TextStyle(
                                    fontWeight: FontWeight.bold
                                   ),
                                 ),
                                 
                               ],
                             ),
                           ),
                           RaisedButton(
                                   onPressed: (){
                                     Navigator.pushNamed(context, '/prodlist');
                                   },
                                   color: Colors.redAccent,
                                   padding: EdgeInsets.symmetric(
                                     horizontal: 30.0
                                   ),
                                   child: Text(
                                     'LogIn',
                                     style: TextStyle(
                                       fontWeight: FontWeight.w900,
                                       fontSize: 20,
                                       color: Colors.white
                                     ),
                                   ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Create account:',
                                  style: TextStyle(
                                         fontWeight: FontWeight.bold,
                                         fontSize: 15,
                                         color: Colors.black
                                  ),
                                ),
                                MaterialButton(
                                   onPressed: (){
                                     Navigator.pushNamed(context, '/signup');
                                   },
                                  //  color: Colors.lightBlueAccent,
                                  splashColor: Colors.cyanAccent,
                                   child: Text(
                                     'SignUp',
                                     style: TextStyle(
                                       fontWeight: FontWeight.w900,
                                       fontSize: 20,
                                       color: Colors.black
                                     ),
                                   ),
                                ),
                              ],
                            ),
                          )
                         ]
                       )
                     )
                     )
                   ],
                 ),
               )
             ],
           )
            
          ]
        )
      )
    );
  }
}