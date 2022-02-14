import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_ik/widget/app_bar_widget.dart';
import 'package:my_ik/widget/navigation_widget.dart';
class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor:const Color(0xFFE5E5E5),
          appBar: const MainAppBarWidget(text: 'Contacte-nos',),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Stack(
              children:<Widget> [
                ListView(
                  scrollDirection: Axis.vertical,
                  children:<Widget> [
                    //Web
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width-40,
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color(0xFFE305B7),
                            Color(0xFF7B61FF),
                          ],),

                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:<Widget> [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Text('O nosso website',style: TextStyle(fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),),
                              Text('www.iklog.pt',style: TextStyle(fontFamily: 'Poppins', fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),),
                            ],),
                          SvgPicture.asset('assets/icons/globe_icon.svg'),
                        ],
                      ),

                    ),
                    const SizedBox(height: 20.0,),
                    //Telefone
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width-40,
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color(0xFFE305B7),
                            Color(0xFF6B34BE),
                          ],),

                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:<Widget> [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Text('Telefone',style: TextStyle(fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),),
                              Text('+351 912 959 027',style: TextStyle(fontFamily: 'Poppins', fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),),
                            ],),
                          SvgPicture.asset('assets/icons/call_icon.svg'),
                        ],
                      ),

                    ),
                    const SizedBox(height: 20.0,),
                    //Email
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width-40,
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color(0xFFE305B7),
                            Color(0xFF6B34BE),
                          ],),

                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:<Widget> [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Text('E-mail',style: TextStyle(fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),),
                              Text('email@iklog.pt',style: TextStyle(fontFamily: 'Poppins', fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),),
                            ],),
                          SvgPicture.asset('assets/icons/email_icon.svg'),
                        ],
                      ),

                    ),
                    const SizedBox(height: 20.0,),
                    //Location
                    Container(
                      height: 140,
                      width: MediaQuery.of(context).size.width-40,
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color(0xFFE305B7),
                            Color(0xFF6B34BE),
                          ],),

                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:<Widget> [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Text('OLocalização',style: TextStyle(fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),),
                              Text('Av. Manuel Violas 476',style: TextStyle(fontFamily: 'Poppins', fontSize: 18, fontWeight: FontWeight.normal,color: Colors.white),),
                              Text('4410-137 São Félix da Marinha,',style: TextStyle(fontFamily: 'Poppins', fontSize: 18, fontWeight: FontWeight.normal,color: Colors.white),),
                              Text('Portugal',style: TextStyle(fontFamily: 'Poppins', fontSize: 18, fontWeight: FontWeight.normal,color: Colors.white),),
                            ],),
                          SvgPicture.asset('assets/icons/location_icon.svg'),
                        ],
                      ),

                    ),
                    const SizedBox(height: 20.0,),
                  ],
                ),




            const  Positioned(
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
