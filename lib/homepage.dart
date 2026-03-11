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
    _pages = [
      Homepage(),
      const Center(child: Text('Monitoring Page')),
      const Center(child: Text('Goals Page')),
      const Center(child: Text('Settings Page')),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        // Set type to fixed if you have more than 3 items and want labels to always show
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.monitor), label: 'Monitor'),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            label: 'Goals',
          ), // or Icons.flag
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
