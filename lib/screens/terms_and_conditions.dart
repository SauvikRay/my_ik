import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_ik/widget/app_bar_widget.dart';
import 'package:my_ik/widget/navigation_widget.dart';

class TermsConditionScreen extends StatelessWidget {
  const TermsConditionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     double height = MediaQuery.of(context).size.height;
    final head4 = Theme.of(context).textTheme.headline4; // 16, normal, black
    return SafeArea(
        child: Scaffold(
          backgroundColor:const Color(0xFFE5E5E5),
          appBar:const MainAppBarWidget(text: 'Terms and Conditions'),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            padding:EdgeInsets.symmetric(horizontal: 20.w,),
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: <Widget> [
                  Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque mattis odio eget nulla mattis sollicitudin. Phasellus euismod elit mauris, quis hendrerit est faucibus nec. Nulla odio risus, posuere eu bibendum ac, imperdiet eget magna. Nulla facilisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sit amet velit non orci posuere laoreet. Vestibulum dapibus auctor condimentum. Nam ac urna vulputate, volutpat mi eu, varius neque.',textAlign: TextAlign.justify,
                    style:head4,
                  ),
                  SizedBox(height: 10.h,),
                  Text( 'Aenean at convallis mi. Fusce in metus posuere, molestie elit in, convallis nisl. Nunc vitae purus sit amet nibh vehicula maximus sit amet eu erat. Fusce leo diam, feugiat non dui ac, aliquet pulvinar justo. Cras bibendum urna nibh, quis tincidunt est lobortis id. Nam dignissim, mi et ullamcorper porta, ipsum elit posuere dolor, vitae lobortis ante lacus at massa. Nam sit amet urna luctus, ornare nunc quis, pellentesque ante.',textAlign: TextAlign.justify,
                    style:head4,
                  ),

                if(height<600) SizedBox(height: 80.h,),
              
                ],
                ),
              ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
          floatingActionButton:  BottomNavigationWidget(),
        ),
    );
  }
}
