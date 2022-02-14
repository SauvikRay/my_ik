import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class HistoryWidget extends StatefulWidget {
  const HistoryWidget({Key? key}) : super(key: key);

  @override
  _HistoryWidgetState createState() => _HistoryWidgetState();
}

class _HistoryWidgetState extends State<HistoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget>[
      Container(
      height: 170,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ) ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [
          Row(
            children:<Widget> [
            SvgPicture.asset('assets/icons/location_icon.svg',color:const Color(0xFF2AD684),height: 25,width: 25,),
            const SizedBox(width: 15,),
            const Text('Lorem ipsum dolor sit amet',style: TextStyle(fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight.normal,color: Colors.black),)
          ],),
          const Padding(
            padding:  EdgeInsets.only(left: 8.0),
            child: Text('|'),
          ),
          Row(children:<Widget> [
            SvgPicture.asset('assets/icons/location_icon.svg',color:const Color(0xFFEA12B9),height: 25,width: 25,),
            const SizedBox(width: 15,),
            const Text('Lorem ipsum dolor sit amet',style: TextStyle(fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight.normal,color: Colors.black),)
          ],),
          const  Divider(thickness: 1,color: Colors.black26,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget> [
              SvgPicture.asset('assets/icons/money_euro_circle_icon.svg',height: 32,width: 32,),
           const Expanded(child: Text('197.93 €',style: TextStyle(fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight.bold,color: Colors.black),)),
              const Text('2021-08-02 | 15:53',style: TextStyle(fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight.normal,color: Colors.black),),
              IconButton(onPressed: (){},icon:const Icon(Icons.arrow_forward_ios,size: 20,color: Colors.purpleAccent,),),

            ],
          ),
        ],
      ),
    ),
        const SizedBox(height:20),
      ],
    );
  }
}
