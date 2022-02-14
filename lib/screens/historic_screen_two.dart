import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class HistoricPageTwo extends StatefulWidget {
  const HistoricPageTwo({Key? key}) : super(key: key);

  @override
  _HistoricPageTwoState createState() => _HistoricPageTwoState();
}

class _HistoricPageTwoState extends State<HistoricPageTwo> {
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
              const Text('Produto Individual',style:TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
              const Text('Adicione os itens que deseja enviar',style:TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.normal,fontSize:16,color: Colors.black26),),
              const Text('Altura (Alt.) | Comprimento (Comp.)',style:TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.bold,fontSize:13,color: Colors.black26),),
             const SizedBox(height: 10,),
              //Item Box
              Flexible(
                child: ListView(
                  children:<Widget> [
                    Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        decoration:BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: const Color(0xFFF1F2F7)),
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:<Widget>[
                            Material(
                              child: InkWell(
                                  onTap: (){} ,child: SvgPicture.asset('assets/icons/edit_icon.svg')),
                            ),
                            const SizedBox(width: 8,),
                            const Text('Item',style:TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.normal,fontSize:18,color: Colors.black),),
                            const SizedBox(width: 10,),
                            const Text('Alt.',style:TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.normal,fontSize:12,color: Colors.black),),
                            InkWell( onTap: (){},child: const Icon(Icons.keyboard_arrow_down_rounded,color: Colors.purpleAccent,size: 25,)),
                            const SizedBox(width: 10,),
                            const Text('Comp.',style:TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.normal,fontSize:12,color: Colors.black),),
                            InkWell( onTap: (){},child: const Icon(Icons.keyboard_arrow_down_rounded,color: Colors.purpleAccent,size: 25,)),
                            const SizedBox(width: 10,),
                            const Text('Qtd.',style:TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.normal,fontSize:12,color: Colors.black),),
                            InkWell( onTap: (){},child: const Icon(Icons.keyboard_arrow_down_rounded,color: Colors.purpleAccent,size: 25,)),
              
                            IconButton(onPressed: (){}, icon:const Icon(Icons.add_box,color: Colors.purpleAccent,),iconSize: 30,),
              
                          ],
                        )
                    ),
              const SizedBox(height: 10,),
                const Divider(thickness: 1,color: Colors.black26,),
                   const SizedBox(height:10),
                    Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                        decoration:BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: const Color(0xFFF1F2F7)),
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:<Widget>[
                            // Material(
                            //   child: InkWell(
                            //       onTap: (){} ,child: SvgPicture.asset('assets/icons/edit_icon.svg')),
                            // ),
                            // const SizedBox(width: 8,),
                            const Text('Test Name',style:TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.normal,fontSize:18,color: Colors.black),),
                            const SizedBox(width: 10,),
                            const Text('3.3.4',style:TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.normal,fontSize:12,color: Colors.black),),
                            InkWell( onTap: (){},child: const Icon(Icons.keyboard_arrow_down_rounded,color: Colors.purpleAccent,size: 25,)),
                            const SizedBox(width: 10,),
                            const Text('7.4-7.8',style:TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.normal,fontSize:12,color: Colors.black),),
                            InkWell( onTap: (){},child: const Icon(Icons.keyboard_arrow_down_rounded,color: Colors.purpleAccent,size: 25,)),
                            const SizedBox(width: 10,),
                            const Text('00',style:TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.normal,fontSize:12,color: Colors.black),),
                            InkWell( onTap: (){},child: const Icon(Icons.keyboard_arrow_down_rounded,color: Colors.purpleAccent,size: 25,)),
              
                            IconButton(onPressed: (){}, icon:const Icon(Icons.delete,color: Colors.purpleAccent,),iconSize: 30,),
              
                          ],
                        )
                    ),
                     const SizedBox(height: 220,),
              
                    MaterialButton(
                onPressed: (){
                },
                child:const Text('Próximo',style: TextStyle(fontFamily:'Poppins',fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.white ),),
                height: 60.0,
                minWidth: double.infinity,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),),
                color:const Color(0xFF6B34BE),
                ),
                const SizedBox(height: 20,),
              
                  ],
                ),
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
