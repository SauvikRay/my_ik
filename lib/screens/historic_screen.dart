import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_ik/widget/app_bar_widget.dart';
import 'package:my_ik/widget/history_widget.dart';
import 'package:my_ik/widget/navigation_widget.dart';
class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor:const Color(0xFFE5E5E5),
          appBar:const MainAppBarWidget(text: 'Histórico',),
          body:Container(
            padding: const EdgeInsets.only(top: 20),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child:
            Column(
              children:[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 240,
                      decoration:   BoxDecoration(
                        borderRadius: const BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
                        gradient: const LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color(0xFFE305B7),
                            Color(0xFF7B61FF),
                          ],),
                        boxShadow: [BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),],
                      ),
                      //total service
                      child: Container(

                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:<Widget>[
                            const Text('Total de Serviços',style: TextStyle(fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),),
                            Row(
                              children:<Widget> [
                                SvgPicture.asset('assets/icons/truck_icon.svg'),
                                const SizedBox(width: 20,),
                                const Text('124',style: TextStyle(fontFamily: 'Poppins', fontSize: 36, fontWeight: FontWeight.bold,color: Colors.white),),

                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    //total investo
                    Container(
                      height: 80,
                      padding: const EdgeInsets.only(right: 20),
                      child: Column(

                        children: const <Widget> [
                          Text('Total Investido',style: TextStyle(fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight.normal,color: Colors.black),),
                          Text('1135.85 €',style: TextStyle(fontFamily: 'Poppins', fontSize: 24, fontWeight: FontWeight.bold,color: Colors.black),),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 400,
               child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 4,
                      itemBuilder: (BuildContext context, int index){
                      return const HistoryWidget();
                      }

                  ),
                ),

            const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
                child: BottomNavigationWidget(),
              ),



              ],


            ),
            
          ),
         
        )
    );
  }
}
