import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_ik/constants/app_color.dart';

import '../widget/material_button.dart';

class HistoricPageThree extends StatefulWidget {
  const HistoricPageThree({Key? key}) : super(key: key);

  @override
  _HistoricPageThreeState createState() => _HistoricPageThreeState();
}

class _HistoricPageThreeState extends State<HistoricPageThree> {
  @override
  Widget build(BuildContext context) {
    final body1 = Theme.of(context).textTheme.bodyText1; //20,bold
    final head4 = Theme.of(context).textTheme.headline4; // 16, normal
    final head2 = Theme.of(context).textTheme.headline2; // 18, normal
    final head5 = Theme.of(context).textTheme.headline5; // 14, normal
    
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFE5E5E5),
        appBar: AppBar(
          leading: IconButton(
              splashRadius: 20,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: SvgPicture.asset('assets/icons/arrow_back.svg')),
        ),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
           padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.w ),
           height:0.8.sh,
           width: double.infinity,
           decoration:  BoxDecoration(
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(20.r),
                 topRight: Radius.circular(20.r),
               ),
               color: Colors.white),
            child: Column(
              children: <Widget>[
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
            
                 Text(
                  'Produto Individual',
                  style: body1?.copyWith(color: Colors.black),
                ),
                Text(
                  'Preencha os dados abaixo',
                  style:head4?.copyWith(color: Colors.black26),
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.black26,
                ),
                 SizedBox(
                  height: 10.h,
                ),
                Flexible(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      Text(
                       'Dados do destinatário',
                      style:head4?.copyWith(color: Colors.black26),
                          ),
                       Container(
                       padding: EdgeInsets.symmetric(
                      horizontal: 10.w),
                       decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color:AppColors.shadowText),
                       height: 60.h,
                       child: Center(
                         child: TextFormField(
                      minLines: 1,
                      maxLines: 5,
                      keyboardType: TextInputType.multiline,
                      decoration:  InputDecoration(
                        border: InputBorder.none,

                        //contentPadding:  EdgeInsets.symmetric(vertical: 30.0),
                        //border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10),),),
                        hintText: 'Nome e Número do Destinatário',
                        hintStyle: head2?.copyWith(color: Colors.black),
                      ),
                         ),
                       ),
                          ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                       'Data de envio da encomenda',
                       style: head4?.copyWith(color: Colors.black26),
                          ),
                      Container(
                         padding:  EdgeInsets.symmetric(
                             horizontal: 10.h,),
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10.r),
                             color: AppColors.shadowText),
                         height: 60.h,
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: <Widget>[
                              Expanded(
                                 flex: 4,
                                 child: Text(
                                   '2022-01-20',
                                   style: head2?.copyWith(color: Colors.black),
                                 )),
                              Expanded(
                                 flex: 2,
                                 child: Text(
                                   '09:38',
                                   style: head2?.copyWith(color: Colors.black),
                                 )),
                             Expanded(
                               child: IconButton(
                                 onPressed: () {},
                                 icon: SvgPicture.asset(
                                     'assets/icons/calendar_icon.svg'),
                                 iconSize: 30.w,
                               ),
                             ),
                           ],
                         )),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                       'Observações',
                       style: head4?.copyWith(color: Colors.black26),
                          ),
                      Container(
                       padding: EdgeInsets.symmetric(
                           horizontal: 10.w),
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10.r),
                           color:AppColors.shadowText),
                       height: 100.h,
                       child: Center(
                         child: TextFormField(
                           minLines: 1,
                           maxLines: 5,
                           keyboardType: TextInputType.multiline,
                           decoration:  InputDecoration(
                             border: InputBorder.none,

                             //contentPadding:  EdgeInsets.symmetric(vertical: 30.0),
                             //border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10),),),
                             hintText: 'Instruções para o executivo',
                             hintStyle: head2?.copyWith(color: Colors.black),
                           ),
                         ),
                       ),
                          ),
                       SizedBox(
                        height: 10.h,
                      ),
                      Text(
                       'Informe os serviços adicionais',
                       style:  head2?.copyWith(color: Colors.black26),
                          ),
                          Container(
                         padding:  EdgeInsets.symmetric(
                             horizontal: 10.w,),
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10.r),
                             color: AppColors.shadowText),
                         height: 60.h,
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: <Widget>[
                             SvgPicture.asset(
                               'assets/icons/truck_icon.svg',
                               color: Colors.purpleAccent,
                               width: 30.w,
                               height: 30.w,
                             ),
                           
                              Expanded(
                               flex: 4,
                               child: Text(
                                 'Serviços adicionais',
                                 style: head2?.copyWith(
                                     color: Colors.black),
                               ),
                             ),
                             IconButton(
                               onPressed: () {},
                               icon: const Icon(
                                 Icons.add_box,
                                 color: AppColors.highLightText,
                               ),
                               iconSize: 30.w,
                             ),
                           ],
                         )),
                       SizedBox(
                        height: 10.h,
                      ),
                       Text(
                        'Nenhum serviço adicional',
                        style:  head5?.copyWith(color: AppColors.highLightText),
                      ),
                    ],
                  ),
                ),
                 SizedBox(
                  height: 20.h,
                ),
                customeButton(
                     context: context,
                     name: 'Próximo',
                     onCallBack: () {

                     }),
                    SizedBox(height: 10.h,),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
