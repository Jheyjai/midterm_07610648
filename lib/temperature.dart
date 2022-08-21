import 'package:flutter/material.dart';
class Temp {

  CTK(int num){
    var result = num +273;
    return (result);
  }
  CTF(int num){
    var result = (5/9)*(num)+32;
    return (result);
  }
  FTC(int num){
    var result = (5/9)*(num-32);
    return (result);
  }
  FTK(int num){
    var result = (5/9)*(num-32)+273;
    return (result);
  }
  KTC(int num){
    var result = num-273;
    return (result);
  }
  KTF(int num){
    var result = (9/5)*(num-273)+32;
    return (result);
  }

}
