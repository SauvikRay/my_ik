import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_ik/constants/app_color.dart';
import 'package:my_ik/helpers/all_routes.dart';
import 'package:my_ik/helpers/navigation_service.dart';
import 'package:my_ik/model/menu_model.dart';
import 'package:my_ik/screens/notifications_screen.dart';

import '../screens/perfil_screen.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key, required this.menuItem}) : super(key: key);
  final MenuItem menuItem;
  @override
  Widget build(BuildContext context) {
     final head2 = Theme.of(context).textTheme.headline2; // 16, normal, black
    return 
    InkWell(
      onTap: () =>  Navigator.pushNamed(context,Routes.navigation, arguments: menuItem.widget,),
      
      child: Column(
        children: <Widget>[
        Row(
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
            ),),

            Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 15.h,
                  color:AppColors.highLightText,
                ),


            // IconButton(
            //     onPressed: () {
            //       //var route= menuItem.path;
            //      // NavigationService.navigateToWithArgs( Routes.navigation,args: {'widget':'abcd'});
            //       // NavigationService.navigateTo(route);
                  
            //       Navigator.pushNamed(context,Routes.navigation, arguments: menuItem.widget,);
            //       },
            //     icon:  Icon(
            //       Icons.arrow_forward_ios_rounded,
            //       size: 15.h,
            //       color:AppColors.highLightText,
            //     ),),
          
          ],
        ),
        const Divider(
          color: Colors.black26,
          thickness: 1,
        ),
      ]),
    );
  }
}
