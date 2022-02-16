import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_ik/helpers/navigation_service.dart';
import 'package:my_ik/model/menu_model.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key, required this.menuItem}) : super(key: key);
  final MenuItem menuItem;
  @override
  Widget build(BuildContext context) {
     final head2 = Theme.of(context).textTheme.headline2; // 16, normal, black
    return Column(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SvgPicture.asset(
            'assets/icons/${menuItem.menuIcon}',
            height: 30.h,
            width: 30.w,
            color: Colors.purpleAccent,
          ),
           SizedBox(
            width: 20.w,
          ),
          Expanded(
              child: Text(
            menuItem.menuText,
            style: head2?.copyWith(color: Colors.black),
          ),),
          IconButton(
              onPressed: () {
                var route= menuItem.path;
                NavigationService.navigateTo(route);
                },
              icon:  Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15.h,
                color: Colors.purpleAccent,
              )),
        ],
      ),
      const Divider(
        color: Colors.black26,
        thickness: 1,
      ),
    ]);
  }
}
