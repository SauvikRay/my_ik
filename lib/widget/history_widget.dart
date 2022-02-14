import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
class HistoryWidget extends StatefulWidget {
  const HistoryWidget({Key? key}) : super(key: key);

  @override
  _HistoryWidgetState createState() => _HistoryWidgetState();
}

class _HistoryWidgetState extends State<HistoryWidget> {
  @override
  Widget build(BuildContext context) {
    final head4 = Theme.of(context).textTheme.headline4; // 16, normal, black
    final body1 = Theme.of(context).textTheme.bodyText1; //16,Bold,black
    return Column(
      children:<Widget>[
      Container(
      height: 150.h,
      margin:  EdgeInsets.symmetric(horizontal: 20.w),
      padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.white,
      ) ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [
          Row(
            children:<Widget> [
            SvgPicture.asset('assets/icons/location_icon.svg',color:const Color(0xFF2AD684),height: 25.h,width: 25.w,fit: BoxFit.scaleDown,),
             SizedBox(width: 15.w,),
             Text('Lorem ipsum dolor sit amet',style: head4),
          ],),
           Padding(
            padding:  EdgeInsets.only(left: 8.0.w),
            child: Text('|'),
          ),
          Row(children:<Widget> [
            SvgPicture.asset('assets/icons/location_icon.svg',color:const Color(0xFFEA12B9),height: 25.h,width: 25.w,fit: BoxFit.scaleDown,),
             SizedBox(width: 15.w,),
             Text('Lorem ipsum dolor sit amet',style:head4,)
          ],),
          const  Divider(thickness: 1,color: Colors.black26,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:<Widget> [
              SvgPicture.asset('assets/icons/money_euro_circle_icon.svg',height: 32.h,width: 32.w,fit: BoxFit.scaleDown,),
            Text('197.93 €',style:body1,),
            Text('2021-08-02 | 15:53',style:head4),
            IconButton(onPressed: (){},icon:const Icon(Icons.arrow_forward_ios,size: 20,color: Colors.purpleAccent,),),

            ],
          ),
        ],
      ),
    ),
        const SizedBox(height:20),
      ],
    );
  }
}
