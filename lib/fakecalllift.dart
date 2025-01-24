import 'dart:async';
import 'package:flutter/material.dart';
import 'emergency.dart'; // Import emergency.dart for redirection

class CallLift extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CallScreen(),
    );
  }
}

class CallScreen extends StatefulWidget {
  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  late Timer _timer;
  int _seconds = 0;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  String _formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int secs = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}';
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/fakecallgradient1.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 100),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white.withOpacity(0.2),
              child: Icon(Icons.person, color: Colors.white, size: 50),
            ),
            SizedBox(height: 20),
            Text(
              'Voicemail',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              '+91 98758 73345',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20),
            Text(
              _formatTime(_seconds),
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 30),
              children: [
                _buildIconWithLabel(Icons.videocam, 'Video call'),
                _buildIconWithLabel(Icons.add, 'Add call'),
                _buildIconWithLabel(Icons.note, 'Note'),
                _buildIconWithLabel(Icons.mic_off, 'Mute'),
                _buildIconWithLabel(Icons.pause, 'Hold'),
                _buildIconWithLabel(Icons.voicemail, 'Record'),
              ],
            ),
            SizedBox(height: 15),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 80,  // Adjust the width of the container
                height: 80, // Adjust the height of the container
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                child: FloatingActionButton(
                  onPressed: () {
                    _timer.cancel(); // Stop the timer
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),
                    );
                  },
                  backgroundColor: Colors.transparent,  // Make the background transparent to show the container color
                  child: Icon(Icons.call_end, color: Colors.white, size: 50),  // Increase the size of the icon
                  elevation: 0,
                ),
              ),
            ),
            SizedBox(height: 120),
          ],
        ),
      ),
    );
  }

  Widget _buildIconWithLabel(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.white, size: 36), // Increased icon size
        SizedBox(height: 12), // Adjusted spacing
        Text(
          label,
          style: TextStyle(color: Colors.white, fontSize: 14), // Increased label size
        ),
      ],
    );
  }
}
