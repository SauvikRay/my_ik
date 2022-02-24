import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    double height = MediaQuery.of(context).size.height;
    final head4 = Theme.of(context).textTheme.headline4; // 16, normal, black
    return SafeArea(
        child: Scaffold(
          backgroundColor:const Color(0xFFE5E5E5),
          appBar: MainAppBarWidget(text: 'Histórico',),
          body:Container(
            height: double.infinity,
            width: double.infinity,
            child:Column(
              children:[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 90.h,
                      width: 200.h,
                      decoration:   BoxDecoration(
                        borderRadius:  BorderRadius.only(topRight: Radius.circular(20.r),bottomRight: Radius.circular(20)),
                        gradient: const LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color(0xFFE305B7),
                            Color(0xFF7B61FF),
                          ],),
                        boxShadow: [BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5.r,
                          blurRadius: 7.r,
                          offset: const Offset(0, 3),
                        ),],
                      ),
                      //total service
                      child: Align(alignment: Alignment.center,
                        child: Container(
                          padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 5.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:<Widget>[
                              const Text('Total de Serviços',style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),),
                              Row(
                                children:<Widget> [
                                  SvgPicture.asset('assets/icons/truck_icon.svg'),
                                  SizedBox(width: 20.w,),
                                  const Text('124',style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold,color: Colors.white),),

                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    //total investo
                    Container(
                      height: 80.h,
                      padding:  EdgeInsets.only(right: 20.w),
                      child: Column(
                        children:  <Widget> [
                          Text('Total Investido',style: head4),
                          Text('1135.85 €',style: TextStyle( fontSize: 24.sp, fontWeight: FontWeight.bold,color: Colors.black),),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h,),
                SizedBox(
                 height: (height<600) ? 300.h : 400.h,
                  width: double.infinity,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index){
                        return const HistoryWidget();
                      }

                  ),
                ),
              ],
            ),
            
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
         // floatingActionButton: BottomNavigationWidget(),
        )
    );
  }
}
