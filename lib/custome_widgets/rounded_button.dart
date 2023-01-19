import 'package:flutter/material.dart';

class golbutton extends StatelessWidget {

  final String btnname;
  final Icon? icon;
  final Color? bgcolor;
  final TextStyle? textStyle;
  final VoidCallback? callback;




  golbutton({
     required this.btnname,
      this.icon,
      this.bgcolor,
      this.textStyle,
      this.callback
  });



  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {
      callback!();
    },
      child: icon !=null ? Row(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon!,
        Text(btnname,style: textStyle)
      ],


    ) : Text(btnname,style: textStyle,),
    style: ElevatedButton.styleFrom(
        foregroundColor: bgcolor,
        shadowColor: bgcolor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            bottomRight: Radius.circular(50)

        ))

    ),
    );
  }
}

    