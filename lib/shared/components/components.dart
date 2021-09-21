import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildTextFormField ({
  required TextInputType type,
  required String text,
  required IconData prefix,
  IconData? suffix,
  Function()? onpressed,
  bool ispassword=false,
  required String? Function(String?)? validate,
})=>TextFormField(
                        keyboardType: type,
                        validator: validate,
                        obscureText:ispassword ,
                        decoration: InputDecoration(
                          labelText: text,
                          prefixIcon: Icon(prefix),
                          suffixIcon: IconButton(
                            onPressed: onpressed, 
                            icon: Icon(suffix),
                          ),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40.0)),
                        ),
                      );

Widget buildMaterialButton({
  required Color col,
  required IconData ico,
  required String text,
  Color iconcolor=Colors.white,
  Color txtcolor=Colors.white,
})=>Container(
                              height:40.0 ,
                              width: 130.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: col,
                              ),
                              child: MaterialButton(onPressed: (){},
                                child: 
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(ico
                                    ),
                                    Text(
                                      text,
                                      style: TextStyle(
                                        color:txtcolor ,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );