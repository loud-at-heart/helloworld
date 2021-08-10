import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAppRun(),
    );
  }
}

class MyAppRun extends StatefulWidget {
  const MyAppRun({Key? key}) : super(key: key);

  @override
  _MyAppRunState createState() => _MyAppRunState();
}

class _MyAppRunState extends State<MyAppRun> {
  int tap = 0;

  void incCount() {
    setState(() {
      tap = tap + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App',
          style: GoogleFonts.mcLaren(),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        color: Colors.teal.shade200,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("The Number of Times button is pressed",
                style: GoogleFonts.pacifico(),
              ),
              Text(
                '${tap}',
                style: GoogleFonts.indieFlower(fontSize: 50.0),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          incCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
