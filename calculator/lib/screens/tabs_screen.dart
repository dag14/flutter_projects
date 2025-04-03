import 'package:calculator/screens/advanced.dart';
import 'package:calculator/screens/bill-split.dart';
import 'package:calculator/screens/calculator.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  Widget activePage = Calculator();

  @override
  Widget build(BuildContext context) {
    _selectedPageIndex == 1
        ? activePage = AdvancedScreen()
        : _selectedPageIndex == 2
        ? activePage = BillSplitScreen()
        : activePage = Calculator();

    return Scaffold(
      backgroundColor: Color(0xFFF2F3F7),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: SizedBox(width: 0, height: 0),
            label: "General",
          ),
          BottomNavigationBarItem(
            icon: SizedBox(width: 0, height: 0),
            label: "Advanced",
          ),
          BottomNavigationBarItem(
            icon: SizedBox(width: 0, height: 0),
            label: "Bill Split",
          ),
          BottomNavigationBarItem(
            icon: SizedBox(width: 0, height: 0),
            label: "More",
          ),
        ],
      ),
    );
  }
}
