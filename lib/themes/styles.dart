import 'package:flutter/material.dart';
import 'dart:ui';

TextStyle myText1(){
  return TextStyle(
    fontSize: 35,
    fontWeight: FontWeight.bold,
    fontFamily: 'PT',
  );
}

TextStyle myText2({Color mcolor1: Colors.deepPurple,})

{
  return TextStyle(
    fontSize: 35,
    fontWeight: FontWeight.bold,
    fontFamily: 'PT',
    color: mcolor1,
  );
}
