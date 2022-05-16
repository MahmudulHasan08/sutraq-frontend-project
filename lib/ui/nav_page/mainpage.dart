import 'package:flutter/material.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/nav_page/cards.dart';
import 'package:sutraq/ui/nav_page/dashboard/Welcome/emptydashboard.dart';
import 'package:sutraq/ui/nav_page/dashboard/dashboard.dart';
import 'package:sutraq/ui/nav_page/settings/settings.dart';
import 'package:sutraq/ui/nav_page/wallet.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List _pages = [MainDashboard(), Wallet(), Cards(), Settings()];
  int selectedItem = 0;
  void onTap(int index) {
    setState(() {
      selectedItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedItem],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppColors.mainColor,
          unselectedItemColor: Color(0xFFDADADA),
          currentIndex: selectedItem,
          onTap: onTap,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_outlined),
              title: Text("Dashboard"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_outlined),
              title: Text("Wallet"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.credit_card_outlined),
              title: Text("Cards"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("Settings"),
            ),
          ]),
    );
  }
}
