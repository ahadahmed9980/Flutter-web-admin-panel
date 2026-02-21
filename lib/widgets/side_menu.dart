import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/route_manager.dart';
import 'package:web_admin_pannel/constants/controllers.dart';
import 'package:web_admin_pannel/constants/style.dart';
import 'package:web_admin_pannel/helpers/responsive.dart';
import 'package:web_admin_pannel/routing/routes.dart';
import 'package:web_admin_pannel/widgets/custom_text.dart';
import 'package:web_admin_pannel/widgets/side_menuitems.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      color: light,
      child: ListView(
        children: [
          if (Responsive.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: _width / 48),
                Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: FlutterLogo(),
                ),
                Flexible(
                  child: CustomText(
                    text: "Dash",
                    size: 20,
                    fontWeight: FontWeight.bold,
                    color: active,
                  ),
                ),
                SizedBox(width: _width / 48),
              ],
            ),
          SizedBox(height: 40),
          Divider(color: lightGrey),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sidemenu.map((itemName) {
              return SideMenuitems(
                itemName: itemName == authpage ? "Log out" : itemName,
                ontap: () {
                  if (itemName == authpage) {
                    // go to auth page
                  }

                  if (!menuController.isActive(itemName)) {
                    menuController.changeactiveitemname(itemName);

                    if (Responsive.isSmallScreen(context)) {
                      Get.back();
                    }
                  }
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
