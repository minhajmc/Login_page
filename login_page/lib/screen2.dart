import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Wellcome To Second Screen"),

      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.cyan,
              
              child: Text(
              
                "Hey Minhaj",
                style: TextStyle(fontSize: 40),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 350,
              child: Image.network(
                  "https://c8.alamy.com/comp/E730KJ/beautiful-maple-with-nice-background-for-adv-or-others-purpose-use-E730KJ.jpg",
                  fit: BoxFit.cover),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Go Back"),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.red),
              ),
            ),
            Container(
             width:double.infinity,
             height:365,
            child: Image.network("https://static.toiimg.com/thumb/msid-44945486,width-1070,height-580,resizemode-75,imgsize-44945486,pt-32,y_pad-40/44945486.jpg",fit: BoxFit.cover,)
          ),
          ],
        ),
      ),
    );
  }
}
