import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../constants/app_color.dart';
import '../constants/app_consotants.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final head2 = Theme.of(context).textTheme.headline2;
    final head4 = Theme.of(context).textTheme.headline4;
    final body1 = Theme.of(context).textTheme.bodyText1;
    return  Column(
      children: [
        Form(
          child:Column(
            children:<Widget> [
              TextFormField(
                decoration:  InputDecoration(
                  border:OutlineInputBorder(borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10.r),),
                  filled: true,
                  fillColor:AppColors.textBoxText,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 15.h) ,
                  hintText: AppRegFormText.regEmail,
                  hintStyle:head2,
                ),
              ),
               SizedBox(height: 20.h,),

              //TODO: Palavara Passe
              TextFormField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  border:OutlineInputBorder(borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10.r),),
                  filled: true,
                  fillColor: AppColors.textBoxText,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 15.h) ,
                  hintText: AppRegFormText.palavraPasse,
                  hintStyle:head2,
                ),
              ),
              const SizedBox(height: 20,),
            ],
          ) ,
        ),

        MaterialButton(
          onPressed: (){

          },
          child: Text('Login',style: Theme.of(context).textTheme.button,),
          height: 50.h,
          minWidth: double.infinity,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.r),),
          color:AppColors.buttonColor,
        ),
         SizedBox(height: 20.h,),
        TextButton(onPressed: (){},
        child: Text('Recuperar password',style: body1),),
         SizedBox(height: 30.h,),
        Text('Ao iniciar, aceita os nossos',style: head4,),
        TextButton(onPressed: (){},
          child: Text('Termos e Condições',style: body1,),),
      ],
    );
  }
}




