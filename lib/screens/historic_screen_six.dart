import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class HistoricPageSix extends StatefulWidget {
  const HistoricPageSix({Key? key}) : super(key: key);

  @override
  _HistoricPageSixState createState() => _HistoricPageSixState();
}

class _HistoricPageSixState extends State<HistoricPageSix> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor:const Color(0xFFE5E5E5),
            appBar: AppBar(
              titleTextStyle:const TextStyle(fontFamily: 'Poppins', fontSize: 24, fontWeight: FontWeight.bold,color: Colors.black),
              centerTitle: true,
              elevation: 0,
              backgroundColor: Colors.transparent,
              iconTheme:const IconThemeData(color: Colors.purpleAccent,),
              leading: IconButton(splashRadius: 20, onPressed: (){Navigator.pop(context);} ,icon:SvgPicture.asset('assets/icons/arrow_back.svg')),
            ),
          body: Container(
            alignment: Alignment.bottomCenter,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              height: MediaQuery.of(context).size.height/1.3,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  color: Colors.white),
              alignment: Alignment.bottomCenter,
              //TODO: white Container,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
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
                     const Text('Preço das classes e serviços',style:TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                     const Text('Classes de veículos',style:TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.normal,fontSize:16,color: Colors.black26),),
                     const Divider(thickness: 1,color: Colors.black26,),
                     Card(
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                       elevation: 5.0,

                       child: Container(
                         padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                         child: Column(
                           children: [
                             Row(
                               children:<Widget> [
                                 SvgPicture.asset('assets/icons/car_icon.svg',height: 30,width: 30,fit: BoxFit.scaleDown,),
                                 const SizedBox(width: 10,),
                                 const Expanded(child: Text('Classe 1',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Poppins',fontSize: 20,color: Colors.black),),),
                                 const Text('55 €',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Poppins',fontSize: 20,color: Colors.purpleAccent),),
                               ],),
                             Row(
                               children:const <Widget> [
                                 SizedBox(width: 40,),
                                 Expanded(child: Text('25€/hora + 15%',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Poppins',fontSize: 20,color: Colors.purpleAccent),),),
                                 Text('/hora',style: TextStyle(fontWeight: FontWeight.normal,fontFamily: 'Poppins',fontSize: 14,color: Colors.black26),),
                             ],),
                             const Divider(thickness: 1,color: Colors.black26,),
                             Row(
                               children: <Widget>[
                                 Expanded(
                                   child: Column(
                                     children:const <Widget> [
                                       Text('Altura max.',style: TextStyle(fontWeight: FontWeight.normal,fontFamily: 'Poppins',fontSize: 12,color: Colors.black),),
                                       Text('1.6 m',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Poppins',fontSize: 16,color: Colors.black),),
                                     ],
                                   ),
                                 ),
                                 const VerticalDivider(
                                   width: 20,
                                   thickness: 1,
                                   indent: 20,
                                   endIndent: 0,
                                   color: Colors.grey,
                                 ),
                                 Expanded(
                                   child: Column(
                                     children:const <Widget> [
                                       Text('Comprimento max.',style: TextStyle(fontWeight: FontWeight.normal,fontFamily: 'Poppins',fontSize: 12,color: Colors.black),),
                                       Text('2.4 m',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Poppins',fontSize: 16,color: Colors.black),),
                                     ],
                                   ),
                                 ),
                               ],
                             ),
                           ],
                         ),
                       ),

                     ),
                     const SizedBox(height: 10.0,),
                     Card(
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                       elevation: 5.0,

                       child: Container(
                         padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                         child: Column(
                           children: [
                             Row(
                               children:<Widget> [
                                 SvgPicture.asset('assets/icons/car_icon.svg',height: 30,width: 30,fit: BoxFit.scaleDown,),
                                 const SizedBox(width: 10,),
                                 const Expanded(child: Text('Classe 1',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Poppins',fontSize: 20,color: Colors.black),),),
                                 const Text('55 €',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Poppins',fontSize: 20,color: Colors.purpleAccent),),
                               ],),
                             Row(
                               children:const <Widget> [
                                 SizedBox(width: 40,),
                                 Expanded(child: Text('25€/hora + 15%',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Poppins',fontSize: 20,color: Colors.purpleAccent),),),
                                 Text('/hora',style: TextStyle(fontWeight: FontWeight.normal,fontFamily: 'Poppins',fontSize: 14,color: Colors.black26),),
                               ],),
                             const Divider(thickness: 1,color: Colors.black26,),
                             Row(
                               children: <Widget>[
                                 Expanded(
                                   child: Column(
                                     children:const <Widget> [
                                       Text('Altura max.',style: TextStyle(fontWeight: FontWeight.normal,fontFamily: 'Poppins',fontSize: 12,color: Colors.black),),
                                       Text('1.6 m',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Poppins',fontSize: 16,color: Colors.black),),
                                     ],
                                   ),
                                 ),
                                 const VerticalDivider(
                                   width: 20,
                                   thickness: 1,
                                   indent: 20,
                                   endIndent: 0,
                                   color: Colors.grey,
                                 ),
                                 Expanded(
                                   child: Column(
                                     children:const <Widget> [
                                       Text('Comprimento max.',style: TextStyle(fontWeight: FontWeight.normal,fontFamily: 'Poppins',fontSize: 12,color: Colors.black),),
                                       Text('2.4 m',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Poppins',fontSize: 16,color: Colors.black),),
                                     ],
                                   ),
                                 ),
                               ],
                             ),
                           ],
                         ),
                       ),

                     ),
                     const SizedBox(height: 20.0,),
                     const Text('Preço das classes e serviços',style:TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                     const Text('Classes de veículos',style:TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.normal,fontSize:16,color: Colors.black26),),
                     const SizedBox(height: 15.0,),
                     Card(
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                       elevation: 5.0,

                       child: Container(
                         padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 15),
                         child: Row(
                           children:const <Widget> [

                             SizedBox(width: 10,),
                             Expanded(child: Text('Montagem e desmontagem',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Poppins',fontSize: 18,color: Colors.black),),),
                             Text('25 €',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Poppins',fontSize: 18,color: Colors.purpleAccent),),
                           ],),
                       ),

                     ),
                     const SizedBox(height: 10.0,),
                     Card(
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                       elevation: 5.0,

                       child: Container(
                         padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 15),
                         child: Row(
                           children:const <Widget> [

                             SizedBox(width: 10,),
                             Expanded(child: Text('Rolo de filme com 450metros',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Poppins',fontSize: 18,color: Colors.black),),),
                             Text('11 €',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Poppins',fontSize: 18,color: Colors.purpleAccent),),
                           ],),
                       ),

                     ),


                   ],
                 ),
              ),


            ),
          ),



    ),);
  }
}
