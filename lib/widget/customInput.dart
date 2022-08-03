import 'package:flutter/material.dart';


class CustomInput extends StatelessWidget {

  final TextEditingController? inputTextField;
  final String? hint;
  final Widget? icon;
  final EdgeInsets? padding;

  const CustomInput({
    @required this.inputTextField,
    @required this.hint,
     this.icon,
    this.padding,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 30,
      child: TextField(

        controller: inputTextField,
        decoration: InputDecoration(fillColor: Colors.grey,
          hintStyle: TextStyle(fontSize: 10),


            prefixIcon: icon,
            hintText: hint,
            contentPadding: EdgeInsets.all(5),
            border: OutlineInputBorder(

            )
        ),
      ),
    );
  }
}
