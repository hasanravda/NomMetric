import 'package:flutter/material.dart';

class BottomNavHasan extends StatefulWidget {
  const BottomNavHasan({super.key});

  @override
  State<BottomNavHasan> createState() => _BottomNavHasanState();
}

class _BottomNavHasanState extends State<BottomNavHasan> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    _HomePlaceholder(),
    _MenuPlaceholder(),
    _ProfilePlaceholder(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_outlined),
            label: "Menu",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

class _HomePlaceholder extends StatelessWidget {
  const _HomePlaceholder();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Home Screen",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
      ),
    );
  }
}

class _MenuPlaceholder extends StatelessWidget {
  const _MenuPlaceholder();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Menu Screen",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
      ),
    );
  }
}

class _ProfilePlaceholder extends StatelessWidget {
  const _ProfilePlaceholder();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Profile Screen",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
      ),
    );
  }
}
