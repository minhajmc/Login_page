import 'package:flutter/material.dart';
import 'package:login_page/screen2.dart';

class Texts extends StatelessWidget {
  Texts({super.key});
  final _userName = TextEditingController();
  final _password = TextEditingController();
  final _name = "minhaj";
  final _pass = "pass";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      
      // padding: EdgeInsets.only(top: 70, left: 20, right: 20),
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
            controller: _userName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
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
        ),
        SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
            controller: _password,
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
                fontSize: 15,
              ),
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: Colors.black,
              ),
              hintText: "Enter Password",
              hintStyle: TextStyle(color: Colors.white54, fontSize: 20),
            ),
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          padding: EdgeInsets.only( top: 10,right: 90),
          child: GestureDetector(
            child: Text(
              "Forget Password?",
              style: TextStyle(
                  color: Colors.blueAccent,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                  fontSize: 20),
            ),
            onTap: () {
             
            },
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 20, left: 30, right: 30),
          child: ElevatedButton(
            onPressed: () {
              text(context);
            },
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.red),
            ),
            child: Text(
              "Login",
              style: TextStyle(color: Colors.white, fontSize: 20, shadows: [
                Shadow(color: Colors.orange, blurRadius: 50),
              ]),
            ),
          ),
        ),
      ],
    );
  }

  void text(BuildContext ctx) {
    if (_name == _userName.text && _pass == _password.text) {
      Navigator.of(ctx).push(MaterialPageRoute(builder: (ctx) {
        return ScreenTwo();
      }));
      //
    } else {
      
      //snackbar
      ScaffoldMessenger.of(ctx).showSnackBar(
        SnackBar(
          shape: Border.all(width: 3, color: Colors.yellow),
          backgroundColor: Colors.red,
          margin: EdgeInsets.all(10),
          behavior: SnackBarBehavior.floating,
          content: ListTile(
            title: Text("Invalid Username or Password",style: TextStyle(fontSize: 19,color: Colors.black,),),
            leading: Icon(Icons.warning,color: Colors.orangeAccent,size: 30,),
            
          ),
        ),
      );

      //popup
      // showDialog(
      //     context: ctx,
      //     builder: (ctx1) {
      //       return AlertDialog(
      //         icon: Icon(
      //           Icons.warning_amber,
      //           size: 50,
      //         ),
      //         iconColor: Colors.amber,
      //         shape: Border.all(color: Colors.yellowAccent, width: 4),
      //         content: Text(
      //           textAlign: TextAlign.center,
      //           "Invalid Input ",
      //           style: TextStyle(
      //               fontSize: 20,
      //               decoration: TextDecoration.underline,
      //               color: Colors.white),
      //         ),
      //         contentPadding: EdgeInsets.all(30),
      //         backgroundColor: const Color.fromARGB(255, 235, 83, 83),
      //         actions: [
      //           TextButton(
      //             onPressed: () {
      //               Navigator.of(ctx1).pop();
      //             },
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.end,
      //               children: [
      //                 Icon(Icons.arrow_back,size: 24,color: Colors.black,),
      //                 Text(

      //                   "Back",
      //                   style: TextStyle(
      //                     fontSize: 20,
      //                     color: Colors.black,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           )
      //         ],
      //       );
      //     });
    }
  }
}
