import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class FeedbackApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FeedbackPage(),
    );
  }
}

class FeedbackPage extends StatefulWidget {
  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  int overallRating = 0;
  int easeOfUseRating = 0;
  int safetyRating = 0;
  int designRating = 0;

  TextEditingController feedbackController = TextEditingController();
  TextEditingController suggestionController = TextEditingController();

  final DatabaseReference _databaseRef = FirebaseDatabase.instance.ref(); // Updated line

  void _submitFeedback() {
    String feedback = feedbackController.text;
    String suggestion = suggestionController.text;

    Map<String, dynamic> feedbackData = {
      'overallRating': overallRating,
      'easeOfUseRating': easeOfUseRating,
      'safetyRating': safetyRating,
      'designRating': designRating,
      'feedback': feedback,
      'suggestion': suggestion,
      'timestamp': ServerValue.timestamp,
    };

    _databaseRef.child('feedbacks').push().set(feedbackData).then((_) {
      print('Feedback submitted successfully!');
      feedbackController.clear();
      suggestionController.clear();
      setState(() {
        overallRating = 0;
        easeOfUseRating = 0;
        safetyRating = 0;
        designRating = 0;
      });
    }).catchError((error) {
      print('Failed to submit feedback: $error');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        title: Text(
          'Give Us a Rating',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.pink[200],
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Image.asset(
              'assets/images/logo.png',
              height: 80,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Center(
              child: Text(
                'Your Feedback',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.pink[900]),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return IconButton(
                  iconSize: 40,
                  icon: Icon(
                    index < overallRating ? Icons.star : Icons.star_border,
                    color: index < overallRating ? Colors.pink : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      overallRating = index + 1;
                    });
                  },
                );
              }),
            ),
            SizedBox(height: 40),
            Text(
              'Your Feedback',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.pink[800]),
            ),
            TextField(
              controller: feedbackController,
              decoration: InputDecoration(
                hintText: 'Share your thoughts...',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
              ),
              maxLines: 3,
            ),
            SizedBox(height: 40),
            Text(
              'Feedback Categories',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.pink[800]),
            ),
            RatingStars_Build('Ease of Use', easeOfUseRating, (rating) {
              setState(() {
                easeOfUseRating = rating;
              });
            }),
            RatingStars_Build('Safety Features', safetyRating, (rating) {
              setState(() {
                safetyRating = rating;
              });
            }),
            RatingStars_Build('Design', designRating, (rating) {
              setState(() {
                designRating = rating;
              });
            }),
            SizedBox(height: 40),
            TextField(
              controller: suggestionController,
              decoration: InputDecoration(
                hintText: 'Suggest a feature ...',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: ElevatedButton(
                onPressed: _submitFeedback,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink[300],
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                ),
                child: Text('Submit Feedback', style: TextStyle(fontSize: 25)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget RatingStars_Build(String title, int currentRating, Function(int) onRated) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(title, style: TextStyle(color: Colors.pink[600], fontSize: 20)),
            SizedBox(width: 10),
            Row(
              children: List.generate(5, (index) {
                return IconButton(
                  iconSize: 30,
                  icon: Icon(
                    index < currentRating ? Icons.star : Icons.star_border,
                    color: index < currentRating ? Colors.pink : Colors.grey,
                  ),
                  onPressed: () {
                    onRated(index + 1);
                  },
                );
              }),
            ),
          ],
        ),
      ],
    );
  }
}