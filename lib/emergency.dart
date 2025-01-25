import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:geolocator/geolocator.dart';
import 'package:share_plus/share_plus.dart';
import 'fakecall.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EmergencyPage(),
    );
  }
}

class EmergencyPage extends StatefulWidget {
  @override
  _EmergencyPageState createState() => _EmergencyPageState();
}

class _EmergencyPageState extends State<EmergencyPage> {
  AudioPlayer _audioPlayer = AudioPlayer();
  bool _isPlaying = false;

  void _toggleMusic() async {
    if (_isPlaying) {
      await _audioPlayer.stop();
    } else {
      await _audioPlayer.setSource(AssetSource('audios/buzz.wav'));
      _audioPlayer.setReleaseMode(ReleaseMode.loop);
      await _audioPlayer.play(AssetSource('audios/buzz.wav'));
    }
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  void _toggleRingtone() async {
    if (_isPlaying) {
      await _audioPlayer.stop();
    } else {
      await _audioPlayer.setSource(AssetSource('audios/ringtone.mp3'));
      _audioPlayer.setReleaseMode(ReleaseMode.loop);
      await _audioPlayer.play(AssetSource('audios/ringtone.mp3'));
    }
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  Future<void> _shareLocation() async {
    try {
      LocationPermission permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Location permission denied')),
        );
        return;
      }

      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      String message = 'My current location is: https://www.google.com/maps/search/?api=1&query=${position.latitude},${position.longitude}';

      await Share.share(message);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error sharing location: $e')),
      );
    }
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      '              Swaraksha',
                      style: TextStyle(
                          fontSize: 33,
                          color: Colors.black,
                          fontWeight: FontWeight.w900),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  width: 80,
                  child: Image.asset('assets/images/logo.png'),
                ),
                SizedBox(height: 70, width: 80)
              ],
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0x66ED5AB3),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  Text(
                    'EMERGENCY MODE',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 65),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => SOSDialog(),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(70),
                  backgroundColor: Colors.pink[200],
                ),
                child: Text(
                  'SOS',
                  style: TextStyle(
                    fontSize: 54,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 45),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                padding: EdgeInsets.all(40),
                children: [
                  NearbyButton(
                      'FAKE CALL',
                      Icons.phone,
                          () {
                        _toggleRingtone();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CallScreen(audioPlayer: _audioPlayer)),
                        );
                      }
                  ),
                  NearbyButton('SHARE LOCATION', Icons.share, _shareLocation),
                  NearbyButton('AUTO RECORD', Icons.mic, () {}),
                  NearbyButton(
                    'TRIGGER',
                    Icons.notification_important,
                    _toggleMusic,
                    color: _isPlaying ? Colors.pink[700] : Colors.pink[300],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget NearbyButton(String label, IconData icon, VoidCallback onPressed, {Color? color}) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? Colors.pink[300],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 70, color: Colors.white),
          SizedBox(height: 10),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class SOSDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 80,
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.pink.shade100,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    'DIAL',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _dialNumber('100');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200,
                    foregroundColor: Colors.black,
                  ),
                  child: Text('100'),
                ),
                ElevatedButton(
                  onPressed: () {
                    _dialNumber('108');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200,
                    foregroundColor: Colors.black,
                  ),
                  child: Text('108'),
                ),
                ElevatedButton(
                  onPressed: () {
                    _dialNumber('112');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200,
                    foregroundColor: Colors.black,
                  ),
                  child: Text('112'),
                ),
              ],
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.shade300,
                foregroundColor: Colors.black,
                padding: EdgeInsets.symmetric(vertical: 14),
              ),
              child: Text('RECORD A MESSAGE'),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () async {
                const String favoritesDeepLink = 'content://com.android.contacts/contacts/favorites';
                final Uri uri = Uri.parse(favoritesDeepLink);

                if (await canLaunch(uri.toString())) {
                  await launch(uri.toString());
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Could not open Google Contacts')),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.shade300,
                foregroundColor: Colors.black,
                padding: EdgeInsets.symmetric(vertical: 14),
              ),
              child: Text('OPEN FAVOURITES'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _dialNumber(String number) async {
    final Uri phoneUri = Uri(scheme: 'tel', path: number);
    await launch(phoneUri.toString());
  }
}