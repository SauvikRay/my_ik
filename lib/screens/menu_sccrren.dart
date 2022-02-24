import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_ik/constants/app_color.dart';
import 'package:my_ik/widget/menu_widget.dart';
import '../data/menu_item_data.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final head5 = Theme.of(context).textTheme.headline5; // 14, normal
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF4F5FB).withOpacity(1.0),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: (height < 600) ? null : 400.h,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: menuItems.length,
                      itemBuilder: (BuildContext context, int index) {
                        return MenuWidget(menuItem: menuItems[index]);
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
