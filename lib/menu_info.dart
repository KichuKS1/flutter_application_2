import 'package:enumset/enumset.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_2/enums.dart';

abstract class Menuinfo extends ChangeNotifier {
  late MenuType menuType;
  late String title;
  late String imageSource;

  // ignore: non_constant_identifier_names
  MenuInfo(menuType, {title, imageSource});

  updateMenu(Menuinfo menuInfo) {
    menuType = menuInfo.menuType;
    title = menuInfo.menuType as String;
    imageSource = menuInfo.imageSource;

//Important
    notifyListeners();
  }
}
