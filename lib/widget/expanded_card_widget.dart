import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_ik/model/expanded_model.dart';
class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({Key? key,required this.expandedItem}) : super(key: key);
  final ExpandedItem expandedItem;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Column(
        children: <Widget>[
          const Divider(thickness: 1,color: Colors.black26,),
          Row(
            children:<Widget> [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset('assets/icons/${expandedItem.menuIcon}',color: Colors.purpleAccent,width: 24,height: 24,fit:BoxFit.scaleDown,),
              ),
               Expanded(child: Text(expandedItem.menuText,style: const TextStyle(fontFamily: 'Poppins',fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),)),
              const Icon(Icons.arrow_forward_ios_rounded,color:Colors.purpleAccent,size: 20,),

            ],),
          Row(children: <Widget> [
            const SizedBox(width: 36,),
            Text(expandedItem.menuSubText,style: const TextStyle(fontFamily: 'Poppins',fontSize: 14,fontWeight: FontWeight.normal,color: Colors.black26),),

          ],),
        ],
      ),
    );
  }
}
