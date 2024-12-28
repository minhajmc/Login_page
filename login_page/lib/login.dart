import 'package:flutter/material.dart';
import 'package:login_page/text.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container(
        
        width: 320,
        height: 420,
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
        child: Texts(),
        
        
      
      ),
    );
  }
}