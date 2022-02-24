import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_ik/screens/splash_screen.dart';
import 'package:my_ik/widget/app_bar_widget.dart';
import 'package:my_ik/widget/google%20_map_widget.dart';
import 'package:my_ik/widget/navigation_widget.dart';

import 'menu_sccrren.dart';
import 'my_ik_screen.dart';


class PerfilScreen extends StatefulWidget {
  const PerfilScreen({Key? key}) : super(key: key);

  @override
  _PerfilScreenState createState() => _PerfilScreenState();
}

class _PerfilScreenState extends State<PerfilScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
     final head1 = Theme.of(context).textTheme.headline1; // Bold 18
     final head2 = Theme.of(context).textTheme.headline2; //Normal 18 ash
     final head5 = Theme.of(context).textTheme.headline5;
     //14,normal, purple
    return SafeArea(
      child: Scaffold(
        // backgroundColor:const Color(0xFFE5E5E5),
        appBar: MainAppBarWidget(text: "Perfil"),
        body:Container(
          height: double.infinity,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Container(
                    height: 100.w,
                    width: 100.w,
                    padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.r),border:Border.all(color: Colors.white,width: 5.0),),
                    child: SvgPicture.asset('assets/icons/perfil_line_icon.svg',color:const Color(0XFFBDBEC6),),
                  ),
                 Text('Carlos',style: head1?.copyWith(color: Colors.black),),
                  Text('nome@example.com',style: head5?.copyWith(color: Colors.black)),
                     const Divider(color: Colors.black26,thickness: 1,),
               SizedBox(height: 10.h,),
               Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Text('Name',style: head2),
                ],
              ),
                
              Row(
                children: [
                  Container(
                    padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical:15.h),
                    decoration:BoxDecoration(borderRadius: BorderRadius.circular(10.r),color: const Color(0xFFEAEBF2)),
                    height: 50.h,
                    width:MediaQuery.of(context).size.width-40.w,
                    child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Carlos',
                  style:head2?.copyWith(color: Colors.black),
                ),
                    ),
                  ),
                ],
              ),
               SizedBox(height: 10.h,),
              //Email
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Text('Email',style: head2),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding:  EdgeInsets.symmetric(horizontal: 10.w,),
                    decoration:BoxDecoration(borderRadius: BorderRadius.circular(10.r),color: const Color(0xFFEAEBF2)),
                    height: 50.h,
                    width:MediaQuery.of(context).size.width-40.w,
                    child: Align(
                alignment: Alignment.centerLeft,
                child: Text('nome@example.com',
                  style:head2?.copyWith(color: Colors.black),
                ),
                    ),
                  ),
                ],
              ),
               SizedBox(height: 10.h,),
              //Mobile
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Text('Mobile',style: head2),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding:  EdgeInsets.symmetric(horizontal: 10.w,),
                    decoration:BoxDecoration(borderRadius: BorderRadius.circular(10.r),color: const Color(0xFFEAEBF2)),
                    height: 50.h,
                    width:MediaQuery.of(context).size.width-40.w,
                    child:Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children:<Widget> [
                    Expanded( child: Image.asset('assets/icons/flag_image.png')),
                     SizedBox(width: 5.w,),
                     Expanded(
                       flex: 6,
                      child: Text('+351 123 456 798',
                        style:head2?.copyWith(color: Colors.black)),
                      ),
                    Expanded ( child: SvgPicture.asset('assets/icons/right_mark.svg'))
                  ],
                ),
                    ),
                  ),
                ],
              ),
              if(height<600) SizedBox(height: 80.h,),
            
                ],
              ),
          
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
        //floatingActionButton: BottomNavigationWidget(),
      ),
    );
  }
}
