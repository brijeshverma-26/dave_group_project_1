import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {

  final Widget mobile;
  final Widget desktop;


  Responsive({required this.mobile, required this.desktop});


  static bool isMobile(BuildContext context){
    return MediaQuery.of(context).size.width<=768;
  }


  static bool isDesktop(BuildContext context){
    return MediaQuery.of(context).size.width>= 1024;
  }

  @override
  Widget build(BuildContext context) {
    final Size _size= MediaQuery.of(context).size;

    // return Container();
    if(_size.width>=1024) return desktop;
    //

    else return mobile;

  }
}
