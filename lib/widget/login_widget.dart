import 'package:flutter/material.dart';
import 'package:my_ik/constants/app_color.dart';

import '../constants/app_consotants.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Form(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            height: 60,
            padding: const EdgeInsets.symmetric(
                horizontal: 20, vertical: 5),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              color: Color(0xFFF1F2F7),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: AppRegFormText.regEmail,
                hintStyle: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            height: 60,
            padding: const EdgeInsets.symmetric(
                horizontal: 20, vertical: 5),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              color: Color(0xFFF1F2F7),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: AppRegFormText.palavraPasse,
                hintStyle: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal),
                border: InputBorder.none,
              ),
            ),
          ),
        const  SizedBox(height: 15.0,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: AppColors.buttonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              elevation: 2.2,
              shadowColor: Colors.white54,
            ),
            onPressed: () {},
            child: Container(
              height: 60,
              width: width - 40,
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: const Text(
                'Login',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
       const SizedBox(height: 10,),
          const  Text('Recuperar password',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,fontFamily: 'Poppins'),),
          const SizedBox(height: 30,),
          const  Text('Ao iniciar, aceita os nossos',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 16,fontFamily: 'Poppins'),),
          const SizedBox(height: 5,),
          const  Text('Termos e Condições',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,fontFamily: 'Poppins'),),


        ],
      ),
    );
  }
}
