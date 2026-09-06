import 'package:flutter/material.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF0F7F4),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E6B52),
          foregroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF1E6B52),
            foregroundColor: Colors.white,
            elevation: 0,
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
            textStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/about': (context) => const AboutScreen(),
        '/projects': (context) => const ProjectsScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Portfolio')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 54,
                backgroundColor: Color(0xFFCBEADF),
                child: Icon(Icons.person, size: 54, color: Color(0xFF1E6B52)),
              ),
              const SizedBox(height: 20),
              const Text(
                'SWARNA VENKATA LOKESH',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E6B52),
                  letterSpacing: 0.8,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                '3rd Year Undergraduate • CSE Core',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
              const SizedBox(height: 6),
              const Text(
                'Statistical Analysis • Data Visualization',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1E6B52),
                ),
              ),
              const SizedBox(height: 28),
              SizedBox(
                width: 140,
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/about'),
                  child: const Text('About Me'),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: 140,
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/projects'),
                  child: const Text('Projects'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 36),
              decoration: BoxDecoration(
                color: const Color(0xFFE2F0EA),
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.person, size: 64, color: Color(0xFF1E6B52)),
                  const SizedBox(height: 20),
                  const Text(
                    "Hello! I'm Swarna Venkata Lokesh, a Computer Science Engineering (CSE Core) student. "
                    "I specialize in web development, statistical data analysis, and building interactive, user-focused applications.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, height: 1.5, color: Colors.black87),
                  ),
                  const SizedBox(height: 20),
                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 8,
                    runSpacing: 8,
                    children: const [
                      SkillChip(label: 'JavaScript'),
                      SkillChip(label: 'HTML / CSS'),
                      SkillChip(label: 'Python'),
                      SkillChip(label: 'Excel Data Analysis'),
                      SkillChip(label: 'Statistical Analysis'),
                      SkillChip(label: 'Data Visualization'),
                    ],
                  ),
                  const SizedBox(height: 28),
                  ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Back to Home'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SkillChip extends StatelessWidget {
  final String label;
  const SkillChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFFCBEADF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 12.5,
          color: Color(0xFF1E6B52),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Projects'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const ProjectCard(
                  title: 'Student Hub Website',
                  description:
                      'Designed and developed a user-centric web platform using frontend technologies and JavaScript. Implemented dynamic college calendar updates, holiday schedules, and events while maintaining high responsiveness and clean UI principles.',
                ),
                const SizedBox(height: 16),
                const ProjectCard(
                  title: 'Statistical Analysis of Lung Cancer Dataset',
                  description:
                      'Conducted rigorous statistical comparative analysis across patient demographics, tumor sizes, smoking status, and survival rates. Evaluated mutation status and histology classifications to extract insights supporting clinical research.',
                ),
                const SizedBox(height: 16),
                const ProjectCard(
                  title: 'Data Analysis Using Excel',
                  description:
                      'Analyzed multi-domain datasets including global Billionaires, Netflix media trends, and Comic metrics. Created interactive bar, line, and pie chart visual models to communicate actionable insights in structured reports.',
                ),
                const SizedBox(height: 28),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Back to Home'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;

  const ProjectCard({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFD3E4DD)),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16.5,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1E6B52),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black87,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
