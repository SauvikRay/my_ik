import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_ik/constants/app_color.dart';
import 'package:my_ik/widget/app_bar_widget.dart';
import 'package:my_ik/widget/navigation_widget.dart';

import 'navigation_screens.dart';
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    final head1 = Theme.of(context).textTheme.headline1; // Bold 18
    final head4 = Theme.of(context).textTheme.headline4; // 16, normal
    final head5 = Theme.of(context).textTheme.headline5; // 14, normal
    return SafeArea(
      child: Scaffold(
        backgroundColor:const Color(0xFFE5E5E5),
        appBar:  MainAppBarWidget(text:' Notificações',),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.w),
          child: Center(
            child: Stack(
              children:<Widget>[
                ListView(
                  children:<Widget> [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10.w),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color: AppColors.highLightText),
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget> [
                              Text('Lorem ipsum dolor',style:head1?.copyWith(color: Colors.white),),
                              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.',style:head4?.copyWith(color: Colors.white),),
                            ],
                          ) ,

                        ),
                         SizedBox(height: 10.h,),
                         Text('2022-01-19| 15:46',style: head5?.copyWith(color: Colors.black.withOpacity(0.5),),),
                      ],

                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10.w),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color: AppColors.highLightText),
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget> [
                              Text('Lorem ipsum dolor',style:head1?.copyWith(color: Colors.white),),
                              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.',style:head4?.copyWith(color: Colors.white),),
                            ],
                          ) ,

                        ),
                        SizedBox(height: 10.h,),
                        Text('2022-01-19| 15:46',style: head5?.copyWith(color: Colors.black.withOpacity(0.5),),),
                      ],

                    ),
                  ],
                ),
            //   Positioned(
            //       bottom: 30.h,
            //         child: BottomNavigationWidget(),
            //  ),
              ],

            ),
          ),
        ),
        //   floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
        //  floatingActionButton:NavigationScreen(),
      ),
    );
  }
}
