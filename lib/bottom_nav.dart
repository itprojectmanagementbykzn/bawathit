import 'package:bawathit/contact.dart';
import 'package:bawathit/formembers.dart';
import 'package:bawathit/home_page.dart';
import 'package:bawathit/live.dart';
import 'package:bawathit/sermons.dart';
import 'package:bawathit/team.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentindex = 0;

  List<Widget> _widgetOption= <Widget>[
    HomePage(),
    Live(),
    Team(),
    ForMembers(),
    Contact(),
    Sermons(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Provider.of<VlogProvider>(context, listen: false).fetchVlogList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOption.elementAt(_currentindex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.ondemand_video), label: 'Live'),
          BottomNavigationBarItem(icon: Icon(Icons.wc), label: 'Team'),
          BottomNavigationBarItem(icon: Icon(Icons.group_outlined), label: 'ForMembers'),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail_outlined), label: 'Contact'),
          BottomNavigationBarItem(icon: Icon(Icons.emoji_people_rounded), label: 'Sermons'),
        ],
        currentIndex: _currentindex,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.grey,
        onTap: _changeItem,
      ),
    );
  }

  void _changeItem(int value) {
    setState(() {
      _currentindex = value;

    });
  }
}
