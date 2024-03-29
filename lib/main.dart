import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_ik/constants/custome_theme.dart';
import 'package:my_ik/screens/pedidos_details_screen.dart';
import 'package:my_ik/screens/perfil_screen.dart';
import 'package:my_ik/screens/register_login_screen.dart';
import 'package:my_ik/screens/splash_screen.dart';
import 'package:my_ik/screens/terms_and_conditions.dart';
import 'constants/app_color.dart';
import 'helpers/all_routes.dart';
import 'helpers/navigation_service.dart';
import 'screens/animation_practice.dart';
import 'screens/navigation_screens.dart';





void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () =>  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.mainTheme,
        builder: (context,widget){
          ScreenUtil.setContext(context);
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },


      initialRoute: Routes.navigation,
      navigatorKey: NavigationService.navigatorKey,
      onGenerateRoute: RouteGenerator.generateRoute,
      routes: {
        Routes.navigation : (context)=> NavigationScreen(),

      },

     // home: NavigationScreen(screenNum: 0),
    ),
    
  
      
      );
   }
}



