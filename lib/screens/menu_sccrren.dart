import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_ik/constants/app_color.dart';
import 'package:my_ik/helpers/all_routes.dart';
import 'package:my_ik/model/menu_model.dart';
import 'package:my_ik/screens/pedidos_details_screen.dart';
import 'package:my_ik/screens/perfil_screen.dart';
import 'package:my_ik/widget/menu_widget.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  List<MenuItem> menuIcons = [
    MenuItem(
        menuIcon: 'perfil_line_icon.svg',
        menuText: 'Perfil',
        widget: const PerfilScreen()),
    MenuItem(
        menuIcon: 'pedidos_icon.svg',
        menuText: 'Pedidos',
        widget: const PedidosScreen() ),
    MenuItem(
        menuIcon: 'historico_icon.svg',
        menuText: 'Histórico',
       widget: const PedidosScreen() ),
    MenuItem(
        menuIcon: 'notification_icon.svg',
        menuText: 'Notificações',
      widget: const PedidosScreen() ),
    MenuItem(
        menuIcon: 'definition_line_icon.svg',
        menuText: 'Definições',
       widget: const PedidosScreen() ),
    MenuItem(
        menuIcon: 'terms_condition_icon.svg',
        menuText: 'Terms and Conditions',
      widget: const PedidosScreen() ),
    MenuItem(
        menuIcon: 'contact_icon.svg',
        menuText: 'Contacte-nos',
       widget: const PedidosScreen() ),
    MenuItem(
        menuIcon: 'terminar_icon.svg',
        menuText: 'Terminar Sessao',
      widget: const PedidosScreen() ),
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final head5 = Theme.of(context).textTheme.headline5; // 14, normal
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF4F5FB).withOpacity(1.0),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height:(height<600) ? null : 400.h,
                      width: double.infinity,
                      child: SingleChildScrollView(
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: menuIcons.length,
                          itemBuilder: (BuildContext context, int index) {
                            return MenuWidget(menuItem: menuIcons[index]);
                          },
                        ),
                      ),
                    ),
                
                    Text(
                  'Version 1.2.3',
                  style: head5?.copyWith(color: AppColors.shadowText2),
                ),
                  ],
                ),
                
              ]),
        ),
      ),
    );
  }
}
