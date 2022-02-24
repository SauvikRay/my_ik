
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_ik/constants/app_color.dart';
import 'package:my_ik/screens/pedidos_details_screen.dart';
import 'package:my_ik/screens/perfil_screen.dart';
import 'package:my_ik/widget/google%20_map_widget.dart';
import '../model/expanded_model.dart';
import '../widget/expanded_card_widget.dart';
import '../widget/navigation_widget.dart';
import 'historic_screen_five.dart';
import 'historic_screen_one.dart';
import 'historic_screen_six.dart';
import 'menu_sccrren.dart';
import 'servicos _adicionais_one.dart';
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
    bool _isPressed = true; 

    @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    final head5 = Theme.of(context).textTheme.headline5; // 14, normal
    final sub2 = Theme.of(context).textTheme.subtitle2; //12,normal,
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
    
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body:Stack(
            alignment: Alignment.center,
            children:<Widget>[
            
              //GoogleMapWidget(),
             
              PageStorage(bucket: bucket, child: currentScreen),
            
            if(_isPressed == false && currentTab ==0) AnimatedContainer(
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
                
                )
                
                ),
         ) ,

         (currentTab == 0)   ?  Positioned(
                bottom: 110.h,
                child: AnimatedContainer(
                    height:_isPressed ? 130.h : 400.h ,
                    width: 0.9.sw,
                    duration: const Duration(milliseconds: 400),
                    child: 
                          (_isPressed)  ? Card(
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
           
         
           Positioned(
              
                bottom: 20.h,
                //This Section is for Navigation Bar
                child: 
                  //BottomNavigationWidget(),
                Container(
                  padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),
                  height: 60.h,
                  width: 0.9.sw,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(40.r),color: Colors.white,
                   boxShadow: [
           BoxShadow(
             color: Colors.grey.withOpacity(0.5),
             spreadRadius: 5.r,
             blurRadius: 7.r,
             offset: const Offset(0,3),
           ),
          ]),
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
          //  floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
          //  floatingActionButton: BottomNavigationWidget(),
          //bottomNavigationBar:BottomNavigationWidget(),
          
            
        ),
    );
  }
}

