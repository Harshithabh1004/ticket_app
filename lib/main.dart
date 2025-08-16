import 'package:flutter/material.dart';
import 'package:ticket_app_project/base/bottom_nav_bar.dart';
import 'package:ticket_app_project/screens/all_tickets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {
        "/": (context) => BottomNavBar(),
        "all_tickets": (context) => AllTickets(),
      },
    );
  }
}
