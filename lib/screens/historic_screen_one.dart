import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_ik/constants/app_color.dart';

import '../widget/material_button.dart';
class HistoricPageOne extends StatefulWidget {
  const HistoricPageOne({Key? key}) : super(key: key);

  @override
  _HistoricPageOneState createState() => _HistoricPageOneState();
}

class _HistoricPageOneState extends State<HistoricPageOne> {
  @override
  Widget build(BuildContext context) {
    final body1 = Theme.of(context).textTheme.bodyText1;
    final head4 = Theme.of(context).textTheme.headline4;
    final head6 = Theme.of(context).textTheme.headline6;
     final head2 = Theme.of(context).textTheme.headline2;
    final sub2 = Theme.of(context).textTheme.subtitle2;
    return SafeArea(
        child: Scaffold(
          backgroundColor:const Color(0xFFE5E5E5),
            appBar: AppBar(
              leading: IconButton(splashRadius: 20.r, onPressed: (){Navigator.pop(context);} ,icon:SvgPicture.asset('assets/icons/arrow_back.svg')),
            ),
          body:Align(
         alignment: Alignment.bottomCenter,
         child:Container(
           padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h ),
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
                         width: 36,
                         height: 36,
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),border: Border.all(width: 2,color: Colors.black),),
                         child: IconButton(onPressed: (){},icon: SvgPicture.asset('assets/icons/cross_icon.svg',height: 20,width: 20,),iconSize: 30,),


                       ),
                     ],
                   ),
                    Text('Produto Individual',style:body1?.copyWith(color: Colors.black)),
                    Text('Adicione os itens que deseja enviar',style:head4?.copyWith(color: Colors.black26),),
                    Text('Altura (Alt.) | Comprimento (Comp.)',style:head6?.copyWith(color: Colors.black54),),
                   SizedBox(height: 10.h,),
                   //Item Box
                   Flexible(
                     child: ListView(
                       children:<Widget> [
                         Container(
                             padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),
                             decoration:BoxDecoration(borderRadius: BorderRadius.circular(10.r),color: AppColors.shadowText),
                             height: 60.h,
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children:<Widget>[
                                 Material(
                                   child: InkWell(
                                       onTap: (){} ,child: SvgPicture.asset('assets/icons/edit_icon.svg')),
                                 ),
                                  SizedBox(width: 8.w,),
                                  Text('Item',style:head2?.copyWith(color: Colors.black),),
                                  SizedBox(width: 10.w,),
                                  Text('Alt.',style:sub2?.copyWith(color: Colors.black),),
                                 InkWell( onTap: (){},child: Icon(Icons.keyboard_arrow_down_rounded,color: AppColors.highLightText,size: 25.w,)),
                                  SizedBox(width: 10.w,),
                                 Text('Comp.',style:sub2?.copyWith(color: Colors.black),),
                                 InkWell( onTap: (){},child:  Icon(Icons.keyboard_arrow_down_rounded,color: AppColors.highLightText,size: 25.w,)),
                                 SizedBox(width: 10.w,),
                                 Text('Qtd.',style:sub2?.copyWith(color: Colors.black),),
                                 InkWell( onTap: (){},child:  Icon(Icons.keyboard_arrow_down_rounded,color: AppColors.highLightText,size: 25.w,)),
                                 IconButton(onPressed: (){}, icon: const Icon(Icons.add_box,color: AppColors.highLightText,),iconSize: 28.w,),

                               ],
                             )
                         ),

                   ],
                     ),
                   ),

                   customeButton(
                     context: context,
                     name: 'Próximo',
                     onCallBack: () {

                     }),

                    SizedBox(height: 10.h,),
                 ],
               ),
         ) ,
          ),

    ));
  }
}
