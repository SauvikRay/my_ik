import 'package:my_ik/screens/contact_screen.dart';
import 'package:my_ik/screens/historic_screen.dart';
import 'package:my_ik/screens/home_screen_three.dart';
import 'package:my_ik/screens/notifications_screen.dart';
import 'package:my_ik/screens/terms_and_conditions.dart';

import '../model/menu_model.dart';
import '../screens/pedidos_details_screen.dart';
import '../screens/perfil_screen.dart';


  List<MenuItem> menuItems = [
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
       widget: const HistoryScreen() ),
    MenuItem(
        menuIcon: 'notification_icon.svg',
        menuText: 'Notificações',
      widget: const NotificationScreen() ),
    MenuItem(
        menuIcon: 'definition_line_icon.svg',
        menuText: 'Definições',
       widget: const HomeScreenThree() ),
    MenuItem(
        menuIcon: 'terms_condition_icon.svg',
        menuText: 'Terms and Conditions',
      widget: const TermsConditionScreen() ),
    MenuItem(
        menuIcon: 'contact_icon.svg',
        menuText: 'Contacte-nos',
       widget: const ContactScreen() ),
    MenuItem(
        menuIcon: 'terminar_icon.svg',
        menuText: 'Terminar Sessao',
      widget: const TermsConditionScreen() ),
  ];