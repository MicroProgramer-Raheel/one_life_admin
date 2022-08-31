import 'package:flutter/material.dart';

import '../../helpers/helpers.dart';
import '../../widgets/asset_icon.dart';

class ItemAdminPendingOrganizerList extends StatelessWidget {
  const ItemAdminPendingOrganizerList({Key? key}) : super(key: key);

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
        leading: CircleAvatar(
          radius: 25,
          child: Image.asset("assets/images/avatar (0).png"),
        ),
        title: Text("Eve Leroy",style: TextStyle(color: Colors.white),),
        subtitle: Text("Premium User   | 01 Ongoing Event",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: Colors.white.withOpacity(.5)),),
        trailing: Row(mainAxisSize: MainAxisSize.min,children: [
          Container(
            padding: EdgeInsets.all(3),
            margin: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white.withOpacity(0.1),width: 1),
            ),
            child: Container(
              padding: EdgeInsets.all(2),

              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: buttonColorPink.withOpacity(0.9),width: 1),
              ),
              child: Icon(Icons.clear,color: buttonColorPink,size: 12,),

            ),
          ),
          Container(
            padding: EdgeInsets.all(3),
            margin: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white.withOpacity(0.1),width: 1),
            ),
            child: Container(
              padding: EdgeInsets.all(2),

              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Color(0xFF01D45B).withOpacity(0.9),width: 1),
              ),
              child: Icon(Icons.check,color: Color(0xFF01D45B),size: 12,),

            ),
          ),
        ],),
      ),
    );
  }
}
