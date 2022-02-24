import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_ik/constants/app_color.dart';
import 'package:my_ik/model/contact_model.dart';
import 'package:my_ik/widget/app_bar_widget.dart';
import 'package:my_ik/widget/contact_page_widget.dart';
import 'package:my_ik/widget/navigation_widget.dart';
class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {

  List<ContactItem> contactItems =[
    ContactItem(smallText: 'O nosso website', contactIcon: 'globe_icon.svg', bigText: 'www.iklog.pt'),
    ContactItem(smallText: 'Telefone', contactIcon: 'call_icon.svg', bigText: '+351 912 959 027'),
    ContactItem(smallText: 'E-mail', contactIcon: 'email_icon.svg', bigText: 'email@iklog.pt'),
  ];
  
  @override
  Widget build(BuildContext context) { 
    double height = MediaQuery.of(context).size.height;
   
    return SafeArea(
        child: Scaffold(
          backgroundColor:const Color(0xFFE5E5E5),
          appBar:  MainAppBarWidget(text: 'Contacte-nos',),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: contactItems.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children:<Widget> [
                        ContactPageWidget( sText: contactItems[index].smallText,gradient: true,bText: contactItems[index].bigText,bIcon: contactItems[index].contactIcon,),
                        SizedBox(height: 20.h,),
                      ],
                    );
                  },
                ),
                // SizedBox(height: 10.h,),
                 ContactPageWidget(sText: 'Localização',contColor: AppColors.highLightText,gradient: false,conHeight: 120.h,bIcon: 'location_icon.svg',aText:'Av. Manuel Violas 476 4410-137 São Félix da Marinha Portugal' ,),
                if(height<600) SizedBox(height: 80.h,),
          
              ],
            ),
          ),
          //bottomNavigationBar: BottomNavigationWidget(),
        //  floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
         // floatingActionButton: BottomNavigationWidget(),
        ),

    );
  }
}
