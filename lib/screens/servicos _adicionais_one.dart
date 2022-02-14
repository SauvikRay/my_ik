import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class ServiceAdicionaisScreenOne extends StatefulWidget {
  const ServiceAdicionaisScreenOne({Key? key}) : super(key: key);

  @override
  _ServiceAdicionaisScreenOneState createState() => _ServiceAdicionaisScreenOneState();
}

class _ServiceAdicionaisScreenOneState extends State<ServiceAdicionaisScreenOne> {
  @override
  Widget build(BuildContext context) {

    return  SafeArea(
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
          body:Align(
         alignment: Alignment.bottomCenter,
         child:Container(
           padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20 ),
               height: MediaQuery.of(context).size.height*0.8,
               width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                        color: Colors.white),
            child: Stack(
              children:<Widget> [
                   Column(
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
                       const Text('Serviços Adicionais',style:TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                       const Text('Informe os serviços adicionais',style:TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.normal,fontSize:16,color: Colors.black26),),
                       const SizedBox(height: 20,),
                       //Item Box
                       Flexible(
                         child: ListView(
                           children:<Widget> [
                             Container(
                                 padding: const EdgeInsets.symmetric(vertical: 5),
                                 decoration:BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: const Color(0xFFF1F2F7)),
                                 height: 60,
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   children:<Widget>[
                                     Row(
                                       children:<Widget> [
                                       TextButton( child: const Text('Nenhum serviço adicional',style:TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.normal,fontSize:15,color: Colors.black),),
                                         onPressed: (){
                                         },),
                                       //const Icon(Icons.keyboard_arrow_down_rounded,color: Colors.purpleAccent,size: 25,),
                                         PopupMenuButton(
                                           icon:const Icon(Icons.keyboard_arrow_down_rounded,color: Colors.purpleAccent,),
                                             iconSize: 20.0,
                                             itemBuilder: (BuildContext context){
                                               return [
                                                 const PopupMenuItem(
                                                   child: Text('Nenhum serviço adicional'),
                                                 ),
                                                 const PopupMenuItem(
                                                   child: Text('Montagem e desmontagem - 25€'),
                                                 ),
                                                 const PopupMenuItem(
                                                   child: Text('Rolo de filme com 450 metros - 11€'),
                                                 ),
                                                 const PopupMenuItem(
                                                   child: Text('Caixas (cada) - 3.30€'),
                                                 ),
                                                 const PopupMenuItem(
                                                   child: Text('Rolo de papel cartão - 56€'),
                                                 ),
                                                 const PopupMenuItem(
                                                   child: Text('Elevador Extern o - 185€'),
                                                 ),
                       
                                               ];
                                             }
                                         )
                                     ],),
                                     Row(children:const <Widget> [
                                       Text('Qtd.',style:TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.normal,fontSize:10,color: Colors.black),),
                                       Icon(Icons.keyboard_arrow_down_rounded,color: Colors.purpleAccent,size: 20,),
                                     ],),
                                     IconButton(onPressed: (){}, icon:const Icon(Icons.add_box,color: Colors.purpleAccent,),iconSize: 20,),
                       
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

              ],
            ),
         ),
        ),
       



        ));
  }
}
