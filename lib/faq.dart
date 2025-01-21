import 'package:flutter/material.dart';

class FaqPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FAQ Page',
      theme: ThemeData(
        primaryColor: Colors.pink,
      ),
      home: FaqScreen(),
    );
  }
}

class FaqScreen extends StatelessWidget {
  final List<FAQItems> faqItems = [
    FAQItems(
      question: "questionn",
      answer: "my answer",
      imagePath: 'assets/images/logo.png',
    ),
    FAQItems(
      question: "this is the qn",
      answer: "bla bla bla ghf asjhf asd asdfg swerfvm ucm ghh gjask hgfd asdf",
      imagePath: 'assets/images/image1.png',
    ),
    FAQItems(
      question: "this is the qn",
      answer: "bla bla bla thjk kjh jhgfdn ygnm ucm ghh gjask hgfd asdf",
      imagePath: 'assets/images/image2.png',
    ),
    FAQItems(
      question: "this is the qn",
      answer: "dfgh dfghj fghjk gyh tgbnm rfghjkjh ghh gjask hgfd asdf",
      imagePath: 'assets/images/image3.png',
    ),

    FAQItems(
      question: "questionn",
      answer: "my answer",
      imagePath: 'assets/images/logo.png',
    ),
    FAQItems(
      question: "this is the qn",
      answer: "bla bla bla ghf asjhf asd asdfg swerfvm ucm ghh gjask hgfd asdf",
      imagePath: 'assets/images/image1.png',
    ),
    FAQItems(
      question: "this is the qn",
      answer: "bla bla bla thjk kjh jhgfdn ygnm ucm ghh gjask hgfd asdf",
      imagePath: 'assets/images/image2.png',
    ),
    FAQItems(
      question: "this is the qn",
      answer: "dfgh dfghj fghjk gyh tgbnm rfghjkjh ghh gjask hgfd asdf",
      imagePath: 'assets/images/image3.png',
    ),

    FAQItems(
      question: "questionn",
      answer: "my answer",
      imagePath: 'assets/images/logo.png',
    ),
    FAQItems(
      question: "this is the qn",
      answer: "bla bla bla ghf asjhf asd asdfg swerfvm ucm ghh gjask hgfd asdf",
      imagePath: 'assets/images/image1.png',
    ),
    FAQItems(
      question: "this is the qn",
      answer: "bla bla bla thjk kjh jhgfdn ygnm ucm ghh gjask hgfd asdf",
      imagePath: 'assets/images/image2.png',
    ),
    FAQItems(
      question: "this is the qn",
      answer: "dfgh dfghj fghjk gyh tgbnm rfghjkjh ghh gjask hgfd asdf",
      imagePath: 'assets/images/image3.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FaQ'),
        backgroundColor: Colors.pink[300],
      ),
      body: ListView.separated(
        itemCount: faqItems.length,
        separatorBuilder: (context, index) => Divider(color: Colors.black, height: 2),
        itemBuilder: (context, index) {
          return FAQlist(faqItem: faqItems[index]);
        },
      ),
    );
  }
}

class FAQItems {
  final String question;
  final String answer;
  final String imagePath;

  FAQItems({required this.question, required this.answer, required this.imagePath});
}

class FAQlist extends StatelessWidget {
  final FAQItems faqItem;

  FAQlist({required this.faqItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.pink[50],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipOval(
              child: Image.asset(
                faqItem.imagePath,
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    faqItem.question,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    faqItem.answer,
                    style: TextStyle(fontSize: 14),
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
