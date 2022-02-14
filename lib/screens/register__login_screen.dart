import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ik/screens/login_screen.dart';
import 'package:my_ik/widget/text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterLoginScreen extends StatefulWidget {
  const RegisterLoginScreen({Key? key}) : super(key: key);

  @override
  _RegisterLoginScreenState createState() => _RegisterLoginScreenState();
}

class _RegisterLoginScreenState extends State<RegisterLoginScreen>with TickerProviderStateMixin {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return SafeArea(
      child: Scaffold(
        //resizeToAvoidBottomInset: false,
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
              ],
            ),
          ),
          child: SingleChildScrollView(
            child:
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                     SizedBox(height:20.h),
                    //TODO: Container for logo
                    SizedBox(
                      child: Image.asset('assets/my_k.png',fit: BoxFit.scaleDown,width:100.w ,height: 100.w,),
                    ),
                     SizedBox(height:20.h),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.w),
                      height: 0.72.sh,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.r),
                            topRight: Radius.circular(20.r),
                          ),
                          color: Colors.white),
                      alignment: Alignment.bottomCenter,
                      child:   Container(
                        margin: EdgeInsets.symmetric(vertical: 20.h),
                        child: Column(
                          children: [
                            TabBar(
                              padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
                              controller: _tabController,
                              tabs: const<Widget> [
                              Text('Registar'),
                              Text('Login'),
                              ],
                            ),
                            Flexible(
                             fit: FlexFit.loose,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                child: TabBarView(
                                  controller: _tabController,
                                  children:const <Widget> [
                                    TextInputForm(),
                                    LoginScreen(),
                                  ],
                                ),
                              ),

                            ),
                          ],
                        ),
                      ),


                      //TODO: white Container,
                    ),

                  ],
                ),
              ),

          ),
        ),
      ),
    );
  }
}

// class SideCurvedTabIndicator extends Decoration{
//
//   final Color color;
//   final double width;
//   final double radius;
//   SideCurvedTabIndicator({required this.color, required this.width,required this.radius});
//   @override
//   BoxPainter createBoxPainter([ VoidCallback onChanged]) {
//     // TODO: implement createBoxPainter
//  return _CurvedLinePainter(color:color,width:width,radius:radius);
//   }
//
//
// }
// class _CurvedLinePainter extends BoxPainter{
//   final Color color;
//   final double width;
//   final double radius;
//   _CurvedLinePainter({required this.color, required this.width,required this.radius});
//   @override
//   @override
//   void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
//     // TODO: implement paint
//     canvas.drawLine(p1, p2, paint)
//   }
//
// }

