import 'package:flutter/material.dart';
import 'package:login_page/login.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: "Login Page",
      home: Scaffold(
        
        body: Container(
          width: double.infinity,
          height: double.infinity,

          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
                "https://t4.ftcdn.net/jpg/01/19/11/55/360_F_119115529_mEnw3lGpLdlDkfLgRcVSbFRuVl6sMDty.jpg"),
            fit: BoxFit.cover,
          ),
          ),
          child:Login(),
        ),
      ),
    );
  }
}
