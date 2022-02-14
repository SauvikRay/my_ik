import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_ik/screens/splash_screen.dart';
import 'package:my_ik/widget/google%20_map_widget.dart';
import 'package:my_ik/widget/navigation_widget.dart';

import 'menu_sccrren.dart';
import 'my_ik_screen.dart';


class PerfilScreen extends StatefulWidget {
  const PerfilScreen({Key? key}) : super(key: key);

  @override
  _PerfilScreenState createState() => _PerfilScreenState();
}

class _PerfilScreenState extends State<PerfilScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:const Color(0xFFE5E5E5),
        appBar: AppBar(
          title:const Text('Perfil'),
          titleTextStyle:const TextStyle(fontFamily: 'Poppins', fontSize: 24, fontWeight: FontWeight.bold,color: Colors.black),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme:const IconThemeData(color: Colors.purpleAccent,),
          leading: IconButton(splashRadius: 20, onPressed: (){Navigator.pop(context);} ,icon:SvgPicture.asset('assets/icons/arrow_back.svg')),


        ),
        body:Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Center(
            child: Stack(
              children:<Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    //profile Column
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),border:Border.all(color: Colors.white,width: 5.0),),
                          child: SvgPicture.asset('assets/icons/perfil_line_icon.svg',color:const Color(0XFFBDBEC6),),
                        ),
                        const Text('Carlos',style: TextStyle(fontFamily: 'Poppins', fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black),),
                        const Text('nome@example.com',style: TextStyle(fontFamily: 'Poppins', fontSize: 14,color: Colors.black),),
                      ],
                    ),
                    const Divider(color: Colors.black26,thickness: 1,),
                    const SizedBox(height: 10,),
                    //Name
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:const <Widget> [
                        Text('Name',style: TextStyle(fontFamily: 'Poppins', fontSize: 16, color: Colors.black26),),
                      ],
                    ),
                    //
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                          decoration:BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: const Color(0xFFEAEBF2)),
                          height: 60,
                          width:MediaQuery.of(context).size.width-40,
                          child:const Text('Carlos',
                            style:TextStyle(fontFamily:'Poppins',fontSize: 18.0,fontStyle: FontStyle.normal ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    //Email
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:const <Widget> [
                        Text('Email',style: TextStyle(fontFamily: 'Poppins', fontSize: 16, color: Colors.black26),),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                          decoration:BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: const Color(0xFFEAEBF2)),
                          height: 60,
                          width:MediaQuery.of(context).size.width-40,
                          child:const Text('nome@example.com',
                            style:TextStyle(fontFamily:'Poppins',fontSize: 18.0,fontStyle: FontStyle.normal ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    //Mobile
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:const <Widget> [
                        Text('Mobile',style: TextStyle(fontFamily: 'Poppins', fontSize: 16, color: Colors.black26),),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                          decoration:BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: const Color(0xFFEAEBF2)),
                          height: 60,
                          width:MediaQuery.of(context).size.width-40,
                          child:Row(
                            children:<Widget> [
                              Image.asset('assets/icons/flag_image.png'),
                              const SizedBox(width: 5.0,),
                              const Expanded(
                                child: Text('+351 123 456 798',
                                  style:TextStyle(fontFamily:'Poppins',fontSize: 18.0,fontWeight: FontWeight.bold ),
                                ),
                              ),
                              SvgPicture.asset('assets/icons/right_mark.svg')
                            ],
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
             const Positioned(
                  bottom: 30,
                    child:BottomNavigationWidget(),
                ),

              ],
            ),

          ),
        ),
      ),
    );
  }
}
