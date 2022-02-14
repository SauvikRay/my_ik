import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_ik/helpers/navigation_service.dart';

class MainAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBarWidget({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    //final appBarTheme = Theme.of(context).appBarTheme;
    return AppBar(
      title: Text(text),
      leading: IconButton(
          splashRadius: 20,
          onPressed: () {
            NavigationService.goBack;
          },
          icon: SvgPicture.asset('assets/icons/arrow_back.svg')),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);
}
