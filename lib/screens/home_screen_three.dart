import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    return SafeArea(
        child: Scaffold(
          body:SizedBox(
            height: MediaQuery.of(context).size.height,
            width:  MediaQuery.of(context).size.width,
            child: Stack(
              alignment: Alignment.center,
              children:<Widget>[
                GoogleMapWidget(),
               Positioned(
                 top: 30,
                   child: Material(
                     color: Colors.transparent,
                     child: InkWell(
                       onTap: (){},
                       child: Card(
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20.0),
                         ),

                         child: Padding(
                           padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: <Widget>[
                            SvgPicture.asset('assets/icons/focus_icon.svg'),
                               const Text('INDIQUE O LOCAL DA RECOLHA',style: TextStyle(letterSpacing: 2.0,fontFamily: 'Poppins',fontSize: 16,color: Colors.black),),
                             ],
                           ),
                         ),
                       ),
                     ),
                   ),
               ),
                Positioned(
                  top: 90,
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: (){},
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),

                        child: Padding(
                          padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              SvgPicture.asset('assets/icons/location_outline_icon.svg'),
                              const Text('INDIQUE O LOCAL DA ENTREGA',style: TextStyle(letterSpacing: 2.0,fontFamily: 'Poppins',fontSize: 16,color: Colors.black),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

               Positioned(
                   bottom: 130,
                 right: 30,
               child: ClipOval(
                 child: Material(
                    // Button color
                   child: InkWell(
                     splashColor: Colors.white, // Splash color
                     onTap: () {},
                     child:  Container(
                              padding:const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.purpleAccent.shade100),
                              child: Container(
                                height:40,
                                  width: 40,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.purpleAccent),
                                  child: SvgPicture.asset('assets/icons/focus_icon.svg',width: 15,height: 15,color:  Colors.white, fit: BoxFit.scaleDown)),
                            ),
                          ),
                     // SizedBox(width: 56, height: 56, child: Icon(Icons.menu)),
                   ),
                 ),
               ),
               const Positioned(
                  bottom: 30.0,

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

