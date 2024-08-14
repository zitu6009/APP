import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Greeting App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Hello, World!',
                style: TextStyle(
                  color: Colors.red, // Set text color to red
                  fontWeight: FontWeight.bold, // Make text bold
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Welcome to Flutter!',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
               Image.network(
                'https://cdn.iconscout.com/icon/free/png-256/free-flutter-2038877-1720090.png?f=webp',
                width: 200,
                height: 200,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  child: Text('Press Me'),
                    // style: ElevatedButton.styleFrom(
                    //     primary: Colors.green,
                    //    ),
                
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Button Pressed!'),
                    ),
                  );
                },
           
              ),

            ],
          ),
        ),
      ),
    );
  }
}
