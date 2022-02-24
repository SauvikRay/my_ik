import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_ik/constants/app_color.dart';
import 'package:my_ik/screens/historic_screen_five.dart';
import 'package:my_ik/screens/historic_screen_one.dart';
import 'package:my_ik/screens/historic_screen_six.dart';
import 'package:my_ik/screens/menu_sccrren.dart';
import 'package:my_ik/screens/pedidos_details_screen.dart';
import 'package:my_ik/screens/perfil_screen.dart';
import 'package:my_ik/screens/servicos%20_adicionais_one.dart';
import 'package:my_ik/widget/google%20_map_widget.dart';

import '../model/expanded_model.dart';
import '../widget/expanded_card_widget.dart';

class NavigationScreen extends StatefulWidget {
  
 
  NavigationScreen( {Key? key, this.pageNum  }) : super(key: key);
   Widget? pageNum;

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _currentIndex = 0;
  int _colorIndex = 0;
  bool _isFisrtBuild = true; 
  bool _isPressed = true; 

  final _screens = [
    GoogleMapWidget(),
    PedidosScreen(),
    PerfilScreen(),
    MenuScreen(),
  ];
  
  @override
  Widget build(BuildContext context) {

     Object? args;
     Widget? screenPage;
       if (_isFisrtBuild){
         args = ModalRoute.of(context)!.settings.arguments ; 

       }
        
        if(args != null){
          _colorIndex=4;
          screenPage = args as  Widget;
        } 
      
        final sub1 = Theme.of(context).textTheme.subtitle1; //12,bold,
        final sub2 = Theme.of(context).textTheme.subtitle2; //12,normal,
        final head5 = Theme.of(context).textTheme.headline5; // 14, normal
         
        List<ExpandedItem> expandedItems =[
              ExpandedItem(menuIcon: 'pedidos_icon.svg', menuText: 'Produto Individual', menuSubText: 'Envio de baixo custo', path: HistoricPageOne(),),
              ExpandedItem(menuIcon: 'home_two_icon.svg', menuText: 'Mudança de Casa', menuSubText: 'Garante o comforto', path: HistoricPageFive(),),
              ExpandedItem(menuIcon: 'star_icon.svg', menuText: 'O Meu Executivo Favorito', menuSubText: 'Escolha o seu executivo favorito', path: ServiceAdicionaisScreenOne(),),
              ExpandedItem(menuIcon: 'euro_box_icon.svg', menuText: 'Preços das Clases e Serviços', menuSubText: 'Consulte o preçario', path: HistoricPageSix(),),
      ];
      final widgetValue =Card(
                      color: Colors.white,
                      elevation: 5.0,
                      margin:EdgeInsets.all(10.w),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),
                        child: Column(
                          children:<Widget>[
                            IconButton(
                              onPressed: (){
                                setState(() {
                                  _isPressed = true;
                                });
                              }, 
                              
                              icon: SvgPicture.asset('assets/icons/rectangle_icon.svg',height: 5.h,width: 10.w,fit: BoxFit.contain,),
                              ),
                        
                            SizedBox(height: 5.h,),
                            Text('ESCHOLA O TIPO DE SERVIÇO',textAlign:TextAlign.center,style: head5?.copyWith(color: Colors.black,letterSpacing: 2),),
                            SizedBox(height: 15.h,),
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
                  );

    
  @override
    void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
    
    return SafeArea(
      child: Scaffold(
    
        extendBody: true,
        body: Stack(
            alignment: Alignment.center,
           children:<Widget> [
             (screenPage != null) ? screenPage  :  _screens.elementAt(_currentIndex),
        
        if(_isPressed == false) AnimatedContainer(
              duration:const Duration(milliseconds: 400),
             decoration:BoxDecoration(
             gradient:LinearGradient(
             begin: Alignment.topRight,
             end: Alignment.bottomLeft,
              colors: [
                 const Color(0xFFFF3CBE).withOpacity(0.8),
                 const Color(0xFFE305B7).withOpacity(0.8),
                 const Color(0xFF6B34BE).withOpacity(0.8),
                ],
                
                ),
                
                ),
         ) ,

         (_colorIndex == 0)  
         ? Positioned(
                bottom: 110.h,
                child: AnimatedContainer(
                    height:_isPressed ? 130.h : 400.h ,
                    width: 0.9.sw,
                    duration: const Duration(milliseconds: 400),
                    child: (_isPressed)  ? Card(
                      color: Colors.white,
                      elevation: 5.0,
                       margin: EdgeInsets.symmetric(vertical: 10.h,),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:<Widget> [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                _isPressed= false;
                              });
                            },
                            icon: Icon( Icons.keyboard_arrow_up_outlined,size: 30.h,color: AppColors.highLightText,),),
                           Text('ESCOLHA O TIPO DE SERVIÇO',style: head5?.copyWith(color: Colors.black,letterSpacing: 3),),
                           Padding(
                             padding: EdgeInsets.symmetric(horizontal: 10.w),
                             child: Text('Clique aqui para escolher o seu tipo de encomenda!',textAlign: TextAlign.center,style: sub2?.copyWith(color: AppColors.shadowText2),),
                           ),
                        ],
                      ),
                    ) : widgetValue,
                  ),
         
              ) : Container(),
          ],

        ),
       
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
        floatingActionButton: CustomNavigationBar(
            backgroundColor: Colors.white,
            //unSelectedColor: Colors.black,
            //selectedColor: AppColors.highLightText,
            isFloating: true,
            borderRadius: Radius.circular(50.r),
            currentIndex: _currentIndex,
            onTap: (index ) {
              setState(() {
                args = null;
               screenPage = null;
               _isFisrtBuild = false;
                _currentIndex = index;
                _colorIndex = index;
                _isPressed = true;
              });
            },
            items: [
              CustomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/home_icon.svg',color:(_colorIndex==0) ? AppColors.highLightText: Colors.black,
                  width: 20.w,
                  height: 20.h,
                ),
                title:  Text('Home',style:(_colorIndex==0) ?  sub1?.copyWith(color: AppColors.highLightText) : sub2?.copyWith(color: Colors.black),),
              ),
              CustomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/pedidos_icon.svg',color:(_colorIndex==1) ? AppColors.highLightText: Colors.black,
                  width: 20.w,
                  height: 20.h,
                ),
                title:  Text('Pedidos',style:(_colorIndex==1) ?  sub1?.copyWith(color: AppColors.highLightText) : sub2?.copyWith(color: Colors.black),),
              ),
              CustomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/perfil_line_icon.svg',color:(_colorIndex==2) ? AppColors.highLightText: Colors.black,
                  width: 20.w,
                  height: 20.h,
                ),
                title:  Text('Perfil',style:(_colorIndex==2) ?  sub1?.copyWith(color: AppColors.highLightText) : sub2?.copyWith(color: Colors.black),),
              ),
              CustomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/menu_icon.svg',color:(_colorIndex==3) ?AppColors.highLightText: Colors.black,
                  width: 20.w,
                  height: 20.h,
                ),
                title:  Text('Menu',style:(_colorIndex==3) ?  sub1?.copyWith(color: AppColors.highLightText) : sub2?.copyWith(color: Colors.black),),
              ),
            ]),
      ),
    );
  }
}