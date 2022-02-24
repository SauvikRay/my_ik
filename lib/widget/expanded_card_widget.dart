import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_ik/constants/app_color.dart';
import 'package:my_ik/helpers/all_routes.dart';
import 'package:my_ik/model/expanded_model.dart';

import '../helpers/navigation_service.dart';
class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({Key? key,required this.expandedItem}) : super(key: key);
  final ExpandedItem expandedItem;

  @override
  Widget build(BuildContext context) {
     final head3 = Theme.of(context).textTheme.headline3; // Bold 18
     final head5 = Theme.of(context).textTheme.headline5; // 14, normal
    return InkWell(
      onTap: (){
          // String route= expandedItem.path;
           Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => expandedItem.path),);
          },
      child: Column(
        children: <Widget>[
          const Divider(thickness: 1,color: Colors.black26,),
          Row(
            children:<Widget> [
              Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: SvgPicture.asset('assets/icons/${expandedItem.menuIcon}',color: Colors.purpleAccent,width: 24.w,height: 24.w,fit:BoxFit.scaleDown,),
              ),
               Expanded(child: Text(expandedItem.menuText,style: head3?.copyWith(color: Colors.black),),),
               Icon(Icons.arrow_forward_ios_rounded,color:AppColors.highLightText,size: 20.w,),

            ],),
          Row(children: <Widget> [
             SizedBox(width: 36.w,),
            Text(expandedItem.menuSubText,style: head5?.copyWith(color: Colors.black26)),

          ],),
        ],
      ),
    );
  }
}
