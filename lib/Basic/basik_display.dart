import 'package:courswork_2/HomeScreen/home_screen.dart';
import 'package:courswork_2/NewWorker/new_worker_screen.dart';
import 'package:courswork_2/WorkersScreen/workers_screen.dart';
import 'package:flutter/material.dart';

class BasicDisplay extends StatefulWidget {
  const BasicDisplay({super.key});

  @override
  State<BasicDisplay> createState() => _BasicDisplayState();
}

class _BasicDisplayState extends State<BasicDisplay> {
  int _selectedTab = 0;
  void onSelectedTab(int index) {
    if (onSelectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'NOSU',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
      body: IndexedStack(
        index: _selectedTab,
        children: [HomeScreen(), WorkersScreen(), NewWorkerScreen()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Главный'),
          BottomNavigationBarItem(
              icon: Icon(Icons.people), label: 'Сотрудники'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Новый'),
        ],
        onTap: (onSelectedTab),
      ),
    );
  }
}
