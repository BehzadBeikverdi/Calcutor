import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/themes/theme_colors.dart';

Widget iconButton(BuildContext context, IconData icon, Color color) {
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
        child: Icon(
          icon,
          color: color.withOpacity(.9),
        ),
      ),
    ),
  );
}