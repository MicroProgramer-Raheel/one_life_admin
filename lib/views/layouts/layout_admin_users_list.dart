import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../helpers/helpers.dart';
import '../../widgets/asset_icon.dart';
import '../../widgets/my_input_field.dart';

class LayoutAdminUsersList extends StatefulWidget {
  const LayoutAdminUsersList({Key? key}) : super(key: key);

  @override
  _LayoutAdminUsersListState createState() => _LayoutAdminUsersListState();
}

class _LayoutAdminUsersListState extends State<LayoutAdminUsersList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(text: TextSpan(
                      text: "All Registered ",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.white
                      ),
                      children: [
                        TextSpan(text: "Users ",style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 21,
                            color: backGroundColorPink
                        ),),
                      ]
                  )),
                ),
                MyInputField(
                  textStyle: TextStyle(
                      color: Colors.white.withOpacity(0.1)
                  ),
                  prefix: Icon(Icons.search,size: 24,color: backGroundColorPink,),
                  hint: "Type here to search User",
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

              ],),
          ),
        ),
      ),
      body: CustomListviewBuilder(

        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
            decoration: BoxDecoration(
                color: backGroundColorBlueLight,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [BoxShadow(color: backGroundColorBlueLight,blurRadius: 3 )]
            ),
            child: ListTile(
              leading: CircleAvatar(
                radius: 25,
                child: Image.asset("assets/images/avatar (0).png"),
              ),
              title: Text("Eve Leroy",style: TextStyle(color: Colors.white),),
              subtitle: Text("Premium User   | 01 Ongoing Event",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: Colors.white.withOpacity(.5)),),
              trailing:     Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: backGroundColorBlueDark
                ),
                child: AssetIcon(path: "assets/svg/eye.svg",),
              ),
            ),
          );

        },
        scrollDirection: CustomDirection.vertical, itemCount: 12,

      ),
    );

  }
}
