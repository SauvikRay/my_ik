import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyKScreen extends StatefulWidget {
  const MyKScreen({Key? key}) : super(key: key);

  @override
  _MyKScreenState createState() => _MyKScreenState();
}

class _MyKScreenState extends State<MyKScreen> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFFF3CBE),
                  Color(0xFFE305B7),
                  Color(0xFF6B34BE),
                ],),
          ),

          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                  Container(
                    padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 100),
                      child: Image.asset('assets/icons/my_k.png',height: 230,width: 230,)),

                  Container(
                    margin:const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                    child: Image.asset('assets/icons/by_k_log.png',height: 160,width: 160,),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
