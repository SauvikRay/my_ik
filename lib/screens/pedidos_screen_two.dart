import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    return SafeArea(
        child: Scaffold(
          body:SizedBox(
            height: MediaQuery.of(context).size.height,
            width:  MediaQuery.of(context).size.width,
            child: Stack(
              alignment: Alignment.center,
              children:<Widget>[
                GoogleMapWidget(),

                //EDITAR
                Positioned(
                  top: 30,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: (){},
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                padding:const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const <Widget>[
                                    Icon(Icons.arrow_back_ios,color: Colors.purpleAccent,size: 20,),
                                    Text('EDITAR OS ARTIGOS',style: TextStyle(letterSpacing: 2.0,fontFamily: 'Poppins',fontSize: 16,color: Colors.black),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                       SizedBox(width: 30.0,),
                        ClipOval(
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
                      ],
                    ),
                  ),
                ),

               Positioned(
                 bottom: 0,
                 child: Container(
                   padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                   height:MediaQuery.of(context).size.height/2,
                   width: MediaQuery.of(context).size.width,
                   decoration: const BoxDecoration(
                       borderRadius: BorderRadius.only(
                         topLeft: Radius.circular(20),
                         topRight: Radius.circular(20)
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
                             SvgPicture.asset('assets/icons/car_icon.svg',height: 30,width: 30,fit: BoxFit.scaleDown,),
                            const SizedBox(width: 10,),
                             const Expanded(child: Text('Classe 5',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Poppins',fontSize: 20,color: Colors.black),),),
                            const Text('59.35 €',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Poppins',fontSize: 20,color: Colors.purpleAccent),),
                         ],),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children:const <Widget>[
                             SizedBox(width: 45,),
                             Expanded(child: Text('341 km',style: TextStyle(fontWeight: FontWeight.normal,fontFamily: 'Poppins',fontSize: 16,color: Colors.black26),)),
                             Text('Valor inicial',style: TextStyle(fontWeight: FontWeight.normal,fontFamily: 'Poppins',fontSize: 16,color: Colors.black26),),
                           ],
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children:const <Widget>[
                             SizedBox(width: 45,),
                             Expanded(child: Text('3 hours 12 mins',style: TextStyle(fontWeight: FontWeight.normal,fontFamily: 'Poppins',fontSize: 16,color: Colors.black26),)),
                             Text('Por hora',style: TextStyle(fontWeight: FontWeight.normal,fontFamily: 'Poppins',fontSize: 12,color: Colors.black26),),
                             SizedBox(width: 30,),
                             Text('70€',style: TextStyle(fontWeight: FontWeight.normal,fontFamily: 'Poppins',fontSize: 12,color: Colors.black26),),
                           ],
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children:const <Widget>[
                             Text('Taxa de envio',style: TextStyle(fontWeight: FontWeight.normal,fontFamily: 'Poppins',fontSize: 12,color: Colors.black26),),
                             SizedBox(width: 30,),
                             Text('0€',style: TextStyle(fontWeight: FontWeight.normal,fontFamily: 'Poppins',fontSize: 12,color: Colors.black26),),
                           ],
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children:const <Widget>[
                             Text('Taxa de plataforma',style: TextStyle(fontWeight: FontWeight.normal,fontFamily: 'Poppins',fontSize: 12,color: Colors.black26),),
                             SizedBox(width: 30,),
                             Text('15%',style: TextStyle(fontWeight: FontWeight.normal,fontFamily: 'Poppins',fontSize: 12,color: Colors.black26),),
                           ],
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children:const <Widget>[
                             Text('Itens adicionais',style: TextStyle(fontWeight: FontWeight.normal,fontFamily: 'Poppins',fontSize: 12,color: Colors.black26),),
                             SizedBox(width: 30,),
                             Text('0.0€',style: TextStyle(fontWeight: FontWeight.normal,fontFamily: 'Poppins',fontSize: 12,color: Colors.black26),),
                           ],
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children:const <Widget>[
                             Text('Km adicional',style: TextStyle(fontWeight: FontWeight.normal,fontFamily: 'Poppins',fontSize: 12,color: Colors.black26),),
                             SizedBox(width: 30,),
                             Text('320.0€',style: TextStyle(fontWeight: FontWeight.normal,fontFamily: 'Poppins',fontSize: 12,color: Colors.black26),),
                           ],
                         ),
                        const Divider(thickness: 1,color: Colors.black26,),
                         const SizedBox(height: 10.0,),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children:<Widget> [
                             Column(
                               mainAxisAlignment:MainAxisAlignment.center,
                               children:<Widget> [
                               SvgPicture.asset('assets/icons/truck_icon.svg',color: Colors.purpleAccent,width: 25,height: 25,fit: BoxFit.scaleDown,),
                            const SizedBox(width: 80, child:  Text('Aguardando',textAlign:TextAlign.center,style: TextStyle(fontWeight: FontWeight.normal,fontFamily: 'Poppins',fontSize: 12,color: Colors.black),))
                             ],),
                             Column(

                               children:<Widget> [
                               SvgPicture.asset('assets/icons/bag_icon.svg',color: Colors.purpleAccent,width: 25,height: 25,fit: BoxFit.scaleDown,),
                                 const  SizedBox(width: 80, child:  Text('1 Serviço/s adicional', textAlign:TextAlign.center,style: TextStyle(fontWeight: FontWeight.normal,fontFamily: 'Poppins',fontSize: 12,color: Colors.black,),))
                             ],),
                             Column(
                               children:<Widget> [
                               SvgPicture.asset('assets/icons/box_icon.svg',color: Colors.purpleAccent,width: 25,height: 25,fit: BoxFit.scaleDown,),
                            const SizedBox(width: 80, child: Text('Produto Individual',textAlign:TextAlign.center,style: TextStyle(fontWeight: FontWeight.normal,fontFamily: 'Poppins',fontSize: 12,color: Colors.black),))
                             ],),
                           ],
                         ),
                         const Divider(thickness: 1,color: Colors.black26,),
                         const SizedBox(height: 10.0,),
                         const Text('O custo mínimo será de 1 hora/s, podendo variar  de acordocom a duração do trabalho',textAlign:TextAlign.center,style:TextStyle(fontFamily: 'Poppins', fontSize: 12, fontWeight: FontWeight.normal,color: Colors.purpleAccent),),


                         const Divider(thickness: 1,color: Colors.black26,),
                         const SizedBox(height: 10.0,),
                         //Buttons
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children:<Widget> [
                             ElevatedButton(
                               style:ButtonStyle(
                                 padding: MaterialStateProperty.all( const EdgeInsets.symmetric(horizontal: 20,vertical: 10)),
                                 backgroundColor:MaterialStateProperty.all<Color>(Colors.white) ,
                                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                   RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(40),),),),
                               onPressed: (){}, child:const Text('Cancelar',style:TextStyle(fontFamily: 'Poppins', fontSize: 18, fontWeight: FontWeight.bold,color: Colors.purpleAccent),),),
                             ElevatedButton(
                               style:ButtonStyle(
                                 padding: MaterialStateProperty.all( const EdgeInsets.symmetric(horizontal: 20,vertical: 10)),
                                 backgroundColor:MaterialStateProperty.all<Color>(const Color(0xFF6B34BE)) ,
                                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                   RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(40),),),),
                               onPressed: (){}, child:const Text('Requisitar',style:TextStyle(fontFamily: 'Poppins', fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),),),

                           ],
                         ),

                         const SizedBox(height: 30.0,),

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
