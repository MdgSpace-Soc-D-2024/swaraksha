import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:swaraksha/main.dart';
import 'main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final TextEditingController emailText = TextEditingController();
  final TextEditingController passwordText = TextEditingController();
  final TextEditingController nameText = TextEditingController();
  final TextEditingController usernameText = TextEditingController();

  bool isLogin = true;

  void fillForm() {
    setState(() {
      isLogin = !isLogin;
    });
  }

  Future<void> LoginUser() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: emailText.text.trim(),
        password: passwordText.text.trim(),
      );
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SwarakshaUI()),
      );
    } catch (e) {}
  }

  Future<void> registerUser() async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: emailText.text.trim(),
        password: passwordText.text.trim(),
      );
      User? user = userCredential.user;

      if (user != null) {
        await _firestore.collection('users').doc(user.uid).set({
          'name': nameText.text.trim(),
          'username': usernameText.text.trim(),
          'email': user.email,
        });
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SwarakshaUI()),
        );
      }
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isLogin ? 'Login' : 'Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (!isLogin)
              TextField(
                controller: nameText,
                decoration: InputDecoration(labelText: 'Name'),
              ),
            if (!isLogin)
              TextField(
                controller: usernameText,
                decoration: InputDecoration(labelText: 'Username'),
              ),
            TextField(
              controller: emailText,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: passwordText,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: isLogin ? LoginUser : registerUser,
              child: Text(isLogin ? 'Login' : 'Register'),
            ),
            TextButton(
              onPressed: fillForm,
              child: Text(isLogin
                  ? "Don't have an account? Register"
                  : "Already have an account? Login"),
            ),
          ],
        ),
      ),
    );
  }
}
