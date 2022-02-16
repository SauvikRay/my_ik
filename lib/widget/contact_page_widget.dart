import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../model/contact_model.dart';
class ContactPageWidget extends StatelessWidget {
   ContactPageWidget({Key? key, this.conHeight,this.contColor,this.aText,this.sText,this.bText,this.bIcon,this.gradient}) : super(key: key);
   // ContactItem? contactItem;
   double? conHeight;
   Color? contColor;
   String? aText;
   String? sText;
   String? bText;
   bool? gradient;
   String? bIcon;


  @override
  Widget build(BuildContext context) {
    final head4 = Theme.of(context).textTheme.headline4; // 16, normal
    final head2 = Theme.of(context).textTheme.headline2; //Normal 18
    return Container(
      height:conHeight?? 100.h,
      width: double.infinity, //MediaQuery.of(context).size.width-40.w,
      padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 5.h),
      margin:  EdgeInsets.symmetric(horizontal: 15.w,),
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: contColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2.r,
            blurRadius: 10.r,
            offset: Offset(0, 5),
          ),
        ],
        gradient:(gradient==true) ? const LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Color(0xFFE305B7),
            Color(0xFF7B61FF),
          ],):null,

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:<Widget> [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  <Widget>[
              if(sText != null) Text(sText!,style: head4?.copyWith(color: Colors.white),),
              if(bText != null)  Text(bText!,style: TextStyle( fontSize: 30.sp, fontWeight: FontWeight.bold,color: Colors.white),),
            if(aText!=null) SizedBox(height: 80.h,width:250.w ,child:  Text(aText!,style: head2?.copyWith(color: Colors.white),) ),
            ],),
          if(bIcon != null)  SvgPicture.asset('assets/icons/${bIcon!}'),
        ],
      ),
    );
  }
}
