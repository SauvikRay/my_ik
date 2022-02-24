
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_color.dart';

Widget customeButton(
{required String name,
  required VoidCallback onCallBack,
  required BuildContext context,
}


    ){
  return MaterialButton(
    onPressed:
      onCallBack,

    child: Text( name,style:  Theme.of(context).textTheme.button,),
    height: 50.h,
    minWidth: double.infinity,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.r),),
    color:AppColors.buttonColor,
    elevation: 5.0,
    splashColor: Colors.white.withOpacity(0.4),
  );
}