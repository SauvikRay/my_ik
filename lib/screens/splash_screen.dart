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
    // ScreenUtil.init(
    //   BoxConstraints(
    //     maxWidth: MediaQuery.of(context).size.width,
    //     maxHeight: MediaQuery.of(context).size.height,
    //   ),
    //   designSize:const Size(428, 926),
    //   context: context,
    //   minTextAdapt: true,
    //   orientation: Orientation.portrait,
    // );

    return SafeArea(
      child: Scaffold(
        body: Container(
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

          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
              Padding(
                   padding:  EdgeInsets.symmetric(horizontal: 40.w,),
                   child: Center(
                        child: Container(
                           padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
                           height: 125.w,
                           width: 125.w,
                           decoration:  BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.0.r),),color: Colors.white),
                           child: Image.asset('assets/icons/icon_kl.png',height: 80.h,width: 54.w,fit: BoxFit.contain,color:const Color(0xFFE305B7)),
                            ),
                          ),
                        ),
                  SizedBox(height: 200.h,),
                  Container(
                    margin:  EdgeInsets.symmetric(horizontal: 40.w,vertical: 20.h),
                    child: Image.asset('assets/icons/by_k_log.png',height: 160.h,width: 160.w,fit: BoxFit.contain,),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
