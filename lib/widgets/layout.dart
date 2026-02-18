import 'package:flutter/material.dart';
import 'package:web_admin_pannel/helpers/responsive.dart';
import 'package:web_admin_pannel/widgets/large_screens.dart';
import 'package:web_admin_pannel/widgets/small_screen.dart';
import 'package:web_admin_pannel/widgets/topnavigation.dart';
final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();

class SiteLayout extends StatelessWidget {
   SiteLayout({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      appBar: topNavigationBar(context, scaffoldkey),
      drawer: Drawer(),
      body: Responsive(largeScreen: LargeScreens(), smallScreen: SmallScreen()),
    );
  }
}
