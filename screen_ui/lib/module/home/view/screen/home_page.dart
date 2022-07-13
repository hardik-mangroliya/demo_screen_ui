import 'package:flutter/material.dart';

import 'nefts_screen.dart';
import 'search_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: unused_field
  final Widget _currentWidget = Container();
  var pageIndex = 0;
  static const TextStyle optioStyle = TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'SF Pro Display');

  static const List<Widget> _widgetOption = <Widget>[
    Text(
      'Wallet Page Comeing Soon....',
      style: optioStyle,
    ),
    SearchScreen(),
    NeftsScreen(),
    Text(
      'Stats Page Comeing Soon....',
      style: optioStyle,
    ),
    Text(
      'UserProfile Comeing Soon....',
      style: optioStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOption.elementAt(pageIndex),
      ),
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_balance_wallet_outlined,
                  color: Colors.grey[400],
                  size: 30,
                ),
                label: 'Wallet',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search_sharp,
                  color: Colors.grey[400],
                  size: 35,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.api_sharp,
                  color: Colors.grey[400],
                  size: 30,
                ),
                label: 'NFTs'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.signal_cellular_alt,
                  color: Colors.grey[400],
                  size: 30,
                ),
                label: 'Stats'),
            BottomNavigationBarItem(
                icon: Icon(
                  // Icons.portrait_rounded,
                  Icons.person_rounded,
                  color: Colors.grey[400],
                  size: 30,
                ),
                label: 'Profile'),
          ],
          currentIndex: pageIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
