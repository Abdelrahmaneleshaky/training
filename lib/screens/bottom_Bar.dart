import 'package:final_project/screens/home_screen.dart';
import 'package:final_project/screens/profile_screen.dart';
import 'package:final_project/screens/search_screen.dart';
import 'package:final_project/screens/ticket_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';


class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex=0;
  static final List<Widget>_widgetOptions =<Widget>[
    Homescreen(),
    SearchScreen(),
    TicketScreen(),
    ProfileScreen(),
  ];

  void _onItemTaped(int index){
    setState(() {
      selectedIndex=index;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
          child: _widgetOptions[selectedIndex]) ,


      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: _onItemTaped,
          elevation: 10,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.blueGrey,



          items: const [BottomNavigationBarItem(icon:Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "home"),
            BottomNavigationBarItem(icon:Icon(FluentSystemIcons.ic_fluent_search_regular),label: "search",
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled)),
            BottomNavigationBarItem(icon:Icon(FluentSystemIcons.ic_fluent_ticket_regular),label: "tickets",
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled)),
            BottomNavigationBarItem(icon:Icon(FluentSystemIcons.ic_fluent_person_regular),label: "profile",
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled)),


          ]),





    );
  }
}
