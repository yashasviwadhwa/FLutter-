import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Work"),
        backgroundColor: Colors.purple.shade400,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              final snackBar = SnackBar(
                action: SnackBarAction(
                  label: "Study",
                  onPressed: () => debugPrint("hello"),
                  textColor: Colors.white,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                behavior: SnackBarBehavior.floating,
                padding: EdgeInsets.all(20),
                backgroundColor: Colors.red,
                duration: const Duration(seconds: 3),
                content: Text("This is the simple Snackbar you want to show."),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Text("Show Snackbar"),
          ),
        ),
      ),
    );
  }
}
