import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:one_life_admin/views/layouts/layout_admin_categories.dart';
import 'package:one_life_admin/views/layouts/layout_admin_manage_links.dart';
import 'package:one_life_admin/views/layouts/layout_admin_organizers_list.dart';
import 'package:one_life_admin/views/layouts/layout_admin_users_list.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

import '../../helpers/helpers.dart';

class ScreenAdminHomePage extends StatefulWidget {
  const ScreenAdminHomePage({Key? key}) : super(key: key);

  @override
  _ScreenAdminHomePageState createState() => _ScreenAdminHomePageState();
}

class _ScreenAdminHomePageState extends State<ScreenAdminHomePage> {
  int selectedIndex = 0;
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: backGroundColorBlue,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: <Widget>[
            LayoutAdminOrganizersList(),
            LayoutAdminUsersList(),
            LayoutAdminCategories(),
            LayoutAdminManageLinks()
          ],
        ),
        bottomNavigationBar: WaterDropNavBar(

          inactiveIconColor: Colors.grey,

          bottomPadding: 10,
          waterDropColor: Color(0xFFFF88B6),
          backgroundColor: bg2Color,
          onItemSelected: (int index) {
            setState(() {
              selectedIndex = index;
            });
            pageController.animateToPage(selectedIndex,
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease);
          },
          selectedIndex: selectedIndex,
          barItems: <BarItem>[
            BarItem(
              filledIcon: Icons.supervised_user_circle_rounded,
              outlinedIcon: Icons.supervised_user_circle_outlined,
            ),
            BarItem(
                filledIcon: Icons.account_circle_rounded,
                outlinedIcon: Icons.account_circle_outlined),
            BarItem(
              filledIcon: Icons.category_rounded,
              outlinedIcon: Icons.category_outlined,
            ),
            BarItem(
              filledIcon: Icons.link_rounded,
              outlinedIcon: Icons.link_outlined,
            ),
          ],
        ),
      ),
    );
  }
}

