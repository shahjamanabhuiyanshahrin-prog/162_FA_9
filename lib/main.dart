import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IDCard(),
    );
  }
}

class IDCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: SafeArea(
        child: Center(
          child: AspectRatio(
            aspectRatio: 9 / 16,
            child: Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  // 🔵 TOP TITLE
                  Text(
                    "Digital ID Card",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),

                  SizedBox(height: 15),

                  CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),

                  SizedBox(height: 15),

                  Text(
                    "Shah Jamana Bhuiyan",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 8),

                  Text("Batch: 63rd"),
                  Text("Department: CSE"),

                  SizedBox(height: 15),

                  Divider(),

                  SizedBox(height: 10),

                  Text("ID: 0182410012101162"),
                  SizedBox(height: 5),
                  Text("Email: jmna123@gmail.com"),
                  SizedBox(height: 5),
                  Text("Phone: 0187788999"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}