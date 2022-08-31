import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:one_life_admin/widgets/asset_icon.dart';

import '../../helpers/helpers.dart';

class LayoutAdminManageLinks extends StatefulWidget {
  const LayoutAdminManageLinks({Key? key}) : super(key: key);

  @override
  _LayoutAdminManageLinksState createState() => _LayoutAdminManageLinksState();
}

class _LayoutAdminManageLinksState extends State<LayoutAdminManageLinks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        color: bg2Color,
        child: Stack(children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            height: Get.height*0.24,
            width: Get.width,
            color: backGroundColorPink,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/Logo One Life.png",width: Get.width*0.3,),
                      GestureDetector(
                        onTap: (){
                          // Get.to(ScreenUserProfilePublic());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 2,color: Colors.white)
                          ),
                          child: CircleAvatar(
                            radius: 20,
                            child: Image.asset("assets/images/avatar (0).png",fit: BoxFit.contain,),
                          ),
                        ),
                      )
                    ],),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    child: RichText(text: TextSpan(text: "Redirection  ",
                        style: TextStyle(fontSize: 16),
                        children: [
                          TextSpan(text: "Links",style: TextStyle(fontSize: 16,)),

                        ]),),
                  )
                ],),
            ),
          ),
          Positioned(
              bottom: 0,
              top: Get.height*0.2,
              left: 15,
              right: 15,
              child: SingleChildScrollView(
                child: Column(children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),

                    decoration: BoxDecoration(
                      color: backGroundColorBlueLight,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: ListTile(
                      leading: AssetIcon(path: "assets/svg/qr_scan.svg",
                      color: Colors.white,),
                      title: Text("Condition of use",style: TextStyle(color: Colors.white),),
                      trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      color: backGroundColorBlueLight,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: ListTile(
                      leading: AssetIcon(path: "assets/svg/note.svg",
                      color: Colors.white,),
                      title: Text("Contract and Terms",style: TextStyle(color: Colors.white),),
                      trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                    ),
                  ),
                ],),
              ))
        ],),
      ),
    );
  }
}
