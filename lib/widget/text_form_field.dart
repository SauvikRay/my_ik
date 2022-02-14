
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:my_ik/constants/app_color.dart';
import 'package:my_ik/constants/app_consotants.dart';
import 'package:my_ik/constants/custome_theme.dart';
import '../screens/home_screen_one.dart';
class TextInputForm extends StatefulWidget {
  const TextInputForm({Key? key}) : super(key: key);

  @override
  _TextInputFormState createState() => _TextInputFormState();
}

class _TextInputFormState extends State<TextInputForm> {

 
  
  @override
  Widget build(BuildContext context) {

     final head2 = Theme.of(context).textTheme.headline2;
    return  Column(
      children: [
        Form(
          child:Column(
            children:<Widget> [
              TextFormField(
                decoration:InputDecoration(
                  border:OutlineInputBorder(borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10.r),),
                  filled: true,
                  fillColor: AppColors.textBoxText,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 15.h) ,
                  hintText: AppRegFormText.regName,
                  hintStyle: head2,
                  
                // hintStyle:TextStyle(fontSize:18,fontStyle: FontStyle.normal ),

                ),
              ),
                SizedBox(height: 20.h,),
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
              // //TODO:Phone Number
              Container(
                decoration:BoxDecoration(borderRadius: BorderRadius.circular(10.r),color: const Color(0xFFF1F2F7)),
                height: 70.h,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: InternationalPhoneNumberInput(
                    onInputChanged: (value){},
                    hintText: AppRegFormText.phoneNumber,
                    //textStyle: Theme.of(context).textTheme.bodyText1,
                    textStyle:  TextStyle(fontSize: 18.sp,fontStyle: FontStyle.normal ),
                    inputBorder: InputBorder.none,
                    initialValue: PhoneNumber(dialCode: '+351',isoCode: 'PT',),
                  ),
                ),
              ),
               SizedBox(height: 20.h,),
              // //TODO: Palavara Passe
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

            ],
          ) ,
        ),
         SizedBox(height: 20.h,),

        MaterialButton(
          onPressed: () async{
             await _showDialog();
          },
          child: Text('Registar',style:  Theme.of(context).textTheme.button,),
          height: 50.h,
          minWidth: double.infinity,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.r),),
          color:AppColors.buttonColor,
        ),
      ],
    );
  }




    _showDialog() {
    showDialog(context: context, builder: (BuildContext context){
      bool isChecked = false;
      bool isCheckedTwo = false;
      final head3 = Theme.of(context).textTheme.headline3;
      final head4 = Theme.of(context).textTheme.headline4;

      return StatefulBuilder(builder: (context, setState){
         Color getColor(Set<MaterialState> states) {
        const Set<MaterialState> interactiveStates = <MaterialState>{
          MaterialState.pressed,
          MaterialState.hovered,
          MaterialState.focused,
        };
        if (states.any(interactiveStates.contains)) {
          return Colors.blue;
        }
        return Colors.purpleAccent;
      }
      return Dialog(
        shape: RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(30.r)),
        child: Container(
          margin:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
          height: 400.h,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
               Text('CONFIRMAÇÃO',style: head3),
              // FlutterLogo(size: 150,),
               SizedBox(height: 10.h,),
              const Divider(color: Colors.black26,thickness: 1.0,),
               SizedBox(height: 10.h,),
              Container(
                padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                height: 100.h,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r),color: Colors.purpleAccent),
                child: Text('Clique aqui para ver os temos e condições de politicas de privacidade',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.normal,color: Colors.white ),) ,
              ),
              SizedBox(height: 10.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:<Widget> [
                  Expanded(child: Text('Eu concordo com as Politicas de Privacidade',style: head4)),
                  Checkbox(
                    value: isChecked,
                    checkColor: Colors.white,fillColor: MaterialStateProperty.resolveWith(getColor),
                      onChanged: (checked){
                        setState(() {
                          isChecked =checked!;
                        });
                      }),

                ],
              ),
              const Divider(color: Colors.black26,thickness: 1.0,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:<Widget> [
                   Expanded(child: Text('Eu concordo com as Politicas de Privacidade',style: head4),),
                  Checkbox(
                    value: isCheckedTwo, checkColor: Colors.white,fillColor: MaterialStateProperty.resolveWith(getColor),
                      onChanged: (value){
                        setState(() {
                          isCheckedTwo = value!;
                        });
                      }),

                ],
              ),
              const Divider(color: Colors.black26,thickness: 1.0,),
              SizedBox(height: 15.h,),
              MaterialButton(
                onPressed: (){
                  Navigator.pop(context);
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>const HomeScreenOne()), );

                },
                child: Text('Registar',style:Theme.of(context).textTheme.button,),
                height: 50.h,
                minWidth: double.infinity,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.r),),
                color:AppColors.buttonColor,
              ),

            ],
          ),
        ),
      );
    });
  });

  }
}







