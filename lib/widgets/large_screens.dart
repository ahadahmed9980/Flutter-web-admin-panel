import 'package:flutter/material.dart';

class LargeScreens extends StatelessWidget {
  const LargeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Expanded(flex: 1,
            child: Container(
            color: Colors.red,

          )),
          Expanded(flex: 5,
            child: Container(
              color: Colors.blue,
            
          ))
        ],
      );
  }
}