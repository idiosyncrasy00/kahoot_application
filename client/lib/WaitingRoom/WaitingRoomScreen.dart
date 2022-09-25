import 'package:flutter/material.dart';
import '../Profile/ListViewScreen.dart';

class WaitingRoomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.black.withOpacity(1.0)),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 241, 241, 241),
      ),
      body: Center(
        child: Column(children: <Widget>[
          Text("Waiting Room Screen", style: TextStyle(fontSize: 24)),
          ElevatedButton(
              onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ListViewScreen()),
                    ),
                  },
              child: const Text('Go to another page')),
        ]),
      ),
    );
  }
}
