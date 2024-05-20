import 'package:fastfoodshopping/home.dart';
import 'package:fastfoodshopping/main.dart';
import 'package:fastfoodshopping/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum CurrentState { home, profile }

CurrentState _currentState = CurrentState.home;

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Positioned.fill(
          bottom: 74,
          child: _currentState == CurrentState.home
              ? const HomeScreen()
              : const ProfileScreen()),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Icon(CupertinoIcons.add),
        shape: const CircleBorder(eccentricity: 0.1),
        elevation: 0,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 15,
            ),
          ],
        ),
        child: BottomAppBar(
          surfaceTintColor: Colors.white,
          shadowColor: Colors.black,
          notchMargin: 4,
          shape: const CircularNotchedRectangle(),
          color: Colors.white,
          height: 54,
          elevation: 8,
          padding: const EdgeInsets.all(0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => setState(() {
                  _currentState = CurrentState.home;
                }),
                child: Container(
                  color: Colors.transparent,
                  width: 120,
                  height: 54,
                  child: Icon(
                    CupertinoIcons.home,
                    color: _currentState == CurrentState.home
                        ? mainColor
                        : Colors.black.withOpacity(0.4),
                  ),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              GestureDetector(
                onTap: () => setState(() {
                  _currentState = CurrentState.profile;
                }),
                child: Container(
                  color: Colors.transparent,
                  width: 120,
                  height: 54,
                  child: Icon(
                    CupertinoIcons.profile_circled,
                    color: _currentState == CurrentState.profile
                        ? mainColor
                        : Colors.black.withOpacity(0.4),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
