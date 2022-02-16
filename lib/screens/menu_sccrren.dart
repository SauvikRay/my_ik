import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_ik/constants/app_color.dart';
import 'package:my_ik/helpers/all_routes.dart';
import 'package:my_ik/model/menu_model.dart';
import 'package:my_ik/widget/menu_widget.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  List<MenuItem> menuIcons = [
    MenuItem(
        menuIcon: 'perfil_line_icon.svg', menuText: 'Perfil', path: Routes.perfil),
    MenuItem(
        menuIcon: 'pedidos_icon.svg', menuText: 'Pedidos', path: Routes.pedidosDetails),
    MenuItem(
        menuIcon: 'historico_icon.svg', menuText: 'Histórico',path: Routes.history),
    MenuItem(
        menuIcon: 'notification_icon.svg',menuText: 'Notificações',path: Routes.notification),
    MenuItem(
        menuIcon: 'definition_line_icon.svg',menuText: 'Definições',path: Routes.pedidosTwo),
    MenuItem(
        menuIcon: 'terms_condition_icon.svg',menuText: 'Terms and Conditions',path: Routes.terms),
    MenuItem(
        menuIcon: 'contact_icon.svg',menuText: 'Contacte-nos',path: Routes.contact),
    MenuItem(
        menuIcon: 'terminar_icon.svg',menuText: 'Terminar Sessao',path: 'logOut'),
  ];

  @override
  Widget build(BuildContext context) {
    final head5 = Theme.of(context).textTheme.headline5; // 14, normal
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFE5E5E5),
        body: Container(
          padding:  EdgeInsets.symmetric(horizontal: 20.w),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
             SizedBox(
              height: 30.h,
            ),
             Text(
              'Menu',
              style: TextStyle(
                  fontSize: 32.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const Divider(
              color: Colors.black26,
              thickness: 1,
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: menuIcons.length,
                  itemBuilder: (BuildContext context, int index) {
                    return MenuWidget(menuItem: menuIcons[index]);
                  },
                ),
              ),
            ),
             Text(
              'Version 1.2.3',
              style:head5?.copyWith(color: AppColors.shadowText2) ,
            ),
          ]),
        ),
      ),
    );
  }
}
