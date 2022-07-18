import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);


  @override
  State<BottomBar> createState() => _BottomBarState();


}

class _BottomBarState extends State<BottomBar> {

  int _SelectedIndex=0;

  static final List<Widget> _widgetOptions= <Widget>[
    Text("home"),
    Text('Search'),
    Text('Tickets'),
    Text('Profile'),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flight ticket'),
      ),
      body:  Center(
        child: _widgetOptions[_SelectedIndex],
      ),
      bottomNavigationBar:  BottomNavigationBar(
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Color(0xFF526480),
        items: const [
         BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular), 
             activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
             label: 'home'),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),label: 'search'),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),

            label: 'home'),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
            label: 'profile'),

      ],),
    );
  }
}
