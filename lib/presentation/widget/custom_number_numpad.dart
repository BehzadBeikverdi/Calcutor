import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/themes/font_size.dart';
import '../../core/themes/theme_colors.dart';

Widget numpad(BuildContext context, String number) {
  return Theme(
    data: ThemeData(splashColor: Colors.black87),
    child: InkWell(
      borderRadius: BorderRadius.circular(50),
      onTap: () {},
      child: Container(
          width: MediaQuery.of(context).size.width * .15,
          height: MediaQuery.of(context).size.height * .08,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: forthColor.withOpacity(.7),
          ),
          child: Center(
            child: Text(
              number,
              style: TextStyle(
                  fontSize: numberSize,
                  fontWeight: FontWeight.w400),
            ),
          )),
    ),
  );
}