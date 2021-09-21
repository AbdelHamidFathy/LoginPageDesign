import 'package:first_design/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Resgister_Screen.dart';
class Login_Screen extends StatefulWidget{
  @override
  _Login_ScreenState createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  bool ispass=true;
  var formkey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key:formkey,
                  child: Column(
                    children: [
                      Container(
                        height: 225.0,
                        width: 225.0,
                        child: Image(
                          image: AssetImage('assets/4957136.jpg'),
                        ),
                      ),
                      Text(
                        'Welcome back!',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Log in to your existant account',
                        style: TextStyle(
                          color: Colors.grey[400],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      buildTextFormField(
                        type: TextInputType.emailAddress, 
                        text: 'Email', 
                        prefix: Icons.email_outlined, 
                        validate: (value) {  
                          if (value!.isEmpty) {
                            return 'Please Enter Your Email';
                          }
                          return null;
                        },
                      ),
                        SizedBox(
                          height:10.0,
                        ),
                        buildTextFormField(
                          ispassword: ispass,
                          type: TextInputType.visiblePassword, 
                          text: 'Password', 
                          prefix: Icons.lock_outline,
                          suffix: Icons.visibility,
                          onpressed: (){
                            setState(() {
                              ispass=!ispass;
                            });
                          }, 
                          validate: (value) {  
                            if (value!.isEmpty) {
                              return 'Please Enter Your Password';
                            }
                            return null;
                          },
                        ),   
                        Container(
                          alignment: AlignmentDirectional.centerEnd,
                          child: TextButton(onPressed: (){}, 
                          child: Text(
                            'Forget password?'
                          ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.blue[800],
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          child: MaterialButton(onPressed: (){
                            setState(() {
                              formkey.currentState!.validate();
                            });
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Or connect using',
                          style: TextStyle(
                          color: Colors.grey[400],
                        ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            buildMaterialButton(
                              col: Colors.blue, 
                              ico: Icons.facebook, 
                              text: 'Facebook'
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            buildMaterialButton(
                              col: Colors.red, 
                              ico: Icons.g_mobiledata_outlined, 
                              text: 'Google',
                            ),
                          ],
                        ),
                          Container(
                            alignment: AlignmentDirectional.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                  Text(
                                    'Don\'t have an account?'
                                  ),
                                TextButton(onPressed: (){
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(builder: (context)=>register_Screen(),
                                    ),
                                  );
                                }, 
                                child: Text(
                                  'Sign up'
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
        ),
        ),
    );
  }
}