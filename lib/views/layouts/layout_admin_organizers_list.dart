import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:one_life_admin/views/layouts/layout_admin_pending_organizer.dart';
import 'package:one_life_admin/views/layouts/layout_admin_register_organizers.dart';

import '../../helpers/helpers.dart';
import '../../widgets/asset_icon.dart';
import '../../widgets/my_input_field.dart';
class LayoutAdminOrganizersList extends StatefulWidget {
  const LayoutAdminOrganizersList({Key? key}) : super(key: key);

  @override
  State<LayoutAdminOrganizersList> createState() => _LayoutAdminOrganizersListState();
}

class _LayoutAdminOrganizersListState extends State<LayoutAdminOrganizersList> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: backGroundColorBlueDark,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Image.asset("assets/images/Logo One Life.png",),
          backgroundColor: backGroundColorBlueDark,
          actions: [
            GestureDetector(
              onTap: (){
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: 35.sp,
                width: 35.sp,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFFCFCFD),width: 0.3),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(userPlaceHolder)
                    )
                ),),
            )
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: Container(
              width: Get.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                 MyInputField(
                   textStyle: TextStyle(
                     color: Colors.white.withOpacity(0.1)
                   ),
                   prefix: Icon(Icons.search,size: 24,color: backGroundColorPink,),
                   hint: "Type here to search organizer",
                   fillColor: backGroundColorBlue,
                   showBorder: false,
                    suffix: IconButton(

                      onPressed: (){},
                      icon: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: backGroundColorBlueLight,
                            borderRadius: BorderRadius.circular(3),
                            boxShadow: appBoxShadow
                        ),
                          child: AssetIcon(path: "assets/svg/filter.svg",)),
                    ),
                   margin: EdgeInsets.symmetric(horizontal:14,vertical: 6),
                 ),
                  Container(
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 0.5,color: Colors.white.withOpacity(0.5))

                    ),
                    child: TabBar(
                      indicator: BoxDecoration(
                        color: backGroundColorPink,
                        // borderRadius: BorderRadius.circular(5),

                      ),
                      unselectedLabelColor: Colors.white,
                      unselectedLabelStyle: TextStyle(
                        color: Colors.white
                      ),
                      indicatorWeight: 3,
                      indicatorColor: backGroundColorPink,
                      // padding: EdgeInsets.all(10),
                      // indicator: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(10),
                      //
                      //     color: backGroundColorBlueDark
                      // ),
                      tabs: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Active",),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Pending",),
                        ),
                      ],
                    ),
                  ),
              ],),
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(children: [
                LayoutAdminRegisterOrganizers(),
                LayoutAdminPendingOrganizer()
              ],),
            ),
          ],
        ),
      ),
    );
  }
}


