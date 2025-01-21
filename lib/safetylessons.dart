import 'package:flutter/material.dart';

class SafetyLessonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Safety material',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: SafetyModulesScreen(),
    );
  }
}

class Module {
  final String title;
  final String imagePath;
  final String dialogContent;

  Module({required this.title, required this.imagePath, required this.dialogContent});
}

class SafetyModulesScreen extends StatefulWidget {
  @override
  _SafetyModulesScreenState createState() => _SafetyModulesScreenState();
}

class _SafetyModulesScreenState extends State<SafetyModulesScreen> {
  final List<Module> modules = [
    Module(
      title: 'Module 1',
      imagePath: 'assets/images/image1.png',
      dialogContent: 'This is the detailed information for Module 1.',
    ),
    Module(
      title: 'Module 2',
      imagePath: 'assets/images/image2.png',
      dialogContent: 'This is the detailed information for Module 2.',
    ),
    Module(
      title: 'Module 3',
      imagePath: 'assets/images/image3.png',
      dialogContent: 'This is the detailed information for Module 3.',
    ),
    Module(
      title: 'Module 4',
      imagePath: 'assets/images/image4.png',
      dialogContent: 'This is the detailed information for Module 4.',
    ),
    Module(
      title: 'Module 5',
      imagePath: 'assets/images/image5.png',
      dialogContent: 'This is the detailed information for Module 5.',
    ),
  ];

  double textSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.contain,
              height: 60,
            ),
            SizedBox(width: 8),
            Text(
              'Swaraksha',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), // Increased font size
            ),
          ],
        ),
        backgroundColor: Colors.pinkAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Women Safety Modules',
                style: TextStyle(fontSize: textSize, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.0,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                ),
                itemCount: modules.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      _showDialog(context, modules[index]);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(30), // Curvature added
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                            offset: Offset(2, 2), // Shadow effect
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(modules[index].imagePath, height: 50, width: 50),
                          SizedBox(height: 8),
                          Text(
                            modules[index].title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: textSize,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  void _showDialog(BuildContext context, Module module) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(module.title),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Image.asset(module.imagePath, height: 100),
                SizedBox(height: 8),
                Text(module.dialogContent),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
