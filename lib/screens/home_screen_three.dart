import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:my_ik/model/menu_model.dart';
import 'package:my_ik/screens/my_ik_screen.dart';
import 'package:my_ik/screens/pedidos_details_screen.dart';
import 'package:my_ik/screens/perfil_screen.dart';
import 'package:my_ik/screens/splash_screen.dart';
import 'package:my_ik/widget/google%20_map_widget.dart';
import 'package:my_ik/widget/menu_widget.dart';
import 'package:my_ik/widget/navigation_widget.dart';

import 'menu_sccrren.dart';
class HomeScreenThree extends StatefulWidget {
  const HomeScreenThree({Key? key}) : super(key: key);

  @override
  _HomeScreenThreeState createState() => _HomeScreenThreeState();
}



class _HomeScreenThreeState extends State<HomeScreenThree> {

  


  @override
  Widget build(BuildContext context) {
     final head5 = Theme.of(context).textTheme.headline5; 
    return SafeArea(
        child: Scaffold(
          body:SizedBox(
            height: double.infinity,
            width:  double.infinity,
            child: Stack(
              alignment: Alignment.center,
              children:<Widget>[
                GoogleMapWidget(),
               Positioned(
                 top: 30.h,
                   child: Material(
                     color: Colors.transparent,
                     child: InkWell(
                       onTap: (){},
                       child: Card(
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20.r),
                         ),

                         child: Padding(
                           padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: <Widget>[
                            SvgPicture.asset('assets/icons/focus_icon.svg'),
                                Text('INDIQUE O LOCAL DA RECOLHA',style:head5?.copyWith(color: Colors.black,letterSpacing: 2) ,),
                             ],
                           ),
                         ),
                       ),
                     ),
                   ),
               ),
                Positioned(
                  top: 90.h,
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: (){},
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r),
                        ),

                        child: Padding(
                          padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              SvgPicture.asset('assets/icons/location_outline_icon.svg'),
                              Text('INDIQUE O LOCAL DA ENTREGA',style:head5?.copyWith(color:Colors.black,letterSpacing: 2,),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

               Positioned(
                   bottom: 130.h,
                 right: 30.w,
               child: ClipOval(
                 child: Material(
                    // Button color
                   child: InkWell(
                     splashColor: Colors.white, // Splash color
                     onTap: () {},
                     child:  Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.r),color: Colors.purpleAccent.shade100),
                              child: Container(
                                height:40.w,
                                  width: 40.w,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.r),color: Colors.purpleAccent),
                                  child: SvgPicture.asset('assets/icons/focus_icon.svg',width: 15.w,height: 15.w,color:  Colors.white, fit: BoxFit.scaleDown)),
                            ),
                          ),
                     // SizedBox(width: 56, height: 56, child: Icon(Icons.menu)),
                   ),
                 ),
               ),
                Positioned(
                  bottom: 30.h,
                  //This Section is for Navigation Bar
                  child: BottomNavigationWidget(),
                ),
              ],
            ),
          ),


          
        ),
    );
  }
}

