import 'package:flutter/material.dart';

class BottomSheet extends StatelessWidget {
  const BottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Sheet "),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  backgroundColor: Colors.amber,
                  context: context,
                  builder: (context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          title: Text("orange"),
                          subtitle: Text("karan"),
                        ),
                        ListTile(
                          title: Text("orange"),
                          subtitle: Text("karan"),
                        ),
                        ListTile(
                          title: Text("orange"),
                          subtitle: Text("karan"),
                        ),
                      ],
                    );
                  });
            },
            child: Text("Bttom sheet ")),
      ),
    );
  }
}
