import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;
  final List<String> _labels = [
    'ENERGY SMART',
    'MONITORING',
    'GOALS',
    'SETTINGS',
  ];
  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    // Initialize pages with callback for HomePage
    _pages = [
      Center(child: Text('Home Page')),
      Center(child: Text('Monitoring Page')),
      Center(child: Text('Goals Page')),
      Center(child: Text('Settings Page')),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar
      appBar: AppBar(
        title: Text(
          _labels[_currentIndex],
          style: TextStyle(
            letterSpacing: 5,
            color: Theme.of(context).textTheme.bodyLarge?.color,
            fontSize: 14,
          ),
        ),
        backgroundColor: Colors.green,
      ),

      //body
      body: _pages[_currentIndex],

      //bottom navigation
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home)),
          BottomNavigationBarItem(icon: Icon(Icons.search)),
          BottomNavigationBarItem(icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
