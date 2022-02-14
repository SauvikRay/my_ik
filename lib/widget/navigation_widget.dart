import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      height: 70,
      width: MediaQuery.of(context).size.width*0.9,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color: Colors.white),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 60,
            child: MaterialButton(
              minWidth: 70,
              onPressed: (){
                setState(() {

                });

              },
              child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children:<Widget> [
                  SvgPicture.asset('assets/icons/home_icon.svg',width: 20,height: 20,color:  Colors.black ,),
                  const Text('Home', style: TextStyle(fontFamily: 'Poppins',fontSize: 12,  fontWeight:FontWeight.normal, color: Colors.black ),)
                ],
              ),
            ),
          ),
          SizedBox(
            height: 60,
            child: MaterialButton(
              minWidth: 70,
              onPressed: (){
                setState(() {

                });

              },
              child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children:<Widget> [
                  SvgPicture.asset('assets/icons/pedidos_icon.svg',width: 20,height: 20,color: Colors.black ),
                  const Text('Pedidos',style: TextStyle(fontFamily: 'Poppins',fontSize: 12,fontWeight: FontWeight.normal,color: Colors.black ),)
                ],
              ),
            ),
          ),
          SizedBox(
            height: 60,
            child: MaterialButton(
              minWidth: 70,
              onPressed: (){
                setState(() {

                });

              },
              child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children:<Widget> [
                  SvgPicture.asset('assets/icons/perfil_line_icon.svg',width: 20,height: 20,color: Colors.black,),
                  const Text('Perfil',style: TextStyle(fontFamily: 'Poppins',fontSize: 12,fontWeight:FontWeight.normal,color:Colors.black ),)
                ],
              ),
            ),
          ),
          SizedBox(
            height: 60,
            child: MaterialButton(
              minWidth: 70,
              onPressed: (){
                setState(() {
                });

              },
              child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children:<Widget> [
                  SvgPicture.asset('assets/icons/menu_icon.svg',width: 20,height: 20,color:Colors.black,),
                  const Text('Menu',style: TextStyle(fontFamily: 'Poppins',fontSize: 12,fontWeight:FontWeight.normal,color:Colors.black ),)
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}
