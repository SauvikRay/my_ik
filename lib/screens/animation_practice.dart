import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/app_color.dart';
import '../model/expanded_model.dart';
import '../widget/expanded_card_widget.dart';
class AnimatedExpandedBox extends StatefulWidget {
 const AnimatedExpandedBox({Key? key}) : super(key: key);

  @override
  State<AnimatedExpandedBox> createState() => _AnimatedExpandedBoxState();
}

class _AnimatedExpandedBoxState extends State<AnimatedExpandedBox> {

    // double _height;
   //late double _width;
   bool _isPressed = true; 
  @override
  Widget build(BuildContext context) {
        final head5 = Theme.of(context).textTheme.headline5; // 14, normal
        final sub2 = Theme.of(context).textTheme.subtitle2; //12,normal,

         List<ExpandedItem> expandedItems =[
    ExpandedItem(menuIcon: 'pedidos_icon.svg', menuText: 'Produto Individual', menuSubText: 'Envio de baixo custo', path: 'produto'),
    ExpandedItem(menuIcon: 'home_two_icon.svg', menuText: 'Mudança de Casa', menuSubText: 'Garante o comforto', path: 'produto'),
    ExpandedItem(menuIcon: 'star_icon.svg', menuText: 'O Meu Executivo Favorito', menuSubText: 'Escolha o seu executivo favorito', path: 'produto'),
    ExpandedItem(menuIcon: 'euro_box_icon.svg', menuText: 'Preços das Clases e Serviços', menuSubText: 'Consulte o preçario', path: 'produto'),
  ];
        final widgetValue =
                     Card(
                      color: Colors.white,
                      elevation: 5.0,
                      margin: const EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        child: Column(
                          children:<Widget>[
                            IconButton(
                              onPressed: (){
                                setState(() {
                                  _isPressed = true;
                                });
                              }, 
                              
                              icon: SvgPicture.asset('assets/icons/rectangle_icon.svg',height: 5.h,width: 10.w,fit: BoxFit.contain,),),
                        
                            // GestureDetector(
                            //   child: Container(
                            //     padding: EdgeInsets.symmetric(horizontal: 10.h,),
                            //     child: SvgPicture.asset('assets/icons/rectangle_icon.svg',height: 5.h,width: 10.w,fit: BoxFit.contain,),),
                            //   onTap: (){
                            //     setState(() {
                            //       _isPressed = true;
                            //     });
                            //   },
                              
                            //   ),
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

                    
                  );
   
    return SafeArea(
      child: Container(
        decoration:BoxDecoration(
          gradient: (_isPressed == false) ? LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                 const Color(0xFFFF3CBE).withOpacity(0.8),
                     const Color(0xFFE305B7).withOpacity(0.8),
                     const Color(0xFF6B34BE).withOpacity(0.8),
                ],
                
                ):  const LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                  AppColors.shadowText,
                  AppColors.shadowText,
                  AppColors.shadowText,

                     
                ],
                
                ),
         ) ,
         
        child: Scaffold(
         backgroundColor: Colors.transparent,
         // appBar: AppBar(title:const Text('Container Animation'),),
          body: Center(
            child:
             AnimatedContainer(
                      height:_isPressed ? 130.h : 400.h ,
                      width: 0.9.sw,
                      duration: const Duration(milliseconds: 150),
                      child: 
                            (_isPressed)  ? Card(
                        color: Colors.white,
                        elevation: 5.0,
                        margin: EdgeInsets.symmetric(vertical: 10.h),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:<Widget> [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  _isPressed= false;
                                });
                              },
                              icon: Icon( _isPressed ? Icons.keyboard_arrow_up_outlined : Icons.keyboard_arrow_down_outlined,size: 30.h,color: AppColors.highLightText,),),
                             Text('ESCOLHA O TIPO DE SERVIÇO',style: head5?.copyWith(color: Colors.black,letterSpacing: 3),),
                             Text('Clique aqui para escolher o seu tipo de encomenda!',style: sub2?.copyWith(color: AppColors.shadowText2),),
                          ],
                        ),
                      ) : widgetValue,
                    ),
                  
          ),


        ),
      ),
    );
  }
}