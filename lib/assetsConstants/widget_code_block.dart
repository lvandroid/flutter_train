import 'package:flutter/material.dart';
import 'package:flutter_train/assetsConstants/myColors.dart';
import 'package:flutter_train/constants/widget_key_constants.dart';

class WidgetCodeBlock {
  static const TextStyle codePinkStyle = TextStyle(color: MyColors.code_pink);
  static const TextStyle codeYellowStyle =
      TextStyle(color: MyColors.code_yellow);
  static const TextStyle codeWhiteStyle = TextStyle(color: Colors.white);
  static const TextStyle codeBlueStyle = TextStyle(color: MyColors.code_blue);
  static const TextStyle codeOrangeStyle = TextStyle(color: Colors.orange);

  static const TextSpan _DOT = TextSpan(text: '.', style: codeWhiteStyle);
  static const TextSpan _LEFT_PARENTHESES =
      TextSpan(text: '(', style: codeWhiteStyle);
  static const TextSpan _RIGHT_PARENTHESES =
      TextSpan(text: ')', style: codeWhiteStyle);
  static const TextSpan COMMA = TextSpan(text: ', ', style: codeWhiteStyle);
  static const TextSpan COMMA_ORANGE =
      TextSpan(text: ', ', style: codeOrangeStyle);
  static const TextSpan _WIDTH =
      TextSpan(text: 'width: ', style: codeWhiteStyle);
  static const TextSpan _HEIGHT =
      TextSpan(text: 'height: ', style: codeWhiteStyle);
  static final TextSpan _codeColorOrangeAccent = TextSpan(
    children: <TextSpan>[
      _codeColorWhite,
      _codeOrangeAccent,
      COMMA,
    ],
  );

  static final TextSpan _circular =
      TextSpan(text: 'circular', style: codeYellowStyle);
  static final TextSpan _4 = TextSpan(text: '4.0', style: codeBlueStyle);
  static final TextSpan _codeBoxDecorationCircular = TextSpan(children: [
    TextSpan(text: SMALL_BORDER_RADIUS, style: codeWhiteStyle),
    TextSpan(text: BORDER_RADIUS, style: codeYellowStyle),
    _DOT,
    _circular,
    _LEFT_PARENTHESES,
    _4,
    _RIGHT_PARENTHESES,
  ]);

  static final BoxDecoration decorationCodeBg = BoxDecoration(
      borderRadius: BorderRadius.circular(4.0), color: MyColors.code_bg);
  static final EdgeInsets edge4 = EdgeInsets.all(4.0);
  static final EdgeInsets edge8 = EdgeInsets.all(8.0);
  static final EdgeInsets edge12 = EdgeInsets.all(12.0);
  static final EdgeInsets edge16 = EdgeInsets.all(16.0);
  static const TextSpan textSpanEdgeInsets = TextSpan(
    text: ' EdgeInsets',
    style: codeYellowStyle,
    children: <TextSpan>[
      _DOT,
    ],
  );

  //color:
  static const TextSpan _codeColorWhite = TextSpan(
    text: COLOR,
    style: codeWhiteStyle,
  );

  //Colors.orangeAccent
  static const TextSpan _codeOrangeAccent = TextSpan(children: <TextSpan>[
    TextSpan(
      text: 'Colors.',
      style: codeWhiteStyle,
    ),
    TextSpan(
      text: 'orangeAccent',
      style: codePinkStyle,
    )
  ]);

  static const TextSpan _textSpan8 = TextSpan(
    text: '8.0',
    style: codeBlueStyle,
  );

  static const TextSpan _LEFT = TextSpan(
    text: 'left:',
    style: codeWhiteStyle,
  );

  static const TextSpan _TOP = TextSpan(
    text: ', top:',
    style: codeWhiteStyle,
  );
  static const TextSpan _RIGHT = TextSpan(
    text: ', right:',
    style: codeWhiteStyle,
  );
  static const TextSpan _BOTTOM = TextSpan(
    text: ', bottom:',
    style: codeWhiteStyle,
  );
  static const TextSpan _textSpanLTRB = TextSpan(
    children: <TextSpan>[
      _LEFT,
      TextSpan(text: '4.0', style: codeBlueStyle),
      _TOP,
      TextSpan(text: '8.0', style: codeBlueStyle),
      _RIGHT,
      TextSpan(text: '12.0', style: codeBlueStyle),
      _BOTTOM,
      TextSpan(text: '16.0', style: codeBlueStyle),
    ],
  );

  //代码语句 padding: EdgeInsets.all(8.0)
  static const TextSpan textSpanPaddingAll = TextSpan(
    text: PADDING,
    style: codeWhiteStyle,
    children: <TextSpan>[
      textSpanEdgeInsets,
      TextSpan(text: 'all', style: codeYellowStyle),
      _LEFT_PARENTHESES,
      _textSpan8,
      _RIGHT_PARENTHESES,
    ],
  );

  //代码语句 margin: EdgeInsets.all(8.0)
  static const TextSpan textSpanMarginAll = TextSpan(
    text: MARGIN,
    style: codeWhiteStyle,
    children: <TextSpan>[
      textSpanEdgeInsets,
      TextSpan(text: 'all', style: codeYellowStyle),
      _LEFT_PARENTHESES,
      _textSpan8,
      _RIGHT_PARENTHESES,
    ],
  );

  //代码语句 padding: EdgeInsets.only(left:4.0,top:8.0,right:12.0,bottom:16.0)
  static const TextSpan textSpanPaddingOnly = TextSpan(
    text: PADDING,
    style: codeWhiteStyle,
    children: <TextSpan>[
      textSpanEdgeInsets,
      TextSpan(text: 'only', style: codeYellowStyle),
      _LEFT_PARENTHESES,
      _textSpanLTRB,
      _RIGHT_PARENTHESES,
    ],
  );

  //代码语句 margin: EdgeInsets.only(left:4.0,top:8.0,right:12.0,bottom:16.0)
  static const TextSpan textSpanMarginOnly = TextSpan(
    text: MARGIN,
    style: codeWhiteStyle,
    children: <TextSpan>[
      textSpanEdgeInsets,
      TextSpan(text: 'only', style: codeYellowStyle),
      _LEFT_PARENTHESES,
      _textSpanLTRB,
      _RIGHT_PARENTHESES,
    ],
  );

//      decoration: BoxDecoration(
//        color: Colors.orangeAccent,
//        borderRadius: BorderRadius.circular(8.0),
//      ),
  static final TextSpan textSpanDecorationCircular =
      TextSpan(children: <TextSpan>[
    TextSpan(text: DECORATION, style: codeWhiteStyle),
    TextSpan(text: BOX_DECORATION, style: codeYellowStyle),
    _LEFT_PARENTHESES,
    _codeColorOrangeAccent,
    _codeBoxDecorationCircular,
  ]);

  // alignment: Alignment.topRight;
  static final Container alignmentTopRight = Container(
    decoration: decorationCodeBg,
    padding: edge8,
    margin: edge4,
    child: RichText(
      text: TextSpan(
        children: [
          TextSpan(text: 'alignment: ', style: codeWhiteStyle),
          TextSpan(text: 'Alignment', style: codeWhiteStyle),
          _DOT,
          TextSpan(text: 'topRight', style: codePinkStyle),
        ],
      ),
    ),
  );

  // alignment: Alignment.center;
  static final Container alignmentCenter = Container(
    decoration: decorationCodeBg,
    padding: edge8,
    margin: edge4,
    child: RichText(
      text: TextSpan(
        children: [
          TextSpan(text: 'alignment: ', style: codeWhiteStyle),
          TextSpan(text: 'Alignment', style: codeWhiteStyle),
          _DOT,
          TextSpan(text: 'center', style: codePinkStyle),
        ],
      ),
    ),
  );

  //paddingOnly的代码模块
  static final Container paddingOnly = Container(
    decoration: decorationCodeBg,
    padding: edge8,
    margin: edge4,
    child: RichText(
      text: textSpanPaddingOnly,
    ),
  );

  //PaddingAll的代码模块
  static final Container paddingAll = Container(
    decoration: decorationCodeBg,
    padding: edge8,
    margin: edge4,
    child: RichText(
      text: textSpanPaddingAll,
    ),
  );

  //MarginAll的代码模块
  static final Container marginOnly = Container(
    decoration: decorationCodeBg,
    padding: edge8,
    margin: edge4,
    child: RichText(
      text: textSpanMarginOnly,
    ),
  );

  //MarginAll的代码模块
  static final Container marginAll = Container(
    decoration: decorationCodeBg,
    padding: edge8,
    margin: edge4,
    child: RichText(
      text: textSpanMarginAll,
    ),
  );

//    decoration: BoxDecoration(
//        color: Colors.orangeAccent,
//        borderRadius: BorderRadius.circular(8.0),
//      ),
  static final Container blockDecoration = Container(
    decoration: decorationCodeBg,
    padding: edge8,
    margin: edge4,
    child: RichText(text: textSpanDecorationCircular),
  );

  // constraints: BoxConstraints.expand(width: 200, height: 100);
  static final Container blockConstraintsExpand = Container(
    decoration: decorationCodeBg,
    padding: edge8,
    margin: edge4,
    child: RichText(
      text: TextSpan(children: [
        TextSpan(text: 'constraints: ', style: codeWhiteStyle),
        TextSpan(text: BOX_CONSTRAINTS, style: codeYellowStyle),
        _DOT,
        TextSpan(text: 'expand', style: codeYellowStyle),
        _LEFT_PARENTHESES,
        _WIDTH,
        TextSpan(text: '200', style: codeBlueStyle),
        COMMA_ORANGE,
        _HEIGHT,
        TextSpan(text: '100', style: codeBlueStyle),
        _RIGHT_PARENTHESES,
      ]),
    ),
  );

  // transform: Matrix4.rotationX(0.5);
  static final Container blockTransformX = Container(
    decoration: decorationCodeBg,
    padding: edge8,
    margin: edge4,
    child: RichText(
      text: TextSpan(children: [
        TextSpan(text: 'transform: ', style: codeWhiteStyle),
        TextSpan(text: MATRIX4, style: codeYellowStyle),
        _DOT,
        TextSpan(text: 'rotationX', style: codeYellowStyle),
        _LEFT_PARENTHESES,
        TextSpan(text: '0.5', style: codeBlueStyle),
        _RIGHT_PARENTHESES,
      ]),
    ),
  );

  // transform: Matrix4.rotationY(0.5);
  static final Container blockTransformY = Container(
    decoration: decorationCodeBg,
    padding: edge8,
    margin: edge4,
    child: RichText(
      text: TextSpan(children: [
        TextSpan(text: 'transform: ', style: codeWhiteStyle),
        TextSpan(text: MATRIX4, style: codeYellowStyle),
        _DOT,
        TextSpan(text: 'rotationY', style: codeYellowStyle),
        _LEFT_PARENTHESES,
        TextSpan(text: '0.5', style: codeBlueStyle),
        _RIGHT_PARENTHESES,
      ]),
    ),
  );

  // transform: Matrix4.rotationZ(0.5);
  static final Container blockTransformZ = Container(
    decoration: decorationCodeBg,
    padding: edge8,
    margin: edge4,
    child: RichText(
      text: TextSpan(children: [
        TextSpan(text: 'transform: ', style: codeWhiteStyle),
        TextSpan(text: MATRIX4, style: codeYellowStyle),
        _DOT,
        TextSpan(text: 'rotationZ', style: codeYellowStyle),
        _LEFT_PARENTHESES,
        TextSpan(text: '0.5', style: codeBlueStyle),
        _RIGHT_PARENTHESES,
      ]),
    ),
  );
}
