import 'package:adidas_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 223, 223),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const HomePage())),
            icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: const Text(
                'About Us',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 48,
                ),
              ),
            ),
            Container(
              height: 200,
              child: Center(
                child: Image.asset(
                  'lib/images/logo.png',
                  color: Colors.black,
                ),
              ),
            ),
            const Text(
              'Adidas is all about sports and lifestyle. We are a global sports and lifestyle brand based in Herzogenaurach, Germany. We are driven by a relentless pursuit of innovation as well as decades of accumulating sports science expertise. We cater to all your sports needs, from shoes to clothing and accessories.',
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
