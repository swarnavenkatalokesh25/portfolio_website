import 'package:flutter/material.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swarna Venkata Lokesh - Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const PortfolioHomePage(),
    );
  }
}

class PortfolioHomePage extends StatelessWidget {
  const PortfolioHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portfolio'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            const Text(
              'SWARNA VENKATA LOKESH',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.1,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'PROJECTS -',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            // Project 1
            const Text(
              '1. Student Hub Website',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const BulletPoint(
              text:
                  'Designed and developed a user-centric website using frontend technologies.',
            ),
            const BulletPoint(
              text:
                  'Implemented college-related features such as holidays and important events using JavaScript.',
            ),
            const BulletPoint(
              text: 'Focused on usability, responsiveness, and clean UI design.',
            ),
            const SizedBox(height: 24),

            // Project 2
            const Text(
              '2. Data Analysis Using Excel',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const BulletPoint(
              text:
                  'Analyzed datasets including Billionaires, Comic Characters, and Netflix Movies/Shows.',
            ),
            const BulletPoint(
              text:
                  'Created bar, pie, and line charts to visualize trends and insights.',
            ),
            const BulletPoint(
              text:
                  'Identified influencing factors and presented results in a detailed report.',
            ),
            const SizedBox(height: 24),

            // Project 3
            const Text(
              '3. Statistical Analysis of Lung Cancer Dataset',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const BulletPoint(
              text:
                  'Conducted statistical analysis to compare mean values across different patient groups.',
            ),
            const BulletPoint(
              text:
                  'Analyzed features such as age, gender, smoking status, tumor size, cancer stage, and survival time.',
            ),
            const BulletPoint(
              text:
                  'Evaluated mutation status and histology types to support clinical research insights.',
            ),
          ],
        ),
      ),
    );
  }
}

class BulletPoint extends StatelessWidget {
  final String text;

  const BulletPoint({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6.0, left: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '• ',
            style: TextStyle(fontSize: 16, height: 1.4),
          ),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 15, height: 1.4),
            ),
          ),
        ],
      ),
    );
  }
}
