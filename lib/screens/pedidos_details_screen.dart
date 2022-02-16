import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_ik/constants/app_color.dart';
import 'package:my_ik/helpers/navigation_service.dart';
import 'package:my_ik/widget/app_bar_widget.dart';

class PedidosScreen extends StatefulWidget {
  const PedidosScreen({Key? key}) : super(key: key);

  @override
  _PedidosScreenState createState() => _PedidosScreenState();
}

class _PedidosScreenState extends State<PedidosScreen> {
  @override
  Widget build(BuildContext context) {
//Bold 16 purple
     final head1 = Theme.of(context).textTheme.headline1; // 16, normal, black
     final head3 = Theme.of(context).textTheme.headline3; // 16, normal, black
     final head4 = Theme.of(context).textTheme.headline4; // 16, normal, black
     final head6 = Theme.of(context).textTheme.headline6; // 16, normal, black
     final body1 = Theme.of(context).textTheme.bodyText1; //16,Bold,black
     final body2 = Theme.of(context).textTheme.bodyText2; //16,normal, ash
     final head5=Theme.of(context).textTheme.headline5;
     final sub1 = Theme.of(context).textTheme.subtitle1; //14,normal, black
     final sub2 = Theme.of(context).textTheme.subtitle2; //14,normal, purple
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFE5E5E5),
        appBar: AppBar(
          //titleTextStyle:const TextStyle(fontFamily: 'Poppins', fontSize: 24, fontWeight: FontWeight.bold,color: Colors.black),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(
            color: Colors.purpleAccent,
          ),
          leading: IconButton(
            splashRadius: 20.r,
            onPressed: () {
              NavigationService.goBack;
            },
            icon: SvgPicture.asset('assets/icons/arrow_back.svg'),
          ),

          actions: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.w),
              child: Text('Chat', style: head1),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10.0.w),
              child: SvgPicture.asset(
                'assets/icons/chat_icon.svg',
                height: 32.h,
                width: 32.w,
              ),
            ),
          ],
        ),
        body: Container(
          margin: EdgeInsets.only(top: 10.h),
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //Card Container
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                  height: 0.7.sh,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            height: 60.w,
                            width: 60.w,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 10.w),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.r),
                                color: AppColors.shadowText),
                            child: SvgPicture.asset(
                              'assets/icons/perfil_line_icon.svg',
                              color: const Color(0XFFBDBEC6),
                              height: 30.w,
                              width: 30.w,
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                          Text(
                            'Carlos Eduardo',
                            style: head4,
                          ),
                          Column(
                            children: <Widget>[
                              SvgPicture.asset(
                                'assets/icons/danger_icon.svg',
                                width: 20.w,
                                height: 20.h,
                              ),
                              Text(
                                'PENDENTE',
                                style: head6,
                              ),
                            ],
                          )
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.black26,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            flex: 5,
                            child:
                                Text('Referencia da Enccomenda', style: body2),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text('lg186be1', style: body1),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.black26,
                      ),
                      //Row For time distance time
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Flexible(
                            flex: 3,
                            child: Row(
                              children: <Widget>[
                                SvgPicture.asset('assets/icons/time_icon.svg'),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text('3 mins', style: sub2),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 3,
                            child: Row(
                              children: <Widget>[
                                SvgPicture.asset(
                                    'assets/icons/distance_icon.svg'),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  '0.8 km',
                                  style: sub2,
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 5,
                            fit: FlexFit.tight,
                            child: Row(
                              children: <Widget>[
                                Text('2021-08-02 | 15:53', style: head5),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.black26,
                      ),

                      Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SvgPicture.asset(
                                'assets/icons/location_icon.svg',
                                color: const Color(0xFF2AD684),
                                height: 25.h,
                                width: 25.w,
                                fit: BoxFit.scaleDown,
                              ),
                              const VerticalDivider(
                                thickness: 2,
                                indent: 20,
                                endIndent: 30,
                                color: Colors.black,
                              ),
                              SvgPicture.asset(
                                'assets/icons/location_icon.svg',
                                color: const Color(0xFFEA12B9),
                                height: 25.h,
                                width: 25.w,
                                fit: BoxFit.scaleDown,
                              ),
                            ],
                          ),
                           SizedBox(
                            width: 15.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  <Widget>[
                              Text(
                                'Local de Recolha',
                                style: body2,
                              ),
                              Text(
                                'Ferrox',
                                style: body1,
                              ),
                              // VerticalDivider(
                              //   thickness: 2,
                              //   indent: 10,
                              //   endIndent: 10,
                              //   color: Colors.red,
                              // ),
                              Text(
                                'Local de Entrega',
                                style: body2,
                              ),
                              Text(
                                'Shoprite Beira',
                                style: body1,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.black26,
                      ),
                      //total
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  <Widget>[
                          Flexible(
                            child: Text(
                              'Total',
                              style: head6,
                            ),
                          ),
                          Flexible(
                            flex: 3,
                            child: Text(
                              '55 € / hora',
                              style: head1,
                            ),
                          )
                        ],
                      ),
                       SizedBox(
                        height: 5.h,
                      ),
                      //Duracao
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  <Widget>[
                          Text(
                            'Duraçao',
                            style: body2,
                          ),
                          Text(
                            '0 seg',
                            style: head4,
                          )
                        ],
                      ),
                       SizedBox(
                        height: 5.h,
                      ),
                      //Servico
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  <Widget>[
                          Text(
                            'Serviço',
                            style: body2,
                          ),
                          Text(
                            '35.0 €',
                            style: head4,
                          )
                        ],
                      ),
                       SizedBox(
                        height: 5.h,
                      ),
                      //Tasa Servico
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  <Widget>[
                          Text(
                            'Tasa de Serviço',
                            style: body2,
                          ),
                          Text(
                            '15 %',
                            style: head4,
                          )
                        ],
                      ),
                       SizedBox(
                        height: 5.h,
                      ),
                      //Tasa de Envio
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  <Widget>[
                          Text(
                            'Tasa de Envio',
                            style: body2,
                          ),
                          Text(
                            '0.7 €',
                            style: head4,
                          )
                        ],
                      ),
                       SizedBox(
                        height: 10.h,
                      ),
                       Text(
                        'Adicional',
                        style:head6 ,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Montagem e Desmontagem',
                            style: body2,
                          ),
                          Text(
                            '10 €',
                            style: head4,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                 Text(
                  'Tipo da Encomenda',
                  style: body2,
                ),
                 Text(
                  'Produto Individual - Tipo 0',
                  style: head4?.copyWith(color: Colors.purpleAccent),
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                 Text(
                  'Tipo de Veiculo Requerido',
                  style: body2,
                ),
                 Text(
                  'Classe 1',
                  style: head4,
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.black26,
                ),
                 SizedBox(
                  height: 10.h,
                ),
                 Text(
                  'Observaçoes',
                  style: body2,
                ),
                TextFormField(
                  minLines: 1,
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  decoration:  InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 30.h,horizontal: 10.w),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.r),
                      ),
                    ),
                    hintText: 'Seu comentário...',
                    hintStyle: head4,
                  ),
                ),
                 SizedBox(
                  height: 20.h,
                ),
                //Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                             EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 10.h)),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.r),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Ver os Artigos',
                        style: body1,
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10)),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child:  Text(
                        'Eliminar',
                        style: head3,
                      ),
                    ),
                  ],
                ),
                 SizedBox(
                  height: 20.h,
                ),
                MaterialButton(
                  onPressed: () {},
                  child:  Text(
                    'Adicionar Serviço',
                    style: Theme.of(context).textTheme.button,
                  ),
                  height: 60.0,
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  color: AppColors.buttonColor,
                ),
                 SizedBox(
                  height: 30.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
