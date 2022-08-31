import 'dart:async';

import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:one_life_admin/views/screens/screen_admin_organizer_profile_public.dart';

import '../../helpers/helpers.dart';
import '../../widgets/asset_icon.dart';
import '../../widgets/my_button.dart';

class ScreenAdminEventDetail extends StatefulWidget {
  const ScreenAdminEventDetail({Key? key}) : super(key: key);

  @override
  _ScreenAdminEventDetailState createState() => _ScreenAdminEventDetailState();
}

class _ScreenAdminEventDetailState extends State<ScreenAdminEventDetail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColorBlue,
      appBar: AppBar(
        backgroundColor: backGroundColorBlue,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Go back",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(ScreenAdminOrganizerProfilePublic());
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 35.sp,
              width: 35.sp,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFFCFCFD), width: 0.3),
                  shape: BoxShape.circle,
                  image: DecorationImage(image: NetworkImage(userPlaceHolder))),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: backGroundColorBlueLight,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: Get.height * .45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/user_event.png'))),
                  ),
                  Text(
                    "Baloon Haven",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Text(
                    "It is a long established fact that a reader will be distracted by the readable content ",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: backGroundColorBlue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            AssetIcon(path: "assets/svg/svg_location.svg"),
                            SizedBox(
                              width: 1.h,
                            ),
                            Text(
                              "Distance",
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                        Text(
                          "173 km",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: backGroundColorBlue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            AssetIcon(path: "assets/svg/format-circle.svg"),
                            SizedBox(
                              width: 1.h,
                            ),
                            Text(
                              "Organizer",
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                        Text(
                          "Fenua Xlife",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: backGroundColorBlue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            AssetIcon(path: "assets/svg/note.svg"),
                            SizedBox(
                              width: 1.h,
                            ),
                            Text(
                              "Discriptions",
                              style: TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 28.sp),
                          child: Text(
                            "Ft is a long established fact that a reader will be distracted by the readable content ",
                            maxLines: 2,
                            style: TextStyle(
                                color: Colors.white.withOpacity(.5), fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                    margin: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                        color: Color(0xFFE9ACC2).withOpacity(0.1  ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [BoxShadow(color: backGroundColorBlueLight,blurRadius: 5)]
                    ),
                    child: Row(children: [
                      AssetIcon(path: "assets/svg/bag.svg"),
                      SizedBox(width: 1.h,),

                      Text("Delete this account",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: buttonColorPink),)
                    ],),),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                    margin: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                        color: Color(0xFFE9ACC2).withOpacity(0.1  ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [BoxShadow(color: backGroundColorBlueLight,blurRadius: 5)]
                    ),
                    child: Row(children: [
                      AssetIcon(path: "assets/svg/close.svg"),
                      SizedBox(width: 1.h,),

                      Text("Temporarily suspend ",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: buttonColorPink),)
                    ],),),


                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
              child: MyButton(
                padding: EdgeInsets.zero,

                text: "Generate Super QR Code", onPressed: (){},color: border,),
            )
          ],
        ),
      ),
    );
  }
}
