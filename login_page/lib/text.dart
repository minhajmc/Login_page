import 'package:flutter/material.dart';



class Texts extends StatelessWidget {
  const Texts({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 70, left: 20, right: 20),
      children: [
        TextField(
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            hintText: "Enter User Name",
            hintStyle: TextStyle(color: Colors.white54),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: BorderSide(
                color: Colors.white54,
                width: 3,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Colors.white38,
                width: 3,
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 40),
          child: TextField(
            keyboardType: TextInputType.number,
            obscureText: true,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(24),
                borderSide: BorderSide(
                  color: Colors.white54,
                  width: 3,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: Colors.white38,
                  width: 3,
                ),
              ),
              helperStyle: TextStyle(
                color: Colors.blueAccent,
                fontSize: 13,
              ),
              suffixIcon: Icon(Icons.password,color: Colors.black,),
              hintText: "Enter Password",
              hintStyle: TextStyle(color: Colors.white54, fontSize: 20),
            ),
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 50, top: 10),
          child: GestureDetector(
            child: Text(
              "Forget Password?",
              style: TextStyle(
                  color: Colors.blueAccent,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                  fontSize: 16),
            ),
            onTap: () {},
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 20, left: 30, right: 30),
          child: ElevatedButton(
            onPressed: () {
              
            },
            
            style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.red),),
            child: Text("Login",style: TextStyle(
              color: Colors.white,
              fontSize: 20,shadows: [
                Shadow(color: Colors.orange,blurRadius: 50),

              ]
            ),),
          ),
        ),
      ],
    );
  }
}
