import 'package:flutter/material.dart';
import 'package:login_page/text.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 200, left: 50, right: 50, bottom: 275),
      decoration: BoxDecoration(
        border: Border.all(
          width: 7,
          color: Colors.indigo,
          
        ),
        borderRadius: BorderRadius.circular(50),
        color: Colors.black38,
        boxShadow: [
          BoxShadow(color: Colors.black26, spreadRadius: 30),
        ],
      ),
      child:Texts(),
    );
  }
}
