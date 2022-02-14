
import 'package:flutter/cupertino.dart';
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
import 'package:my_ik/widget/google%20_map_widget.dart';
import 'package:my_ik/widget/menu_widget.dart';
import 'package:my_ik/widget/navigation_widget.dart';

import 'menu_sccrren.dart';
class HomeScreenTwo extends StatefulWidget {
  const HomeScreenTwo({Key? key}) : super(key: key);

  @override
  _HomeScreenTwoState createState() => _HomeScreenTwoState();
}



class _HomeScreenTwoState extends State<HomeScreenTwo> {

 

  List<ExpandedItem> expandedItems =[
    ExpandedItem(menuIcon: 'pedidos_icon.svg', menuText: 'Produto Individual', menuSubText: 'Envio de baixo custo', path: 'produto'),
    ExpandedItem(menuIcon: 'home_two_icon.svg', menuText: 'Mudança de Casa', menuSubText: 'Garante o comforto', path: 'produto'),
    ExpandedItem(menuIcon: 'star_icon.svg', menuText: 'O Meu Executivo Favorito', menuSubText: 'Escolha o seu executivo favorito', path: 'produto'),
    ExpandedItem(menuIcon: 'euro_box_icon.svg', menuText: 'Preços das Clases e Serviços', menuSubText: 'Consulte o preçario', path: 'produto'),
  ];

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
                     const Color(0xFF6B34BE).withOpacity(0.8),
                    ],),),
                ),

               
               // PageStorage(bucket: bucket, child: currentScreen),

                // (currentTab==0) ?
                Positioned(
                  bottom: 120,
                  child: SizedBox(
                    height: 400,
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
                            SvgPicture.asset('assets/icons/rectangle_icon.svg'),
                            const SizedBox(height: 10,),

                            const Text('ESCHOLA O TIPO DE SERVIÇO',textAlign:TextAlign.center,style: TextStyle(letterSpacing: 2.0,fontSize: 14.0,color: Colors.black,fontFamily: 'Poppins'),),
                            const SizedBox(height: 20,),
                            Expanded(
                                child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: expandedItems.length,
                              itemBuilder: (BuildContext context, int index) {
                                return ExpandedWidget(expandedItem: expandedItems[index]);
                              },
                            ),
                            ),
                          
                        
                            
                          

                          ],
                        ),
                      ),

                    ),
                  ),
                ),
                    // : Container(),
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

