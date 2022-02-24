import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_ik/helpers/navigation_service.dart';

class MainAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
   MainAppBarWidget({Key? key,  this.text,this.actions}) : super(key: key);
  final String? text;
  final String? actions;

  @override
  Widget build(BuildContext context) {
    //final appBarTheme = Theme.of(context).appBarTheme;
    return AppBar(
      title: Text(text!),
      leading: IconButton(
          splashRadius: 20.r,
          onPressed: () {
            NavigationService.goBack;
          },
          icon: SvgPicture.asset('assets/icons/arrow_back.svg')),
         
          actions: [
            (text == 'Histórico')?
            Padding(
              padding:  EdgeInsets.only(right: 20.h),
              child: SvgPicture.asset('assets/icons/action_icon.svg',height: 20.h,width: 20.h,),
            ) : Container(),

          ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);
}
