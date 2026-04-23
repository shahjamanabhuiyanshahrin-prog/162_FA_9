import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IDCardPage(),
    );
  }
}

class IDCardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      body: SafeArea(
        child: Center(
          child: AspectRatio(
            aspectRatio: 9 / 16,
            child: Container(
              margin: EdgeInsets.all(16),
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
                children: [

                  AppBar(
                    title: Text("Digital ID Card"),
                    centerTitle: true,
                    backgroundColor: Colors.blue,
                    automaticallyImplyLeading: false,
                    elevation: 0,
                  ),

                  SizedBox(height: 10),

                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Shah Jamana Bhuiyan",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 5),

                  Text("Department: CSE"),
                  Text("Batch: 63rd"),

                  SizedBox(height: 10),

                  Divider(),

                  ListTile(
                    leading: Icon(Icons.badge),
                    title: Text("0182410012101162"),
                    subtitle: Text("ID Number"),
                  ),

                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text("jmna123@gmail.com"),
                    subtitle: Text("Email"),
                  ),

                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("0187788999"),
                    subtitle: Text("Phone"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}