import 'package:flutter/material.dart';
import 'page1_JRCD.dart';
import 'page2_JRCD.dart';

class HomePage_JRCD extends StatelessWidget{
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: Text('Home Page')),
      body: Center(child: Column(children: [
        Text('Welcome to Home Page!',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
           ),
          Image.asset('assets/image.png',
            width: 300,
            height: 300,
            fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _navigateToPage1(context),
              child: Text('Go to Page 1'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => _navigateToPage2(context),
              child: Text('Go to Page 2'),
            ),
         ],
        ),
       ),
      );
  }

   void _navigateToPage1(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Page1_JRCD()),
    );
  }

  void _navigateToPage2(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Page2_JRCD()),
    );
   }
  }