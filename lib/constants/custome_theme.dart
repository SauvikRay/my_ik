import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomTheme {
  BuildContext? context;


  static ThemeData get mainTheme {
    return ThemeData(
      primaryColor:const Color(0xFFEA12B9) ,
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Poppins',
      textTheme: 
         TextTheme(
        //  final head1 = Theme.of(context).textTheme.headline1; // Bold 18
        //  final head2 = Theme.of(context).textTheme.headline2; //Normal 18 ash
        //  final head3 = Theme.of(context).textTheme.headline3;//Bold 16 purple
        // final head4 = Theme.of(context).textTheme.headline4; // 16, normal, black
        // final body1 = Theme.of(context).textTheme.bodyText1; //16,Bold,black
        // final body2 = Theme.of(context).textTheme.bodyText2; //16,normal, ash
        // final sub1 = Theme.of(context).textTheme.subtitle1; //14,normal, black
        // final sub2 = Theme.of(context).textTheme.subtitle2; //14,normal, purple


           headline1: TextStyle(fontSize:18.sp,fontWeight: FontWeight.bold,color:Colors.black,),
           headline2: TextStyle(fontSize:18.sp,fontWeight: FontWeight.normal,color:const Color(0xFFB0B0B0),),
           headline3: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: Colors.purpleAccent),
           headline4: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.normal,color: Colors.black),
           headline5: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.normal,color: Colors.black),
           headline6: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold,color: Colors.purpleAccent),
           bodyText1: TextStyle(fontSize:16.sp,fontWeight: FontWeight.bold,color: Colors.black),
           bodyText2: TextStyle(fontSize:14.sp,fontWeight: FontWeight.normal,color:const Color(0xFFB0B0B0),),
           //:TextStyle( fontSize: 14.sp, fontWeight: FontWeight.normal,color: Colors.black),
           subtitle1: TextStyle( fontSize: 14.sp, fontWeight: FontWeight.bold,color: Colors.black),
           subtitle2: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.normal,color: Colors.purpleAccent),

           button: TextStyle(fontSize:18.sp,fontWeight: FontWeight.bold,color: Colors.white),


        ),
          //TabBar Theme
          tabBarTheme: TabBarTheme(
            labelColor: const Color(0xFFEA12B9),
            labelStyle: TextStyle(fontSize:18.sp,fontWeight: FontWeight.bold),
            labelPadding: EdgeInsets.only(bottom: 20.h),
            unselectedLabelColor: Colors.black,
            unselectedLabelStyle: TextStyle(fontSize:18.sp,fontWeight: FontWeight.bold),
            //indicatorWeight: 5.h,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 5.h,color: Colors.purpleAccent)
            ),

          ),
          //AppBar Theme
          appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold,color: Colors.black),
          iconTheme:const IconThemeData(color: Colors.purpleAccent,),
          
          ),

          
          
        
      //   buttonTheme: ButtonThemeData(
          
      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      //   buttonColor:const Color(0xFF6B34BE), 
      //   height: 60,
      //   minWidth: double.infinity,
      // ),
      
    
    );
  }
  
}