import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ColorChangeApp(),
    );
  }
}

class ColorChangeApp extends StatefulWidget {
  const ColorChangeApp({super.key});
  @override
  State<ColorChangeApp> createState() => _ColorChangeAppState();
}

class _ColorChangeAppState extends State<ColorChangeApp> {
  Color _containerColor = const Color.fromARGB(255, 117, 52, 64);
  final Random _random = Random();

  void _changeColor() {
    setState(() {
      _containerColor = Color.fromRGBO(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        1,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/rain.gif'), fit: BoxFit.cover),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedContainer(
                  margin: const EdgeInsets.only(top: 35.0),
                  duration:
                      const Duration(seconds: 2), // Duration for the animation
                  curve: Curves.fastOutSlowIn, // Curve for the animation
                  width: 300,
                  height: 450,
                  decoration: BoxDecoration(
                    color: _containerColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),

                  child: Center(
                    child: Column(
                      //row, for inline avatar and name
                      children: [
                        const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(18.0),
                              child: CircleAvatar(
                                backgroundImage: AssetImage('images/pic.jpg'),
                                radius: 50.0,
                              ),
                            ),
                            //column for both name and description but still
                            //under the inline 'avatar and name'
                            Column(
                              children: [
                                Text(
                                  'Ivan Abillon',
                                  style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  'Business Card',
                                  style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontSize: 17.0,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),

                        //content of the card
                        Container(
                          height: 250,
                          width: 250,
                          decoration: const BoxDecoration(
                            color: Color(0xFFFbe9E7),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: const Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(top: 17.0, left: 12.0),
                                  child: Text(
                                    'About Me',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              SizedBox(
                                  height:
                                      20), // Adding space between text widgets
                              Align(
                                alignment: Alignment
                                    .center, // Align the text to the center (default alignment)
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15.0, vertical: 10.0),
                                  child: Text(
                                    'Hi! Im Ivan Abillon. I am 20 years of age and a Computer Engineering Student. This is my first business card! I hope you like it!!!',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        //contact information
                        const Padding(
                          padding: EdgeInsets.only(top: 14.0),
                          child: Column(
                            children: [
                              Text(
                                'Email: anyemail.com',
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 15.0,
                                    color: Colors.white),
                              ),
                              Text(
                                'Contact Number: 0987-654-3321',
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 15.0,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                FloatingActionButton(
                  backgroundColor: Colors.transparent,
                  shape: const CircleBorder(
                      side: BorderSide(color: Colors.white, width: 2.0)),
                  onPressed: _changeColor,
                  child: const Icon(Icons.play_arrow),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
