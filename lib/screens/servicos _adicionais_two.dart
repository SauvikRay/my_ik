import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/app_color.dart';
class ServiceAdicionaisScreenTwo extends StatefulWidget {
  const ServiceAdicionaisScreenTwo({Key? key}) : super(key: key);

  @override
  _ServiceAdicionaisScreenTwoState createState() => _ServiceAdicionaisScreenTwoState();
}

class _ServiceAdicionaisScreenTwoState extends State<ServiceAdicionaisScreenTwo> {
  @override
  Widget build(BuildContext context) {
    final body1 = Theme.of(context).textTheme.bodyText1; //20,bold
    final head4 = Theme.of(context).textTheme.headline4; // 16, normal
    final head5 = Theme.of(context).textTheme.headline5; // 14, normal
    final sub2 = Theme.of(context).textTheme.subtitle2; //12,normal,

    return  SafeArea(
        child: Scaffold(
          backgroundColor:const Color(0xFFE5E5E5),
          appBar: AppBar(
          leading: IconButton(splashRadius: 20,onPressed: () {
                Navigator.pop(context);
              },
              icon: SvgPicture.asset('assets/icons/arrow_back.svg')),
        ),
          body:Align(
         alignment: Alignment.bottomCenter,
         child:Container(
           padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.w ),
           height:0.8.sh,
           width: double.infinity,
           decoration:  BoxDecoration(
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(20.r),
                 topRight: Radius.circular(20.r),
               ),
               color: Colors.white),
            child: Column(
              children:<Widget> [
                //Cross Button
                Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
             Container(
               width: 36.w,
               height: 36.w,
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.r),border: Border.all(width: 2,color: Colors.black),),
               child: IconButton(onPressed: (){},icon: SvgPicture.asset('assets/icons/cross_icon.svg',),iconSize: 30.w,),

             ),
                ],
              ),
                 Text(
                  'Serviços Adicionais',
                  style: body1?.copyWith(color: Colors.black),
                ),
                Text(
                  'Informe os serviços adicionais',
                  style:head4?.copyWith(color: Colors.black26),
                ),
               
                // const Divider(
                //   thickness: 1,
                //   color: Colors.black26,
                // ),
                 SizedBox(
                  height: 10.h,
                ),
                //Item Box
                Flexible(
                  child: ListView(
                    children:<Widget> [
                     Container(
                          padding: EdgeInsets.symmetric(vertical: 5.w),
                          decoration:BoxDecoration(borderRadius: BorderRadius.circular(10.r),color:AppColors.shadowText),
                          height: 60.h,
                          child: Row(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   children:<Widget>[
                                     Row(
                                       children:<Widget> [
                                       TextButton( child: Text('Nenhum serviço adicional',style:head5?.copyWith(color: Colors.black)),
                                         onPressed: (){
                                         },),
                                       //const Icon(Icons.keyboard_arrow_down_rounded,color: Colors.purpleAccent,size: 25,),
                                         PopupMenuButton(
                                           icon: const Icon(Icons.keyboard_arrow_down_rounded,color: AppColors.highLightText,),
                                             iconSize: 20.w,
                                             itemBuilder: (BuildContext context){
                                               return [
                                                  PopupMenuItem(
                                                   child: Text('Nenhum serviço adicional',style: head5?.copyWith(color: Colors.black),),
                                                 ),
                                                  PopupMenuItem(
                                                   child: Text('Montagem e desmontagem - 25€',style: head5?.copyWith(color: Colors.black),),
                                                 ),
                                                  PopupMenuItem(
                                                   child: Text('Rolo de filme com 450 metros - 11€',style: head5?.copyWith(color: Colors.black),),
                                                 ),
                                                  PopupMenuItem(
                                                   child: Text('Caixas (cada) - 3.30€',style: head5?.copyWith(color: Colors.black),),
                                                 ),
                                                  PopupMenuItem(
                                                   child: Text('Rolo de papel cartão - 56€',style: head5?.copyWith(color: Colors.black),),
                                                 ),
                                                  PopupMenuItem(
                                                   child: Text('Elevador Extern o - 185€',style: head5?.copyWith(color: Colors.black),),
                                                 ),
                       
                                               ];
                                             }
                                         )
                                     ],),
                                     Text('Qtd.',style:sub2?.copyWith(color: Colors.black),),
                                     Icon(Icons.keyboard_arrow_down_rounded,color: Colors.purpleAccent,size: 20.w,),
                                     Expanded(flex:2, child: IconButton(onPressed: (){}, icon:const Icon(Icons.add_box,color: Colors.purpleAccent,),iconSize: 20.w,)),
                       
                                   ],
                                 )
                             ),

                    SizedBox(height: 10.h,),
                    const Divider(thickness: 1,color: Colors.black26,),
                    SizedBox(height: 10.h,),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.w,),
                          decoration:BoxDecoration(borderRadius: BorderRadius.circular(10.r),color:AppColors.shadowText),
                          height: 60.r,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:<Widget>[
                              Expanded(child: Text('Caixas (cada)',style:head4?.copyWith(color: Colors.black))),
                              Row(children: <Widget> [
                                Text('09',style:sub2?.copyWith(color: Colors.black),),
                                Icon(Icons.keyboard_arrow_down_rounded,color: AppColors.highLightText,size: 20.w,),
                              ],),
                              IconButton(onPressed: (){}, icon:const Icon(Icons.delete,color:AppColors.highLightText,),iconSize: 20,),
                
                            ],
                          )
                      ),
                
                
                    ],
                  ),
                ),



                MaterialButton(
                  onPressed: (){
                  },
                  child:const Text('Aplicar',style: TextStyle(fontFamily:'Poppins',fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.white ),),
                  height: 60.0,
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),),
                  color:const Color(0xFF6B34BE),
                ),

              ],
            ),
         ),
        ),
      



        ));
  }
}
