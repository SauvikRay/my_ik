import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyKScreen extends StatefulWidget {
  const MyKScreen({Key? key}) : super(key: key);

  @override
  _MyKScreenState createState() => _MyKScreenState();
}

class _MyKScreenState extends State<MyKScreen> {
  @override
  Widget build(BuildContext context) {

    var w;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
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
                 const Spacer(flex: 6,),
                  Container(
                    padding:EdgeInsets.symmetric(horizontal: 20.w,vertical: 100.h),
                      child: Image.asset('assets/icons/my_k.png',height: 230.w,width: 230.w,)),
                  
                  const Spacer(flex:5 ,),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 40.w,vertical: 20.h),
                    child: Image.asset('assets/icons/by_k_log.png',height: 100.w,width: 100.w,),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
