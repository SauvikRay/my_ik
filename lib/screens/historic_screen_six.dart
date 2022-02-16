import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
class HistoricPageSix extends StatefulWidget {
  const HistoricPageSix({Key? key}) : super(key: key);

  @override
  _HistoricPageSixState createState() => _HistoricPageSixState();
}

class _HistoricPageSixState extends State<HistoricPageSix> {
  @override
  Widget build(BuildContext context) {
        final head1 = Theme.of(context).textTheme.headline1; // Bold 18
        final head2 = Theme.of(context).textTheme.headline2; //Normal 18
        final head3 = Theme.of(context).textTheme.headline3;//Bold 16
        final head4 = Theme.of(context).textTheme.headline4; // 16, normal
        final head5 = Theme.of(context).textTheme.headline5; // 14, normal
        final body1 = Theme.of(context).textTheme.bodyText1; //20,Bold
        final body2 = Theme.of(context).textTheme.bodyText2; //16,normal, ash
        final sub1 = Theme.of(context).textTheme.subtitle1; //12,bold,
        final sub2 = Theme.of(context).textTheme.subtitle2; //12,normal,

    return SafeArea(
        child: Scaffold(
          backgroundColor:const Color(0xFFE5E5E5),
            appBar: AppBar(
              leading: IconButton(splashRadius: 20.r, onPressed: (){Navigator.pop(context);} ,icon:SvgPicture.asset('assets/icons/arrow_back.svg')),
            ),
          body: Container(
            alignment: Alignment.bottomCenter,
            height: double.infinity,
            width:  double.infinity,
            child: Container(
              padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
              height: 0.8.sh,
              width:double.infinity,
              decoration:  BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r),
                  ),
                  color: Colors.white),
              alignment: Alignment.bottomCenter,
              //TODO: white Container,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children:<Widget> [
                  //Cross Button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 36.w,
                        height: 36.w,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.r),border: Border.all(width: 2,color: Colors.black),),
                        child: IconButton(onPressed: (){},icon: SvgPicture.asset('assets/icons/cross_icon.svg',),iconSize: 30.w,),
                      ),
                    ],
                  ),
                  Text('Preço das classes e serviços',style:body1?.copyWith(color: Colors.black),),
                  Text('Classes de veículos',style:head4?.copyWith(color: Colors.black26),),
                  const Divider(thickness: 1,color: Colors.black26,),
                 SizedBox(height: 10.h,),
                  Flexible(
                    child: ListView(
                      children:<Widget> [
                         Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r),),
                    elevation: 5.0,

                    child: Container(
                      padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                      child: Column(
                        children: [
                          Row(
                            children:<Widget> [
                              SvgPicture.asset('assets/icons/car_icon.svg',height: 30.w,width: 30.w,fit: BoxFit.scaleDown,),
                              SizedBox(width: 10.w,),
                              Expanded(child: Text('Classe 1',style: head1?.copyWith(color: Colors.black),),),
                               Text('55 €',style:head1?.copyWith(color: Colors.purpleAccent),),
                            ],),
                          Row(
                            children: <Widget> [
                              SizedBox(width: 40.w,),
                              Expanded(child: Text('25€/hora + 15%',style: head1?.copyWith(color: Colors.purpleAccent),),),
                              Text('/hora',style: head5?.copyWith(color: Colors.black26),),
                          ],),
                          const Divider(thickness: 1,color: Colors.black26,),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  children: <Widget> [
                                    Text('Altura max.',style:sub2?.copyWith(color: Colors.black),),
                                    Text('1.6 m',style:body2?.copyWith(color: Colors.black),),
                                  ],
                                ),
                              ),
                               VerticalDivider(
                                width: 20.w,
                                thickness: 1,
                                indent: 20,
                                endIndent: 0,
                                color: Colors.grey,
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget> [
                                    Text('Comprimento max.',style: sub2?.copyWith(color: Colors.black),),
                                    Text('2.4 m',style:body2?.copyWith(color: Colors.black),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                  ),   
                        SizedBox(height: 10.h,),
                         Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r),),
                           elevation: 5.0,

                    child: Container(
                      padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                      child: Column(
                        children: [
                          Row(
                            children:<Widget> [
                              SvgPicture.asset('assets/icons/car_icon.svg',height: 30.w,width: 30.w,fit: BoxFit.scaleDown,),
                              SizedBox(width: 10.w,),
                              Expanded(child: Text('Classe 1',style: head1?.copyWith(color: Colors.black),),),
                               Text('55 €',style:head1?.copyWith(color: Colors.purpleAccent),),
                            ],),
                          Row(
                            children: <Widget> [
                              SizedBox(width: 40.w,),
                              Expanded(child: Text('25€/hora + 15%',style: head1?.copyWith(color: Colors.purpleAccent),),),
                              Text('/hora',style: head5?.copyWith(color: Colors.black26),),
                          ],),
                          const Divider(thickness: 1,color: Colors.black26,),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  children: <Widget> [
                                    Text('Altura max.',style:sub2?.copyWith(color: Colors.black),),
                                    Text('1.6 m',style:body2?.copyWith(color: Colors.black),),
                                  ],
                                ),
                              ),
                               VerticalDivider(
                                width: 20.w,
                                thickness: 1,
                                indent: 20,
                                endIndent: 0,
                                color: Colors.grey,
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget> [
                                    Text('Comprimento max.',style: sub2?.copyWith(color: Colors.black),),
                                    Text('2.4 m',style:body2?.copyWith(color: Colors.black),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                  ),
                 
                  SizedBox(height: 20.h,),
                  Text('Preço das classes e serviços',textAlign: TextAlign.center,style:body1?.copyWith(color: Colors.black),),
                   Text('Classes de veículos',textAlign: TextAlign.center,style:body2?.copyWith(color: Colors.black26),),
                  SizedBox(height: 15.h,),
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                    elevation: 5.0,
                    child: Container(
                      padding:  EdgeInsets.symmetric(horizontal: 5.w,vertical: 15.h),
                      child: Row(
                        children: <Widget> [
                          SizedBox(width: 10.w,),
                          Expanded(child: Text('Montagem e desmontagem',style:body1?.copyWith(color: Colors.black),),),
                          Text('25 €',style:body1?.copyWith(color: Colors.purpleAccent),),
                        ],),
                    ),

                  ),
                  SizedBox(height: 10.h,),
                   Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                    elevation: 5.0,
                    child: Container(
                      padding:  EdgeInsets.symmetric(horizontal: 5.w,vertical: 15.h),
                      child: Row(
                        children: <Widget> [
                          SizedBox(width: 10.w,),
                          Expanded(child: Text('Rolo de filme com 450metros',style:body1?.copyWith(color: Colors.black),),),
                          Text('11 €',style:body1?.copyWith(color: Colors.purpleAccent),),
                        ],),
                    ),

                  ),


                      ],
                    ),
                    ),
                ],
              ),
            ),
          ),
    ),);
  }
}
