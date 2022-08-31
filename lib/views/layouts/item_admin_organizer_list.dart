import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one_life_admin/views/screens/screen_admin_organizer_profile_public.dart';

import '../../helpers/helpers.dart';
import '../../widgets/asset_icon.dart';

class ItemAdminOrganizerList extends StatelessWidget {
  const ItemAdminOrganizerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
      decoration: BoxDecoration(
          color: backGroundColorBlueDark,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [BoxShadow(color: backGroundColorBlueLight,blurRadius: 3 )]
      ),
      child: ListTile(
        onTap: (){
          Get.to(ScreenAdminOrganizerProfilePublic());
        },
        leading: CircleAvatar(
          radius: 25,
          child: Image.asset("assets/images/avatar (0).png"),
        ),
        title: Text("Eve Leroy",style: TextStyle(color: Colors.white),),
        subtitle: Text("Premium User   | 01 Ongoing Event",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: Colors.white.withOpacity(.5)),),
        trailing: AssetIcon(path: "assets/svg/message.svg"),
      ),
    );
  }
}
