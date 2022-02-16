import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),
        height: 60.h,
        width: 0.9.sw,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(40.r),color: Colors.white),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 60.h,
              child: MaterialButton(
                minWidth: 70.w,
                onPressed: (){
                  setState(() {

                  });
                },
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:<Widget> [
                    SvgPicture.asset('assets/icons/home_icon.svg',width: 20.w,height: 20.h,color:  Colors.black ,),
                    Text('Home', style: TextStyle(fontSize: 12.sp,  fontWeight: FontWeight.normal, color: Colors.black ),)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 60.h,
              child: MaterialButton(
                minWidth: 70.w,
                onPressed: (){
                  setState(() {

                  });

                },
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:<Widget> [
                    SvgPicture.asset('assets/icons/pedidos_icon.svg',width: 20.w,height: 20.h,color:Colors.black ),
                    Text('Pedidos',style: TextStyle(fontSize: 12.sp,fontWeight:FontWeight.normal,color:Colors.black ),)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 60.h,
              child: MaterialButton(
                minWidth: 70.w,
                onPressed: (){
                  setState(() {

                  });

                },
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:<Widget> [
                    SvgPicture.asset('assets/icons/perfil_line_icon.svg',width: 20.w,height: 20.h,color:Colors.black,),
                    Text('Perfil',style: TextStyle(fontSize: 12.sp,fontWeight:FontWeight.normal,color: Colors.black ),)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 60.h,
              child: MaterialButton(
                minWidth: 70.w,
                onPressed: (){
                  setState(() {

                  });

                },
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:<Widget> [
                    SvgPicture.asset('assets/icons/menu_icon.svg',width: 20.w,height: 20.h,color:Colors.black,),
                    Text('Menu',style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.normal,color:Colors.black ),)
                  ],
                ),
              ),
            ),
          ],
        ),
      );
  }
}
