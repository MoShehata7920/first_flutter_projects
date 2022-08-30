
import 'package:flutter/material.dart';

Widget defaultButton ({
  double width = double.infinity ,
  double radius = 0.0,
  required Color background ,
  required Function? function ,
  required String text ,

} ) =>
    Container(
      width:  width,
      height: 40,
      child: MaterialButton(
        onPressed: () {
          function!();
          },
        child: Text(
          text.toUpperCase() ,
          style: const TextStyle(
            color: Colors.white ,
          ),
        ) ,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: background,
      ),
    )
;

Widget defaultFormField ({
  required TextEditingController controller ,
  required TextInputType type ,
  required String? Function(String? val)? validate ,
  required String label,
  required IconData prefix,
  Function? onTap ,
  bool isClickable = true ,
  bool isPassword = false ,
  IconData? suffix,
  Function? suffixPressed ,
  Function (String value)? onFieldSubmitted ,
  Function (String value)? onChanged,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword ,
      onFieldSubmitted: (String value){
        onFieldSubmitted!(value);
      },
      onChanged: (String value){
        onChanged!(value);
      },
      onTap: ()
      {
        onTap!() ;
      } ,
      enabled: isClickable ,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null ? IconButton(
            onPressed: (){
              suffixPressed!();
            },
            icon: Icon(
              suffix,
            ),
        ) : null ,
        border: const OutlineInputBorder(),
      ),

      validator: validate,
    );

