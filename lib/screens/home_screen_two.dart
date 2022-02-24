import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_ik/model/expanded_model.dart';
import 'package:my_ik/widget/expanded_card_widget.dart';
import 'package:my_ik/widget/google%20_map_widget.dart';

import 'historic_screen_five.dart';
import 'historic_screen_one.dart';
import 'historic_screen_six.dart';
import 'servicos _adicionais_one.dart';

class HomeScreenTwo extends StatefulWidget {
  const HomeScreenTwo({Key? key}) : super(key: key);

  @override
  _HomeScreenTwoState createState() => _HomeScreenTwoState();
}



class _HomeScreenTwoState extends State<HomeScreenTwo> {
  List<ExpandedItem> expandedItems =[
  ExpandedItem(menuIcon: 'pedidos_icon.svg', menuText: 'Produto Individual', menuSubText: 'Envio de baixo custo', path: HistoricPageOne(),),
        ExpandedItem(menuIcon: 'home_two_icon.svg', menuText: 'Mudança de Casa', menuSubText: 'Garante o comforto', path: HistoricPageFive(),),
        ExpandedItem(menuIcon: 'star_icon.svg', menuText: 'O Meu Executivo Favorito', menuSubText: 'Escolha o seu executivo favorito', path: ServiceAdicionaisScreenOne(),),
        ExpandedItem(menuIcon: 'euro_box_icon.svg', menuText: 'Preços das Clases e Serviços', menuSubText: 'Consulte o preçario', path: HistoricPageSix(),),
  ];

  @override
  Widget build(BuildContext context) {

    
        final head5 = Theme.of(context).textTheme.headline5; // 14, normal
      
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
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
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

                            Text('ESCHOLA O TIPO DE SERVIÇO',textAlign:TextAlign.center,style: head5?.copyWith(color: Colors.black,letterSpacing: 2),),
                            const SizedBox(height: 20,),
                            Expanded(
                                child: ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
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
            //  const Positioned(
            //       bottom: 30.0,
            //       //This Section is for Navigation Bar
            //       child: BottomNavigationWidget(),
            //     ),
              ],
            ),
          ),
          
        ),
    );
  }
}

