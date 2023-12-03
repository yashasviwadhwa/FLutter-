import 'package:flutter/material.dart';

class Pp extends StatelessWidget {
  const Pp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height:
                MediaQuery.of(context).size.height * 0.65, // Adjusted height
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [
                  Color(0xfffbc2eb),
                  Color(0xffa6c1ee),
                ],
              ),
            ),
          ),
          Positioned(
            top: 180,
            child: Container(
              height:
                  MediaQuery.of(context).size.height * 0.35, // Adjusted height
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),

                    // Sign-in text
                    Text(
                      "SIGN IN",
                      style: TextStyle(
                        color: Colors.white, // Adjusted text color
                        fontSize: 30,
                      ),
                    ),

                    const SizedBox(height: 10),

                    // Email text field
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        style: const TextStyle(
                            color: Colors.white), // Added text color
                        decoration: InputDecoration(
                          hintText: 'Email',
                          fillColor: Colors.white, // Set fill color
                          filled: true,
                          contentPadding: const EdgeInsets.all(15),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(width: 0),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 25),

                    // Password text field
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        style: const TextStyle(
                            color: Colors.white), // Added text color
                        decoration: InputDecoration(
                          hintText: 'Password',
                          fillColor: Colors.white, // Set fill color
                          filled: true,
                          contentPadding: const EdgeInsets.all(15),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(width: 0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
