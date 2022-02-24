import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ik/screens/navigation_screens.dart';
import '/screens/contact_screen.dart';
import '/screens/historic_screen.dart';
import '/screens/historic_screen_five.dart';
import '/screens/historic_screen_four.dart';
import '/screens/historic_screen_one.dart';
import '/screens/historic_screen_six.dart';
import '/screens/historic_screen_three.dart';
import '/screens/historic_screen_two.dart';
import '/screens/home_screen_four.dart';
import '/screens/home_screen_one.dart';
import '/screens/home_screen_three.dart';
import '/screens/home_screen_two.dart';
import '/screens/menu_sccrren.dart';
import '/screens/notifications_screen.dart';
import '/screens/pedidos_details_screen.dart';
import '/screens/pedidos_screen_two.dart';
import '/screens/perfil_screen.dart';

import '../screens/register_login_screen.dart';
import '/screens/servicos%20_adicionais_one.dart';
import '/screens/servicos%20_adicionais_two.dart';
import '/screens/terms_and_conditions.dart';

import '/screens/my_ik_screen.dart';
import '/screens/splash_screen.dart';


class Routes{

  //static const String loader='/loader';
  static const String splash='/splash';
  static const String myIk='/myik';
  static const String register='/register';
  static const String homeOne='/homeOne';
  static const String homeTwo='/homeTwo';
  static const String homeThree='/homeThree';
  static const String homeFour='/homeFour';
  static const String history='/history';
  static const String historyOne='/historyOne';
  static const String historyTwo='/historyTwo';
  static const String historyThree='/historyThree';
  static const String historyFour='/historyFour';
  static const String historyFive='/historyFive';
  static const String historySix='/historySix';
  static const String contact='/contact';
  static const String pedidosDetails='/pedidosDetails';
  static const String pedidosTwo='/pedidosTwo';
  static const String perfil='/perfil';
  static const String serviceOne='/serviceOne';
  static const String serviceTwo='/serviceTwo';
  static const String menu='/menu';
  static const String notification='/notification';
  static const String terms='/terms';
  static const String navigation='/navigation';
  
}

class RouteGenerator{

  static Route<dynamic>? generateRoute(RouteSettings settings){
    switch (settings.name){
      case Routes.splash:
          return Platform.isAndroid 
          ? MaterialPageRoute(builder: (context)=> const SplashScreen())
          : CupertinoPageRoute(builder: (context)=> const SplashScreen());

      case Routes.myIk:
          return Platform.isAndroid 
          ? MaterialPageRoute(builder: (context)=> const MyKScreen())
          : CupertinoPageRoute(builder: (context)=> const MyKScreen());
      case Routes.register:
          return Platform.isAndroid 
          ? MaterialPageRoute(builder: (context)=> const RegisterLoginScreen())
          : CupertinoPageRoute(builder: (context)=> const RegisterLoginScreen());
      case Routes.homeOne:
          return Platform.isAndroid 
          ? MaterialPageRoute(builder: (context)=> const HomeScreenOne())
          : CupertinoPageRoute(builder: (context)=> const HomeScreenOne());
      case Routes.homeTwo:
          return Platform.isAndroid 
          ? MaterialPageRoute(builder: (context)=> const HomeScreenTwo())
          : CupertinoPageRoute(builder: (context)=> const HomeScreenTwo());
      case Routes.homeThree:
          return Platform.isAndroid 
          ? MaterialPageRoute(builder: (context)=> const HomeScreenThree())
          : CupertinoPageRoute(builder: (context)=> const HomeScreenThree());
      case Routes.homeFour:
          return Platform.isAndroid 
          ? MaterialPageRoute(builder: (context)=> const HomeScreenFour())
          : CupertinoPageRoute(builder: (context)=> const HomeScreenFour());
      case Routes.history:
          return Platform.isAndroid 
          ? MaterialPageRoute(builder: (context)=> const HistoryScreen())
          : CupertinoPageRoute(builder: (context)=> const HistoryScreen());
          
      case Routes.historyOne:
          return Platform.isAndroid 
          ? MaterialPageRoute(builder: (context)=> const HistoricPageOne())
          : CupertinoPageRoute(builder: (context)=> const HistoricPageOne());
          
      case Routes.historyTwo:
          return Platform.isAndroid 
          ? MaterialPageRoute(builder: (context)=> const HistoricPageTwo())
          : CupertinoPageRoute(builder: (context)=> const HistoricPageTwo());
          
      case Routes.historyThree:
          return Platform.isAndroid 
          ? MaterialPageRoute(builder: (context)=> const HistoricPageThree())
          : CupertinoPageRoute(builder: (context)=> const HistoricPageThree());
          
      case Routes.historyFour:
          return Platform.isAndroid 
          ? MaterialPageRoute(builder: (context)=> const HistoricPageFour())
          : CupertinoPageRoute(builder: (context)=> const HistoricPageFour());
          
      case Routes.historyFive:
          return Platform.isAndroid 
          ? MaterialPageRoute(builder: (context)=> const HistoricPageFive())
          : CupertinoPageRoute(builder: (context)=> const HistoricPageFive());
          
      case Routes.historySix:
          return Platform.isAndroid 
          ? MaterialPageRoute(builder: (context)=> const HistoricPageSix())
          : CupertinoPageRoute(builder: (context)=> const HistoricPageSix());
          
      case Routes.contact:
          return Platform.isAndroid 
          ? MaterialPageRoute(builder: (context)=> const ContactScreen())
          : CupertinoPageRoute(builder: (context)=> const ContactScreen());
          
      case Routes.pedidosDetails:
          return Platform.isAndroid 
          ? MaterialPageRoute(builder: (context)=> const PedidosScreen())
          : CupertinoPageRoute(builder: (context)=> const PedidosScreen());
          
      case Routes.pedidosTwo:
          return Platform.isAndroid 
          ? MaterialPageRoute(builder: (context)=> const PedidosScreenTwo())
          : CupertinoPageRoute(builder: (context)=> const PedidosScreenTwo());
          
      case Routes.perfil:
          return Platform.isAndroid 
          ? MaterialPageRoute(builder: (context)=> const PerfilScreen())
          : CupertinoPageRoute(builder: (context)=> const PerfilScreen());
          
      case Routes.serviceOne:
          return Platform.isAndroid 
          ? MaterialPageRoute(builder: (context)=> const ServiceAdicionaisScreenOne())
          : CupertinoPageRoute(builder: (context)=> const ServiceAdicionaisScreenOne());
          
      case Routes.serviceTwo:
          return Platform.isAndroid 
          ? MaterialPageRoute(builder: (context)=> const ServiceAdicionaisScreenTwo())
          : CupertinoPageRoute(builder: (context)=> const ServiceAdicionaisScreenTwo());
          
      case Routes.menu:
          return Platform.isAndroid 
          ? MaterialPageRoute(builder: (context)=> const MenuScreen())
          : CupertinoPageRoute(builder: (context)=> const MenuScreen());
          
      case Routes.notification:
          return Platform.isAndroid 
          ? MaterialPageRoute(builder: (context)=> const NotificationScreen())
          : CupertinoPageRoute(builder: (context)=> const NotificationScreen());
          
      case Routes.terms:
          return Platform.isAndroid 
          ? MaterialPageRoute(builder: (context)=> const TermsConditionScreen())
          : CupertinoPageRoute(builder: (context)=> const TermsConditionScreen());
      case Routes.navigation:
          return Platform.isAndroid 
          ? MaterialPageRoute(builder: (context)=>  NavigationScreen())
          : CupertinoPageRoute(builder: (context)=> NavigationScreen());
          


      default: return null;
    }

  }
}