
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:my_ik/model/expanded_model.dart';
import 'package:my_ik/model/menu_model.dart';
import 'package:my_ik/screens/my_ik_screen.dart';
import 'package:my_ik/screens/pedidos_details_screen.dart';
import 'package:my_ik/screens/perfil_screen.dart';
import 'package:my_ik/screens/splash_screen.dart';
import 'package:my_ik/widget/expanded_card_widget.dart';
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
    return SafeArea(
        child: Scaffold(
          body:SizedBox(
            height: MediaQuery.of(context).size.height,
            width:  MediaQuery.of(context).size.width,
            child: Stack(
              alignment: Alignment.center,
              children:<Widget>[
               GoogleMapWidget(),
             const Positioned(
                  bottom: 30.0,
                  //This Section is for Navigation Bar
                  child: BottomNavigationWidget(),
                ),

                //For Overlay
                Container(
                  height: MediaQuery.of(context).size.height,
                  width:  MediaQuery.of(context).size.width,
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
                  bottom: 220,
                  child: SizedBox(
                    height: 310,
                    width: MediaQuery.of(context).size.width*0.9,
                    child: Card(
                      color: Colors.white,
                      elevation: 5.0,
                      margin: const EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        child: Column(
                          children:<Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(child: const Text('IKTOKEN DO EXECUTIVO',style: TextStyle(letterSpacing: 2.0,fontSize: 14.0,color: Colors.black,fontFamily: 'Poppins'),)),
                                Container(
                                  width: 36,
                                  height: 36,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),border: Border.all(width: 2,color: Colors.black),),
                                  child: IconButton(onPressed: (){},icon: SvgPicture.asset('assets/icons/cross_icon.svg',height: 20,width: 20,),iconSize: 30,),

                                ),
                              ],
                            ),
                            const SizedBox(height: 15,),
                            const Divider(thickness: 1,color: Colors.black26,),
                            const SizedBox(height: 10,),
                            Container(
                                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                decoration:BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: const Color(0xFFF1F2F7)),
                                height: 60,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Image.asset('assets/icons/icon_kl.png',height: 30,width: 20,fit: BoxFit.scaleDown,),
                                    const SizedBox(width: 10,),
                                    const Text('Escreva o iktoken',style:TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.normal,fontSize:16,color: Colors.black),),


                                  ],
                                )
                            ),
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

