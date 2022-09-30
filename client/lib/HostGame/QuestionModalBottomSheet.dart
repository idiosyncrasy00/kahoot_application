import '../WaitingRoom/WaitingRoomScreen.dart';
import 'package:flutter/material.dart';

class QuestionModalBottomSheet extends StatefulWidget {
  final double borderWidth = 0.5;
  final double containerHeight = 70.0;

  @override
  State<QuestionModalBottomSheet> createState() => _QuestionModalBottomSheet();
}

class _QuestionModalBottomSheet extends State<QuestionModalBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Center(
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0)),
                ),
                child: const Text(
                  "Start",
                  style: TextStyle(
                    height: 1.0,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WaitingRoomScreen()),
                  )
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
