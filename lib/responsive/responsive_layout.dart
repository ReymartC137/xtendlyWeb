import 'package:flutter/material.dart';

class Responsivelayout extends StatelessWidget {

  final Widget mobileBody;
  final Widget desktopBody;
  const Responsivelayout({
    required this.mobileBody,
    required this.desktopBody,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints){
      if(constraints.maxWidth<1100){
        print(constraints.toString());
        return mobileBody;
      }else{
        return desktopBody;
      }
    });
  }
}
