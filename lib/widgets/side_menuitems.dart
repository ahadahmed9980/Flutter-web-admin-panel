import 'package:flutter/material.dart';
import 'package:web_admin_pannel/helpers/responsive.dart';
import 'package:web_admin_pannel/widgets/horizontal_menu.dart';
import 'package:web_admin_pannel/widgets/vertical_menu.dart';

class SideMenuitems extends StatelessWidget {
  final String itemName;
  final VoidCallback ontap;
  const SideMenuitems({super.key, required this.itemName, required this.ontap});

  @override
  Widget build(BuildContext context) {
    if (Responsive.isCustomScreen(context)) {
      return VerticalMenu(itemName: itemName, ontap: ontap);
    }
    return HorizontalMenu(itemName: itemName, ontap: ontap);
  }
}
