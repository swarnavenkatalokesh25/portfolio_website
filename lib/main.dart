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

  final List<Map<String, String>> projects = const [
    {
      'title': 'Student Hub Website',
      'category': 'Web Development',
      'description':
          'Designed and developed a user-centric website using frontend technologies. Implemented college-related features such as holidays and important events using JavaScript with a focus on usability and responsiveness.',
    },
    {
      'title': 'Data Analysis Using Excel',
      'category': 'Data Visualization',
      'description':
          'Analyzed datasets including Billionaires, Comic Characters, and Netflix Movies/Shows. Created bar, pie, and line charts to visualize trends and presented results in a detailed report.',
    },
    {
      'title': 'Statistical Analysis of Lung Cancer Dataset',
      'category': 'Healthcare Analytics',
      'description':
          'Conducted statistical analysis comparing mean values across patient groups. Evaluated age, gender, smoking status, tumor size, cancer stage, survival time, mutation status, and histology types.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portfolio'),
        elevation: 2,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'SWARNA VENKATA LOKESH',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.1,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Developer & Data Analyst',
              style: TextStyle(
                fontSize: 16,
                color: Colors.indigoAccent.shade100,
              ),
            ),
            const Divider(height: 32, thickness: 1),
            const Text(
              'Projects',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16),
            ...projects.map(
              (project) => Card(
                margin: const EdgeInsets.only(bottom: 16.0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              project['title']!,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Chip(
                            label: Text(
                              project['category']!,
                              style: const TextStyle(fontSize: 11),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        project['description']!,
                        style: TextStyle(
                          color: Colors.grey.shade300,
                          height: 1.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
