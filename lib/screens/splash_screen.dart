import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFFFF3CBE),
                  Color(0xFFE305B7),
                  Color(0xFF6B34BE),
                ],),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
             const Spacer(flex: 6,),
            Container(
               padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
               height: 100.w,
               width: 100.w,
               decoration:  BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.0.r),),color: Colors.white),
               child: Image.asset('assets/icons/icon_kl.png',height: 70.h,width: 50.w,fit: BoxFit.contain,color:const Color(0xFFE305B7)),
                ),
          const Spacer(flex:5 ,),
              
          Container(
            margin:  EdgeInsets.symmetric(horizontal: 40.w,),
            child: Image.asset('assets/icons/by_k_log.png',height: 100.w,width: 100.w,fit: BoxFit.contain,),
          )
            ],
          ),
        ),
      ),
    );
  }
}
