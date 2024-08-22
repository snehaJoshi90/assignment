import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String data;
  TextAlign? textAlign;
  TextStyle? style;
  int? maxLines;
  TextOverflow? overflow;

  CustomText(this.data,
      {this.textAlign, this.style, this.maxLines, this.overflow});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: style?.apply(
        fontFamily: 'Arial',
      ),
    );
  }
}