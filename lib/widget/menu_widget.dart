import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_ik/constants/app_color.dart';
import 'package:my_ik/helpers/all_routes.dart';
import 'package:my_ik/model/menu_model.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key, required this.menuItem}) : super(key: key);
  final MenuItem menuItem;
  @override
  Widget build(BuildContext context) {
    final head2 = Theme.of(context).textTheme.headline2; // 16, normal, black
    return Column(
      children: <Widget>[
        InkWell(
           onTap: () => Navigator.pushNamed(
             context,
             Routes.navigation,arguments: menuItem.widget,
    ),
    splashColor:const Color.fromARGB(255, 0, 242, 255).withOpacity(0.3),
          
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SvgPicture.asset(
                  'assets/icons/${menuItem.menuIcon}',
                  height: 30.h,
                  width: 30.w,
                  color: AppColors.highLightText,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Expanded(
                  child: Text(
                    menuItem.menuText,
                    style: head2?.copyWith(color: Colors.black),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 15.h,
                  color: AppColors.highLightText,
                ),
              ],
            ),
          ),
        ),
        const Divider(
          color: Colors.black26,
          thickness: 1,
        ),
      ],
    );
  }
}
