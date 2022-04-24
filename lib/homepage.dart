import 'package:flutter/material.dart';
import 'package:flutter_application_2/clock_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: const Color(0xFF2D2F41),
        child: const ClockView(),
      ),
    );
  }
}
