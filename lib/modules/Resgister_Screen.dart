import 'package:first_design/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Login_Screen.dart';


class register_Screen extends StatefulWidget{
  @override
  _register_ScreenState createState() => _register_ScreenState();
}

class _register_ScreenState extends State<register_Screen> {
  var formkey=GlobalKey<FormState>();
  bool ispass=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: 
        IconButton(
          onPressed: (){
            Navigator.pop(context);
          }, 
          icon: Icon(Icons.arrow_back_outlined,
          color: Colors.black,
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child:Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key:formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Let\'s Get Stated!',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Create an account to get all features',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey, 
                    ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Expanded(
                  child: buildTextFormField(
                    type: TextInputType.name, 
                    text: 'Name', 
                    prefix: Icons.person_outline_outlined, 
                    validate: (value){
                      if (value!.isEmpty) {
                        return 'Please Enter Your Name';
                      }
                      return null;
                    },
                  ),
                ),
                Expanded(
                  child: buildTextFormField(
                    type: TextInputType.emailAddress, 
                    text: 'Email', 
                    prefix: Icons.email_outlined, 
                    validate: (value){
                      if (value!.isEmpty) {
                        return 'Please Enter Your Email';
                      }
                      return null;
                    },
                  ),
                ),
                Expanded(
                  child: buildTextFormField(
                    type: TextInputType.phone, 
                    text: 'Phone', 
                    prefix: Icons.phone_android_outlined, 
                    validate: (value){
                      if (value!.isEmpty) {
                        return 'Please Enter Your Phone';
                      }
                      return null;
                    },
                  ),
                ),
                Expanded(
                  child: buildTextFormField(
                    ispassword: ispass,
                    type: TextInputType.visiblePassword, 
                    text: 'Password', 
                    prefix: Icons.lock_open_outlined, 
                    suffix: Icons.visibility,
                    onpressed: (){
                      setState(() {
                        ispass=!ispass;
                      });
                    },
                    validate: (value){
                      if (value!.isEmpty) {
                        return 'Please Enter Your Password';
                      }
                      return null;
                    },
                  ),
                ),
                Expanded(
                  child: buildTextFormField(
                    ispassword: ispass,
                    suffix: Icons.visibility,
                    onpressed: (){
                      setState(() {
                        ispass=!ispass;
                      });
                    },
                    type: TextInputType.visiblePassword, 
                    text: 'Confirm password', 
                    prefix: Icons.lock_open_outlined, 
                    validate: (value){
                      if (value!.isEmpty) {
                        return 'Please Enter Your Password';
                      }
                      return null;
                    },
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 50.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.blue[900],
                    ),
                    child: MaterialButton(
                      onPressed: (){
                        setState(() {
                          formkey.currentState!.validate();
                        });
                      },
                      child: Text(
                        'CREATE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      TextButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=>Login_Screen(),
                            ),
                          );
                        }, 
                        child: Text(
                          'Login here'
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ), 
      ),
    );
  }
}