import 'package:flutter/material.dart';
import 'package:my_ik/widget/app_bar_widget.dart';
import 'package:my_ik/widget/navigation_widget.dart';

class TermsConditionScreen extends StatelessWidget {
  const TermsConditionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor:const Color(0xFFE5E5E5),
          appBar:const MainAppBarWidget(text: 'Terms and Conditions'),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding:const EdgeInsets.symmetric(horizontal: 20,),
            child: Stack(
              children: <Widget> [
              ListView(
                scrollDirection: Axis.vertical,
                children:const <Widget> [
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque mattis odio eget nulla mattis sollicitudin. Phasellus euismod elit mauris, quis hendrerit est faucibus nec. Nulla odio risus, posuere eu bibendum ac, imperdiet eget magna. Nulla facilisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sit amet velit non orci posuere laoreet. Vestibulum dapibus auctor condimentum. Nam ac urna vulputate, volutpat mi eu, varius neque.',
                  style: TextStyle(color: Colors.black, fontFamily: 'Poppins',fontSize: 16,fontWeight: FontWeight.normal),
                ),
                SizedBox(height: 10,),
                Text('Aenean at convallis mi. Fusce in metus posuere, molestie elit in, convallis nisl. Nunc vitae purus sit amet nibh vehicula maximus sit amet eu erat. Fusce leo diam, feugiat non dui ac, aliquet pulvinar justo. Cras bibendum urna nibh, quis tincidunt est lobortis id. Nam dignissim, mi et ullamcorper porta, ipsum elit posuere dolor, vitae lobortis ante lacus at massa. Nam sit amet urna luctus, ornare nunc quis, pellentesque ante.',
                  style: TextStyle(color: Colors.black, fontFamily: 'Poppins',fontSize: 16,fontWeight: FontWeight.normal),
                ),

              ],),

             const Positioned(
                    bottom: 30,
                    child: BottomNavigationWidget(),
                ),

              ],
            ),
          ),
        ),
    );
  }
}
