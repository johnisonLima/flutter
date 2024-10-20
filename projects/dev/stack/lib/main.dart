import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold( 
        appBar: AppBar(
          title: const Text(
            'Stack App', 
            style: TextStyle(color: Colors.white)
            ),
          backgroundColor: Colors.blueAccent,
        ),
        body: Stack(
          // fit: StackFit.passthrough,
          // alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),

            
            Positioned(
              bottom: 10,
              left: 10,
              child: Container(
                width: 180,
                height: 100,
                color: Colors.lightBlue,
              ),
            )
          ],
        ),
      )
    );
  }
}
