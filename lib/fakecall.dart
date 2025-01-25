import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'emergency.dart';
import 'fakecalllift.dart';

class CallScreen extends StatelessWidget {
  final AudioPlayer audioPlayer;

  CallScreen({required this.audioPlayer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/fakecallgradient.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 130),
            Icon(
              Icons.person,
              color: Colors.white,
              size: 100,
            ),
            SizedBox(height: 20),
            Text(
              'My Girlfriend',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Mobile +91 9875873345',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                'Reply with message',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 160.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: FloatingActionButton(
                      onPressed: () {
                        audioPlayer.stop();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyApp()),
                        );
                      },
                      backgroundColor: Colors.red,
                      shape: CircleBorder(),
                      child: Icon(Icons.call_end, color: Colors.white, size: 45),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: FloatingActionButton(
                      onPressed: () {
                        audioPlayer.stop();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CallLift()),
                        );
                      },
                      backgroundColor: Colors.green,
                      shape: CircleBorder(),
                      child: Icon(Icons.call, color: Colors.white, size: 45),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}