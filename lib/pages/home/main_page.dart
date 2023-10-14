import 'package:flutter/material.dart';
import 'package:shamo_app/pages/home/chat_page.dart';
import 'package:shamo_app/pages/home/home_page.dart';
import 'package:shamo_app/pages/home/profile_page.dart';
import 'package:shamo_app/pages/home/wishlist_page.dart';
import 'package:shamo_app/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {},
        child: Image.asset(
          'assets/icon_cart.png',
          width: 20,
        ),
        backgroundColor: secondaryColor,
      );
    }

    Widget customBottomNav() {
      return ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 12,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
              backgroundColor: backgroundColor4,
              type: BottomNavigationBarType.fixed,
              currentIndex: currentIndex,
              onTap: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 10),
                    child: Image.asset(
                      'assets/icon_home.png',
                      width: 21,
                      color: currentIndex == 0
                          ? primaryColor
                          : const Color(0xff808191),
                    ),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: const EdgeInsets.only(top: 20, bottom: 10),
                      child: Image.asset(
                        'assets/icon_chat.png',
                        width: 20,
                        color: currentIndex == 1
                            ? primaryColor
                            : const Color(0xff808191),
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: const EdgeInsets.only(top: 20, bottom: 10),
                      child: Image.asset(
                        'assets/icon_wishlist.png',
                        width: 20,
                        color: currentIndex == 2
                            ? primaryColor
                            : const Color(0xff808191),
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: const EdgeInsets.only(top: 20, bottom: 10),
                      child: Image.asset(
                        'assets/icon_profile.png',
                        width: 18,
                        color: currentIndex == 3
                            ? primaryColor
                            : const Color(0xff808191),
                      ),
                    ),
                    label: ''),
              ]),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const ChatPage();
        case 2:
          return const WishlistPage();
        case 3:
          return const ProfilePage();
        default:
          return const HomePage();
      }
    }

    return Scaffold(
      backgroundColor: currentIndex == 0 ? backgroundColor1 : backgroundColor3,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
