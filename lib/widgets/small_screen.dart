import 'package:flutter/material.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // constraints: Jitni jagah parent de raha hai, poori ki poori le lo
    return Container(
      constraints: BoxConstraints.expand(),
      color: Colors.green,
    );
  }
}