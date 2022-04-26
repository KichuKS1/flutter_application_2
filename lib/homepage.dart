// ignore_for_file: dead_code, unused_element, unused_local_variable, empty_statements, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_application_2/clock_view.dart';
import 'package:flutter_application_2/homepage.dart';
import 'package:flutter_application_2/menu_info.dart';
import 'package:intl/intl.dart';

import 'homepage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentMenuInfo;

  get children2 => null;

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var formattedTime = DateFormat('HH:mm').format(now);
    var formattedDate = DateFormat('EEE, M/d/y').format(now);
    var timezoneString = now.timeZoneOffset.toString().split('.').first;
    var offsetSign = '';
    if (!timezoneString.startsWith('-') offsetSign = '+';
    // ignore: avoid_print
    print(timezoneString);

    ]
    return Scaffold(
      backgroundColor: const Color(0xFF2D2F41),
      body: Row(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: children2,
          ),
          const VerticalDivider(
            color: Colors.white54,
            width: 1,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 64),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Text(
                      'Clock',
                      style: TextStyle(
                          fontFamily: 'avenir',
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 24),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          formattedTime,
                          style: const TextStyle(
                              fontFamily: 'avenir',
                              color: Colors.white,
                              fontSize: 64),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    formattedDate,
                    style: const TextStyle(
                        fontFamily: 'avenir',
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  Flexible(
                      flex: 5,
                      fit: FlexFit.tight,
                      child: Align(
                          alignment: Alignment.center,
                          child: ClockView(
                            size: MediaQuery.of(context).size.height / 4,
                          ))),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text(
                          'Timezone',
                          style: TextStyle(
                              fontFamily: 'avenir',
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: <Widget>[
                      const Icon(
                        Icons.language,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 16),
                      Text(
                        'UTC' + offsetSign + timezoneString,
                        style: const TextStyle(
                            fontFamily: 'avenir',
                            color: Colors.white,
                            fontSize: 14),
                             
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  Widget buildMenuButton(String title, String image) {
      var primaryTextColor;
      return TextButton(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 0),
          color: title == 'Clock' ? Colors.red : Colors.transparent,
            onPressed: () {
              var menuInfo = Provider.of<MenuInfo>(context);
              menuInfo.updateMenu(currentMenuInfo);
            },
            child: Column(
              children: <Widget>[
              Image.asset(
                image,
                scale: 1.5,
              ),
              SizedBox(height: 16),
              Text(
                title ?? '',
                style: TextStyle(
                    fontFamily: 'avenir',
                     color: CustomColors.primaryTextColor,
                      fontSize: 14),
              ),

    var children2 = <Widget>[
      // ignore: deprecated_member_use
      buildMenuButton('Clock', 'assets/clock_icon.png'),
      buildMenuButton('Alarm', 'assets/alarm_icon.png'),
      buildMenuButton('Timer', 'assets/timer_icon.png'),
      buildMenuButton('Stopwatch', 'assets/stopwatch_icon.png'),
    ];                    
              ),
            ]));,
      );
    }
  }

  get MenuInfo => currentMenuInfo;
}

class MenuInfo {
}

mixin MenuInfo {
}

class MenuInfo {
}

class MenuInfo {
}

class CustomColors {
  static var primaryTextColor;
}

class Provider {
  static of(BuildContext context) {}
}
  }

  
}
