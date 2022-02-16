import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_ik/widget/google%20_map_widget.dart';
import 'package:my_ik/widget/navigation_widget.dart';
class PedidosScreenTwo extends StatefulWidget {
  const PedidosScreenTwo({Key? key}) : super(key: key);

  @override
  _PedidosScreenTwoState createState() => _PedidosScreenTwoState();
}

class _PedidosScreenTwoState extends State<PedidosScreenTwo> {
  @override
  Widget build(BuildContext context) {
           final head1 = Theme.of(context).textTheme.headline1; // Bold 18
           final head2 = Theme.of(context).textTheme.headline2; //Normal 18
        //  final head3 = Theme.of(context).textTheme.headline3;//Bold 16
           final head4 = Theme.of(context).textTheme.headline4; // 16, normal
           final head5 = Theme.of(context).textTheme.headline5; // 14, normal
         final body1 = Theme.of(context).textTheme.bodyText1; //20,Bold
        // final body2 = Theme.of(context).textTheme.bodyText2; //16,normal, ash
        // final sub1 = Theme.of(context).textTheme.subtitle1; //12,bold,
         final sub2 = Theme.of(context).textTheme.subtitle2; //12,normal,
    return SafeArea(
        child: Scaffold(
          body:SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Stack(
              alignment: Alignment.center,
              children:<Widget>[
                GoogleMapWidget(),

                //EDITAR
                Positioned(
                  top: 30.h,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: (){},
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 20.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:  <Widget>[
                                    Icon(Icons.arrow_back_ios,color: Colors.purpleAccent,size: 20.w,),
                                    Text('EDITAR OS ARTIGOS',style: head5?.copyWith(color: Colors.black,letterSpacing: 2),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                       SizedBox(width: 30.w,),
                        ClipOval(
                          child: Material(
                            // Button color
                            child: InkWell(
                              splashColor: Colors.white, // Splash color
                              onTap: () {},
                              child:  Container(
                                padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.w),
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.r),color: Colors.purpleAccent.shade100),
                                child: Container(
                                    height:40.w,
                                    width: 40.w,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.r),color: Colors.purpleAccent),
                                    child: SvgPicture.asset('assets/icons/focus_icon.svg',width: 15.w,height: 15.w,color:  Colors.white, fit: BoxFit.scaleDown)),
                              ),
                            ),
                            // SizedBox(width: 56, height: 56, child: Icon(Icons.menu)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

               Positioned(
                 bottom: 0,
                 child: Container(
                   padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.w),
                   height:0.5.sh,
                   width: MediaQuery.of(context).size.width,
                   decoration:  BoxDecoration(
                       borderRadius: BorderRadius.only(
                         topLeft: Radius.circular(20.r),
                         topRight: Radius.circular(20.r)
                       ),
                     color: Colors.white,
                   ),
                   child: SingleChildScrollView(
                     scrollDirection: Axis.vertical,
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children:<Widget> [
                         Row(
                           children:<Widget> [
                             SvgPicture.asset('assets/icons/car_icon.svg',height: 30.w,width: 30.w,fit: BoxFit.scaleDown,),
                             SizedBox(width: 10.w,),
                             Expanded(child: Text('Classe 5',style:body1?.copyWith(color: Colors.black),),),
                             Text('59.35 €',style: body1?.copyWith(fontSize: 20,color: Colors.purpleAccent),),
                         ],),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             SizedBox(width: 45.w,),
                             Expanded(child: Text('341 km',style: head4?.copyWith(color: Colors.black26),)),
                             Text('Valor inicial',style:  head4?.copyWith(color: Colors.black26),),
                           ],
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             SizedBox(width: 45.w,),
                             Expanded(child: Text('3 hours 12 mins',style:  head4?.copyWith(color: Colors.black26),)),
                             Text('Por hora',style: head4?.copyWith(color: Colors.black26),),
                             SizedBox(width: 30.w,),
                             Text('70€',style:  sub2?.copyWith(color: Colors.black26),),
                           ],
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: <Widget>[
                             Text('Taxa de envio',style:  sub2?.copyWith(color: Colors.black26),),
                             SizedBox(width: 30.w,),
                             Text('0€',style:  sub2?.copyWith(color: Colors.black26),),
                           ],
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: <Widget>[
                             Text('Taxa de plataforma',style:  sub2?.copyWith(color: Colors.black26),),
                             SizedBox(width: 30.w,),
                             Text('15%',style:  sub2?.copyWith(color: Colors.black26),),
                           ],
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: <Widget>[
                             Text('Itens adicionais',style: sub2?.copyWith(color: Colors.black26),),
                             SizedBox(width: 30.w,),
                             Text('0.0€',style: sub2?.copyWith(color: Colors.black26),),
                           ],
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: <Widget>[
                             Text('Km adicional',style: sub2?.copyWith(color: Colors.black26),),
                             SizedBox(width: 30.w,),
                             Text('320.0€',style:  sub2?.copyWith(color: Colors.black26),),
                           ],
                         ),
                        const Divider(thickness: 1,color: Colors.black26,),
                          SizedBox(height: 10.h,),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children:<Widget> [
                             Column(
                               mainAxisAlignment:MainAxisAlignment.center,
                               children:<Widget> [
                               SvgPicture.asset('assets/icons/truck_icon.svg',color: Colors.purpleAccent,width: 25.w,height: 25.w,fit: BoxFit.scaleDown,),
                             SizedBox(width: 80.w, child:  Text('Aguardando',textAlign:TextAlign.center,style: sub2?.copyWith(color: Colors.black),),),
                             ],),
                             Column(

                               children:<Widget> [
                               SvgPicture.asset('assets/icons/bag_icon.svg',color: Colors.purpleAccent,width: 25.w,height: 25.w,fit: BoxFit.scaleDown,),
                                SizedBox(width: 80.w, child:  Text('1 Serviço/s adicional', textAlign:TextAlign.center,style: sub2?.copyWith(color: Colors.black),))
                             ],),
                             Column(
                               children:<Widget> [
                               SvgPicture.asset('assets/icons/box_icon.svg',color: Colors.purpleAccent,width: 25.w,height: 25.w,fit: BoxFit.scaleDown,),
                              SizedBox(width: 80.w, child: Text('Produto Individual',textAlign:TextAlign.center,style:sub2?.copyWith(color: Colors.black),))
                             ],),
                           ],
                         ),
                         const Divider(thickness: 1,color: Colors.black26,),
                         SizedBox(height: 10.h,),
                         Text('O custo mínimo será de 1 hora/s, podendo variar  de acordocom a duração do trabalho',textAlign:TextAlign.center,style:sub2?.copyWith(color: Colors.purpleAccent),),


                         const Divider(thickness: 1,color: Colors.black26,),
                         SizedBox(height: 10.h,),
                         //Buttons
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children:<Widget> [
                             ElevatedButton(
                               style:ButtonStyle(
                                 padding: MaterialStateProperty.all(  EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h)),
                                 backgroundColor:MaterialStateProperty.all<Color>(Colors.white) ,
                                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                   RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(40.r),),),),
                               onPressed: (){}, child: Text('Cancelar',style:head1?.copyWith(color: Colors.purpleAccent),),),
                             ElevatedButton(
                               style:ButtonStyle(
                                 padding: MaterialStateProperty.all( EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h)),
                                 backgroundColor:MaterialStateProperty.all<Color>(const Color(0xFF6B34BE)) ,
                                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                   RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(40.r),),),),
                               onPressed: (){}, child:Text('Requisitar',style:head1?.copyWith(color: Colors.white),),),

                           ],
                         ),

                         SizedBox(height: 10.h,),

                       ],
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
