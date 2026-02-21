import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:web_admin_pannel/constants/controllers.dart';
import 'package:web_admin_pannel/constants/style.dart';
import 'package:web_admin_pannel/widgets/custom_text.dart';

class VerticalMenu extends StatelessWidget {
  final String itemName;
  final VoidCallback ontap;

  const VerticalMenu({super.key, required this.itemName, required this.ontap});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: ontap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover("not Hovering");
      },
      child: Obx(
        () => Container(
          color: menuController.isHovering(itemName)
              ? lightGrey.withOpacity(.1)
              : Colors.transparent,
          child: Row(
            children: [
              Visibility(
                visible:
                    menuController.isHovering(itemName) ||
                    menuController.isActive(itemName),
                child: Container(width: 6, height: 40, color: dark),
                maintainAnimation: true,
                maintainSize: true,
                maintainState: true,
              ),
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: menuController.returniconfor(itemName),
                    ),
                    if (!menuController.isActive(itemName))
                      Flexible(
                        child: CustomText(
                          text: itemName,
                          color: menuController.isHovering(itemName)
                              ? dark
                              : lightGrey,
                        ),
                      )
                    else
                      Flexible(
                        child: CustomText(
                          text: itemName,
                          color: dark,
                          size: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
