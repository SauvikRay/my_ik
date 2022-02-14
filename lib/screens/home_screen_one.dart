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
class HomeScreenOne extends StatefulWidget {
  const HomeScreenOne({Key? key}) : super(key: key);

  @override
  _HomeScreenOneState createState() => _HomeScreenOneState();
}



class _HomeScreenOneState extends State<HomeScreenOne> {

  int currentTab = 0;
  final  List<Widget> screens = [
    const GoogleMapWidget(),
    const PedidosScreen(),
    const PerfilScreen(),
    const MenuScreen(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget  currentScreen =const GoogleMapWidget();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body:SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Stack(
              alignment: Alignment.center,
              children:<Widget>[
                GoogleMapWidget(),
               
                PageStorage(bucket: bucket, child: currentScreen),

                 (currentTab==0) ?
                Positioned(
                  bottom: 110.h,
                  child: SizedBox(
                    height: 120.h,
                    width: 0.9.sw,
                    child: Card(
                      color: Colors.white,
                      elevation: 5.0,
                      margin: EdgeInsets.symmetric(vertical: 10.h),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:<Widget> [
                          IconButton(onPressed: (){},
                            icon: Icon(Icons.keyboard_arrow_up_outlined,size: 30.h,color: Colors.purpleAccent,),),
                           Text('ESCOLHA O TIPO DE SERVIÇO',style: TextStyle(fontSize: 14.sp,color: Colors.black,letterSpacing: 3.0,),),
                           Text('Clique aqui para escolher o seu tipo de encomenda!',style: TextStyle(fontSize: 12.sp,color: Colors.black26,),),
                        ],
                      ),
                    ),
                  ),
                )
                   : Container(),
               Positioned(
                  bottom: 30.h,
                  //This Section is for Navigation Bar
                  child: 
                    //BottomNavigationWidget(),
                  Container(
                    padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),
                    height: 60.h,
                    width: 0.9.sw,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(40.r),color: Colors.white),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 60.h,
                          child: MaterialButton(
                            minWidth: 70.w,
                            onPressed: (){
                              setState(() {
                                currentScreen= const GoogleMapWidget();
                                currentTab =0;
                              });
                            },
                            child: Column(
                              mainAxisAlignment:MainAxisAlignment.center,
                              children:<Widget> [
                                SvgPicture.asset('assets/icons/home_icon.svg',width: 20.w,height: 20.h,color: (currentTab==0) ? Colors.purpleAccent : Colors.black ,),
                                Text('Home', style: TextStyle(fontSize: 12.sp,  fontWeight:(currentTab==0) ? FontWeight.bold : FontWeight.normal, color: (currentTab==0) ? Colors.purpleAccent : Colors.black ),)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 60.h,
                          child: MaterialButton(
                            minWidth: 70.w,
                            onPressed: (){
                              setState(() {
                                currentScreen= const PedidosScreen();
                                currentTab =1;
                              });
                  
                            },
                            child: Column(
                              mainAxisAlignment:MainAxisAlignment.center,
                              children:<Widget> [
                                SvgPicture.asset('assets/icons/pedidos_icon.svg',width: 20.w,height: 20.h,color:(currentTab==1)?Colors.purpleAccent : Colors.black ),
                                Text('Pedidos',style: TextStyle(fontSize: 12.sp,fontWeight:(currentTab==1)? FontWeight.bold : FontWeight.normal,color: (currentTab==1) ? Colors.purpleAccent : Colors.black ),)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 60.h,
                          child: MaterialButton(
                            minWidth: 70.w,
                            onPressed: (){
                              setState(() {
                                currentScreen= const PerfilScreen();
                                currentTab =2;
                              });
                  
                            },
                            child: Column(
                              mainAxisAlignment:MainAxisAlignment.center,
                              children:<Widget> [
                                SvgPicture.asset('assets/icons/perfil_line_icon.svg',width: 20.w,height: 20.h,color: (currentTab==2)?Colors.purpleAccent : Colors.black,),
                                Text('Perfil',style: TextStyle(fontSize: 12.sp,fontWeight:(currentTab==2)? FontWeight.bold : FontWeight.normal,color: (currentTab==2) ? Colors.purpleAccent : Colors.black ),)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 60.h,
                          child: MaterialButton(
                            minWidth: 70.w,
                            onPressed: (){
                              setState(() {
                                currentScreen= const MenuScreen();
                                currentTab =3;
                              });
                  
                            },
                            child: Column(
                              mainAxisAlignment:MainAxisAlignment.center,
                              children:<Widget> [
                                SvgPicture.asset('assets/icons/menu_icon.svg',width: 20.w,height: 20.h,color: (currentTab==3) ? Colors.purpleAccent : Colors.black,),
                                Text('Menu',style: TextStyle(fontSize: 12.sp,fontWeight:(currentTab==3) ? FontWeight.bold : FontWeight.normal,color: (currentTab==3) ? Colors.purpleAccent : Colors.black ),)
                              ],
                            ),
                          ),
                        ),
                      ],
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

