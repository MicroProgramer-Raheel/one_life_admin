import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:one_life_admin/views/layouts/item_admin_pending_organizer_list.dart';

import '../../helpers/helpers.dart';

class LayoutAdminPendingOrganizer extends StatefulWidget {
  const LayoutAdminPendingOrganizer({Key? key}) : super(key: key);

  @override
  _LayoutAdminPendingOrganizerState createState() =>
      _LayoutAdminPendingOrganizerState();
}

class _LayoutAdminPendingOrganizerState
    extends State<LayoutAdminPendingOrganizer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: RichText(text: TextSpan(
              text: "Pending ",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Colors.white
              ),
              children: [
                TextSpan(text: "Organizer ",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 21,
                    color: backGroundColorPink
                ),),
              ]
          )),
        ),

        Expanded(child: CustomListviewBuilder(

          scrollDirection: CustomDirection.vertical,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return ItemAdminPendingOrganizerList();
          },

        ))
      ],
    );
  }
}
