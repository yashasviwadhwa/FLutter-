import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  const Alert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepPurple,
      ),
      home: Scaffold(
        body: Center(
            child: ElevatedButton(
          child: Text("Show Alert"),
          onPressed: () {
            _showDialog(context);
          },
        )),
      ),
    );
  }
}

Future<void> _showDialog(BuildContext context) async {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("This is an alert"),
        contentPadding: EdgeInsets.all(16.0), // Adjust padding as needed
        content: Container(
          width: 200.0, // Set the desired width
          height: 100.0, // Set the desired height
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Yogesh"),
                  Text("Wadhwa"),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
