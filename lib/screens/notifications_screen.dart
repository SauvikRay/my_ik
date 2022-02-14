import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_ik/widget/app_bar_widget.dart';
import 'package:my_ik/widget/navigation_widget.dart';
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:const Color(0xFFE5E5E5),
        appBar: const MainAppBarWidget(text:' Notificações',),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Center(
            child: Stack(
              children:<Widget>[
                ListView(
                  children:<Widget> [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.purpleAccent),
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:const <Widget> [
                              Text('Lorem ipsum dolor',style: TextStyle(fontFamily: 'Poppins',fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.white),),
                              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.',style: TextStyle(fontFamily: 'Poppins',fontSize: 16.0,color: Colors.white),),
                            ],
                          ) ,

                        ),
                        const SizedBox(height: 10.0,),
                        const Text('2022-01-19| 15:46',style: TextStyle(fontFamily: 'Poppins',fontSize: 14.0,fontWeight: FontWeight.normal,color: Colors.black26),),
                      ],

                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.purpleAccent),
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:const <Widget> [
                              Text('Lorem ipsum dolor',style: TextStyle(fontFamily: 'Poppins',fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.white),),
                              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.',style: TextStyle(fontFamily: 'Poppins',fontSize: 16.0,color: Colors.white),),
                            ],
                          ) ,

                        ),
                        const SizedBox(height: 10.0,),
                        const Text('2022-01-19| 15:30',style: TextStyle(fontFamily: 'Poppins',fontSize: 14.0,fontWeight: FontWeight.normal,color: Colors.black26),),
                      ],

                    ),
                  ],
                ),
             const Positioned(
                  bottom: 30,
                    child: BottomNavigationWidget(),
             ),
              ],

            ),
          ),
        ),
      ),
    );
  }
}
