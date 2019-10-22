import 'package:flutter/material.dart';
import 'package:flutter_train/assetsConstants/myColors.dart';
import 'package:flutter_train/assetsConstants/my_style.dart';
import 'package:flutter_train/constants/widget_key_constants.dart';

class WidgetCodeBlock {
  static const TextSpan _DOT =
      TextSpan(text: '.', style: MyStyle.codeWhiteStyle);
  static const TextSpan _LEFT_PARENTHESES =
      TextSpan(text: '(', style: MyStyle.codeWhiteStyle);
  static const TextSpan _RIGHT_PARENTHESES =
      TextSpan(text: ')', style: MyStyle.codeWhiteStyle);
  static const TextSpan TEXT_SPAN_EDGE_INSETS = TextSpan(
    text: ' EdgeInsets',
    style: MyStyle.codeYellowStyle,
    children: <TextSpan>[
      _DOT,
    ],
  );
  static const TextSpan _TEXT_SPAN_8 = TextSpan(
    text: '8.0',
    style: MyStyle.codeBlueStyle,
  );

  static const TextSpan _LEFT = TextSpan(
    text: 'left:',
    style: MyStyle.codeWhiteStyle,
  );

  static const TextSpan _TOP = TextSpan(
    text: ', top:',
    style: MyStyle.codeWhiteStyle,
  );
  static const TextSpan _RIGHT = TextSpan(
    text: ', right:',
    style: MyStyle.codeWhiteStyle,
  );
  static const TextSpan _BOTTOM = TextSpan(
    text: ', bottom:',
    style: MyStyle.codeWhiteStyle,
  );
  static const TextSpan _TEXT_SPAN_LTRB_4_8_12_16 = TextSpan(
    children: <TextSpan>[
      _LEFT,
      TextSpan(text: '4.0', style: MyStyle.codeBlueStyle),
      _TOP,
      TextSpan(text: '8.0', style: MyStyle.codeBlueStyle),
      _RIGHT,
      TextSpan(text: '12.0', style: MyStyle.codeBlueStyle),
      _BOTTOM,
      TextSpan(text: '16.0', style: MyStyle.codeBlueStyle),
    ],
  );

  //代码语句 padding: EdgeInsets.all(8.0)
  static const TextSpan TEXT_SPAN_PADDING_ALL = TextSpan(
    text: PADDING,
    style: MyStyle.codeWhiteStyle,
    children: <TextSpan>[
      TEXT_SPAN_EDGE_INSETS,
      TextSpan(text: 'all', style: MyStyle.codeYellowStyle),
      _LEFT_PARENTHESES,
      _TEXT_SPAN_8,
      _RIGHT_PARENTHESES,
    ],
  );

  //代码语句 margin: EdgeInsets.all(8.0)
  static const TextSpan TEXT_SPAN_MARGIN_ALL = TextSpan(
    text: MARGIN,
    style: MyStyle.codeWhiteStyle,
    children: <TextSpan>[
      TEXT_SPAN_EDGE_INSETS,
      TextSpan(text: 'all', style: MyStyle.codeYellowStyle),
      _LEFT_PARENTHESES,
      _TEXT_SPAN_8,
      _RIGHT_PARENTHESES,
    ],
  );

  //代码语句 padding: EdgeInsets.only(left:4.0,top:8.0,right:12.0,bottom:16.0)
  static const TextSpan TEXT_SPAN_PADDING_ONLY = TextSpan(
    text: PADDING,
    style: MyStyle.codeWhiteStyle,
    children: <TextSpan>[
      TEXT_SPAN_EDGE_INSETS,
      TextSpan(text: 'only', style: MyStyle.codeYellowStyle),
      _LEFT_PARENTHESES,
      _TEXT_SPAN_LTRB_4_8_12_16,
      _RIGHT_PARENTHESES,
    ],
  );

  //代码语句 margin: EdgeInsets.only(left:4.0,top:8.0,right:12.0,bottom:16.0)
  static const TextSpan TEXT_SPAN_MARGIN_ONLY = TextSpan(
    text: MARGIN,
    style: MyStyle.codeWhiteStyle,
    children: <TextSpan>[
      TEXT_SPAN_EDGE_INSETS,
      TextSpan(text: 'only', style: MyStyle.codeYellowStyle),
      _LEFT_PARENTHESES,
      _TEXT_SPAN_LTRB_4_8_12_16,
      _RIGHT_PARENTHESES,
    ],
  );

  //paddingOnly的代码模块
  static final Container BLOCK_PADDING_ONLY = Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0), color: MyColors.code_bg),
    padding: EdgeInsets.all(8.0),
    margin: EdgeInsets.all(4.0),
    child: RichText(
      text: TEXT_SPAN_PADDING_ONLY,
    ),
  );

  //PaddingAll的代码模块
  static final Container BLOCK_PADDING_ALL = Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0), color: MyColors.code_bg),
    padding: EdgeInsets.all(8.0),
    margin: EdgeInsets.all(4.0),
    child: RichText(
      text: TEXT_SPAN_PADDING_ALL,
    ),
  );

  //MarginAll的代码模块
  static final Container BLOCK_MARGIN_ONLY = Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0), color: MyColors.code_bg),
    padding: EdgeInsets.all(8.0),
    margin: EdgeInsets.all(4.0),
    child: RichText(
      text: TEXT_SPAN_MARGIN_ONLY,
    ),
  );

  //MarginAll的代码模块
  static final Container BLOCK_MARGIN_ALL = Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0), color: MyColors.code_bg),
    padding: EdgeInsets.all(8.0),
    margin: EdgeInsets.all(4.0),
    child: RichText(
      text: TEXT_SPAN_MARGIN_ALL,
    ),
  );
}
