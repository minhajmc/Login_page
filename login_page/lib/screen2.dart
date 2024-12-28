import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      centerTitle: true,title: Text("This is Second Screen"),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Hey Minhaj"),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
      
          }, child: Text("Go Back"),
          style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.red)),),
        ],
      ),
    ),




   );
  }
}