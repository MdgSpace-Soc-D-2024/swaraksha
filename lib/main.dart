import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'emergency.dart';
import 'faq.dart';
import 'feedback.dart';
import 'safetylessons.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SwarakshaUI(),
//     );
//   }
// }

class SwarakshaUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Swaraksha',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 10),
                          Image.asset(
                            'assets/images/logo.png',
                            height: 180,
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EmergencyPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink[300],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    child: Text(
                      ' Emergency ',
                      style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SafetyLessonsPage()),
                      );
                      },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink[200],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                    child: Text(
                      'Safety Lessons',
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '    Nearby',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _buildNearbyButton(Icons.local_hospital, 'Hospital', 'hospital near me'),
                          _buildNearbyButton(Icons.local_pharmacy, 'Pharmacy', 'pharmacy near me'),
                          _buildNearbyButton(Icons.person, 'Police Station', 'police station near me'),
                          _buildNearbyButton(Icons.directions_bus, 'Transport', 'transport near me'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FaqPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink[100],
                  ),
                  child: Text('FAQ'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FeedbackPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink[100],
                  ),
                  child: Text('Feedback'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNearbyButton(IconData icon, String label, String query) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            _launchGoogleMaps(query);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink[200],
            shape: CircleBorder(),
            padding: EdgeInsets.all(20),
          ),
          child: Icon(icon, color: Colors.white),
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  void _launchGoogleMaps(String query) async {
    final url = Uri.encodeFull('https://www.google.com/maps/search/$query');
    await launch(url);
  }
}
