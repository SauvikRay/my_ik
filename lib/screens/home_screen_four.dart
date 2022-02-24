
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:my_ik/model/expanded_model.dart';
import 'package:my_ik/model/menu_model.dart';
import 'package:my_ik/screens/my_ik_screen.dart';
import 'package:my_ik/screens/pedidos_details_screen.dart';
import 'package:my_ik/screens/perfil_screen.dart';
import 'package:my_ik/screens/splash_screen.dart';
import 'package:my_ik/widget/expanded_card_widget.dart';
import 'package:my_ik/widget/material_button.dart';
import '/widget/google%20_map_widget.dart';


import 'package:my_ik/widget/menu_widget.dart';
import 'package:my_ik/widget/navigation_widget.dart';

import 'menu_sccrren.dart';
class HomeScreenFour extends StatefulWidget {
  const HomeScreenFour({Key? key}) : super(key: key);

  @override
  _HomeScreenFourState createState() => _HomeScreenFourState();
}



class _HomeScreenFourState extends State<HomeScreenFour> {

  @override
  Widget build(BuildContext context) {
    final head4 = Theme.of(context).textTheme.headline4; // 16, normal
    final head5 = Theme.of(context).textTheme.headline5; // 16, normal
    return SafeArea(
        child: Scaffold(
          body:SizedBox(
            height:double.infinity,
            width:double.infinity,
            child: Stack(
              alignment: Alignment.center,
              children:<Widget>[
               GoogleMapWidget(),
              // Positioned(
              //     bottom: 30.h,
              //     //This Section is for Navigation Bar
              //     child: BottomNavigationWidget(),
              //   ),

                //For Overlay
                Container(
                  height: double.infinity,
                  width:  double.infinity,
                  decoration: BoxDecoration(gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color(0xFFFF3CBE).withOpacity(0.8),
                      const Color(0xFFE305B7).withOpacity(0.8),
                      const Color(0xFF6B34BE).withOpacity(0.6),
                    ],),),
                ),
                //For IKTOKEN
                Positioned(
                  bottom: 220.h,
                  child: SizedBox(
                    height: 310.h,
                    width: 0.9.sw,
                    child: Card(
                      color: Colors.white,
                      elevation: 5.0,
                      margin:  EdgeInsets.all(10.w),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:<Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(child:  Text('IKTOKEN DO EXECUTIVO',style:head5?.copyWith(color: Colors.black, letterSpacing: 2.0),)),
                                Container(
                                  width: 36.w,
                                  height: 36.w,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.r),border: Border.all(width: 2,color: Colors.black),),
                                  child: IconButton(onPressed: (){},icon: SvgPicture.asset('assets/icons/cross_icon.svg',height: 20.w,width: 20.w, fit: BoxFit.contain,),),

                                ),
                              ],
                            ),
                            SizedBox(height: 15.h,),
                            const Divider(thickness: 1,color: Colors.black26,),
                            SizedBox(height: 10.h,),
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 5.h),
                                decoration:BoxDecoration(borderRadius: BorderRadius.circular(10.r),color: const Color(0xFFF1F2F7)),
                                height: 60.h,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Image.asset('assets/icons/icon_kl.png',height: 30.h,width: 20.w,fit: BoxFit.scaleDown,),
                                     SizedBox(width: 10.w,),
                                    Text('Escreva o iktoken',style:head4?.copyWith(color: Colors.black),),
                                  ],
                                )
                            ),
                           const Spacer(flex: 1,),
                            customeButton(name: 'Aplicar', onCallBack: (){}, context: context)



                          ],
                        ),
                      ),

                    ),
                  ),
                ),
              ],
            ),
          ),
          
        ),
    );
  }
}

