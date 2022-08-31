
import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:one_life_admin/views/screens/screen_admin_event_detail.dart';

import '../../helpers/helpers.dart';
import '../../widgets/asset_icon.dart';

class ItemAdminOrganizerEventList extends StatefulWidget {
  const ItemAdminOrganizerEventList({Key? key}) : super(key: key);

  @override
  State<ItemAdminOrganizerEventList> createState() => _ItemAdminOrganizerEventListState();
}

class _ItemAdminOrganizerEventListState extends State<ItemAdminOrganizerEventList> {
  Color fav=Colors.white;
  bool isFav=false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          },
        child:
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(vertical: 5),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),

              color: backGroundColorBlueLight,
              boxShadow: [BoxShadow(color: backGroundColorBlueLight
                  ,blurRadius: 3)]
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 3,
                      child: Container(
                        height: Get.height * .14,

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/images/img_event.png"))
                        ),
                      )),
                  Expanded(
                      flex: 6,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Baloon Haven",
                              style: TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            SizedBox(
                                height: 3.sp),

                            Text(
                              "That is a long established fact that a reader will be distracted by the readable content ",
                              style: TextStyle(fontSize: 10, color: Colors.white),
                            ),
                            SizedBox(
                                height: 3.sp),

                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                               AssetIcon(path: 'assets/svg/svg_location.svg'),

                                SizedBox(
                                    width: 3.sp),

                                Text(
                                  "173KM",
                                  style: TextStyle(fontSize: 12, color: Colors.white
                                      .withOpacity(.5)),
                                )
                              ],
                            ),
                            SizedBox(
                                height: 3.sp),

                           Row(
                             mainAxisSize: MainAxisSize.min,
                             children: [
                              AssetIcon(path: 'assets/svg/format-circle.svg',color: Colors.white.withOpacity(.5),),
                               SizedBox(
                                   width: 4.sp),
                               Text(
                                 "Fenua Xlife",
                                 style: TextStyle(fontSize: 12, color: Colors.white
                                     .withOpacity(.5)),
                               )
                             ],
                           )

                          ],
                        ),
                      ))
                ],
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
                  AssetIcon(path: "assets/svg/close.svg"),
                  SizedBox(width: 1.h,),

                  Text("Temporarily suspend ",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: buttonColorPink),)
                ],),),
              InkWell(
                onTap: (){
                  Get.to(ScreenAdminEventDetail());
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                  margin: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                      color: backGroundColorBlue.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(color: backGroundColorBlueLight,blurRadius: 5)]
                  ),
                  child: Row(children: [
                    AssetIcon(path: "assets/svg/eye_white.svg"),
                    SizedBox(width: 1.w,),

                    Text("View event details",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.white),)
                  ],),),
              ),
            ],
          ),
        )
    );
  }
}
