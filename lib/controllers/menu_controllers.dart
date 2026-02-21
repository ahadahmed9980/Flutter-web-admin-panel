import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_admin_pannel/constants/style.dart';
import 'package:web_admin_pannel/routing/routes.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItems = overviewpage.obs;
  var hoverItems = "".obs;
  changeactiveitemname(String itemName) {
    activeItems.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItems.value = itemName;
  }

  isActive(String itemName) => activeItems.value = itemName;
  isHovering(String itemName) => hoverItems.value = itemName;

  Widget returniconfor(String itemName) {
    switch (itemName) {
      case overviewpage:
        return _customicon(Icons.trending_up, itemName);
      case driverpage:
        return _customicon(Icons.drive_eta, itemName);
      case clientpage:
        return _customicon(Icons.people_alt_outlined, itemName);
      case authpage:
        return _customicon(Icons.exit_to_app, itemName);
      default:
        return _customicon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customicon(IconData icon, String itemName) {
    if (isActive(itemName)) return Icon(icon, size: 22, color: dark);
    return Icon(icon, color: isHovering(itemName) ? dark : lightGrey);
  }
}
