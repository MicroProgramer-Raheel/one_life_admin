import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:one_life_admin/widgets/my_button.dart';

import '../../helpers/helpers.dart';
import '../../widgets/asset_icon.dart';
import '../../widgets/my_input_field.dart';

class LayoutAdminCategories extends StatefulWidget {
  const LayoutAdminCategories({Key? key}) : super(key: key);

  @override
  _LayoutAdminCategoriesState createState() => _LayoutAdminCategoriesState();
}

class _LayoutAdminCategoriesState extends State<LayoutAdminCategories> {
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
                    child: RichText(text: TextSpan(text: "Existing ",
                        style: TextStyle(fontSize: 16),
                        children: [
                          TextSpan(text: "Category",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400)),

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
              child: CustomListviewBuilder(
                itemCount: 7,
                scrollDirection: CustomDirection.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 5),

                    decoration: BoxDecoration(
                        color: backGroundColorBlueLight,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: ListTile(
                      leading: AssetIcon(path: "assets/svg/check.svg",
                        color: Colors.white,),
                      title: Text("Have a drink",style: TextStyle(color: Colors.white),),
                      trailing: Row(mainAxisSize: MainAxisSize.min,children: [
                        IconButton(onPressed: (){
                          showDialoge();
                        }, icon: AssetIcon(path: "assets/svg/edit-2.svg",),),
                        IconButton(onPressed: (){}, icon: AssetIcon(path: "assets/svg/bag.svg",),),
                      ],),
                    ),
                  );
                },


              ))
        ],),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: buttonColorPink,
        onPressed: (){
          Get.defaultDialog(
            titleStyle: TextStyle(
              color: Colors.white,
              fontSize: 16
            ),
            backgroundColor: backGroundColorBlue,
            title: 'Add New Category',
            content: Column(children: [
              MyInputField(
                fillColor: backGroundColorBlue,
                prefix: AssetIcon(path: "assets/svg/note.svg"),
                label: "Add Category",
                text: "Add Category",
                textStyle: TextStyle(
                  color: Colors.white
                ),
              ),
              MyButton(
                  color: buttonColorPink,
                  text: "Create Category", onPressed: (){
                Get.back();
              })
            ],)
          );
        },
        child: Icon(Icons.add,color: backGroundColorBlueDark,),

      ),
    );
  }
  void showDialoge(){

    Get.defaultDialog(
        titleStyle: TextStyle(
            color: Colors.white,
            fontSize: 16
        ),
        backgroundColor: backGroundColorBlue,
        title: 'Add New Category',
        content: Column(children: [
          MyInputField(
            fillColor: backGroundColorBlue,
            prefix: AssetIcon(path: "assets/svg/note.svg"),
            label: "Add Category",
            text: "Add Category",
            textStyle: TextStyle(
                color: Colors.white
            ),
          ),
          MyButton(
              color: buttonColorPink,
              text: "Create Category", onPressed: (){
            Get.back();
          })
        ],)
    );
  }
}
