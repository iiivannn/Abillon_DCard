import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/pic.jpg'),
              radius: 50.0,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Ivan Abillon',
              style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Digital Card',
              style: TextStyle(
                  fontFamily: 'Raleway', fontSize: 15.0, color: Colors.white),
            ),
            SizedBox(
              height: 10.0,
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.brown),
                  title: Text('+63 987 654 3210'),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListTile(
                  leading: Icon(Icons.mail, color: Colors.brown),
                  title: Text('anyemail.mail.com'),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
