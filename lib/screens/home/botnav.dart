import 'package:day1/screens/add.dart';
import 'package:day1/screens/home/header.dart';
import 'package:day1/screens/home/homepage.dart';
import 'package:day1/screens/profile.dart';
import 'package:day1/screens/shorts.dart';
import 'package:day1/screens/subscription.dart';
import 'package:flutter/material.dart';

class MyBotNavigation extends StatefulWidget {
  MyBotNavigation({super.key, this.indexNum});
  late int? indexNum;
  @override
  State<MyBotNavigation> createState() => _MyBotNavigationState();
}

class _MyBotNavigationState extends State<MyBotNavigation> {
  @override
  Widget build(BuildContext context) {
    int? selectedIndex = (widget.indexNum == null) ? 0 : widget.indexNum;
    return Scaffold(
      appBar: const AppHeader(),
      body: SafeArea(
        child: IndexedStack(
          index: selectedIndex,
          children: const [
            MyHomePage(),
            MyShorts(),
            AddHere(),
            MySubscription(),
            MyProfile(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: selectedIndex!,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed, //to fix the problem of transparecy
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            activeIcon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.play_arrow_outlined,
            ),
            activeIcon: Icon(
              Icons.play_arrow,
            ),
            label: 'Shorts',
          ),
          BottomNavigationBarItem(
            icon: Transform.translate(
              offset: const Offset(0, 9),
              child: Transform.scale(
                scale: 2,
                child: const Icon(
                  Icons.add_circle_outline,
                ),
              ),
            ),
            activeIcon: Transform.translate(
              offset: const Offset(0, 9),
              child: Transform.scale(
                scale: 2,
                child: const Icon(
                  Icons.add_circle,
                ),
              ),
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.subscriptions_outlined,
            ),
            activeIcon: Icon(
              Icons.subscriptions,
            ),
            label: 'Subscription',
          ),
          const BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundImage: AssetImage('Assets/Photos/thor.jpg'),
              radius: 12,
            ),
            label: 'You',
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      widget.indexNum = index;
    });
  }
}
