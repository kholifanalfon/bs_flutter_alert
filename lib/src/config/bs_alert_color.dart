import 'package:flutter/material.dart';

/// Class to set color of [BsAlert]
class BsAlertColor {
  /// Construct [BsAlertColor]
  const BsAlertColor({
    required this.color,
    required this.backgroundColor,
    required this.borderColor,
  });

  /// define color of [BsAlert]
  final Color color;

  /// define backgroundColor of [BsAlert]
  final Color backgroundColor;

  /// define borderColor of [BsAlert]
  final Color borderColor;

  /// define alert color primary
  static const BsAlertColor primary = BsAlertColor(
    color: Color(0xff084298),
    backgroundColor: Color(0xffcfe2ff),
    borderColor: Color(0xffb6d4fe),
  );

  /// define alert color secondary
  static const BsAlertColor secondary = BsAlertColor(
    color: Color(0xff41464b),
    backgroundColor: Color(0xffe2e3e5),
    borderColor: Color(0xffd3d6d8),
  );

  /// define alert color success
  static const BsAlertColor success = BsAlertColor(
    color: Color(0xff0f5132),
    backgroundColor: Color(0xffd1e7dd),
    borderColor: Color(0xffbadbcc),
  );

  /// define alert color danger
  static const BsAlertColor danger = BsAlertColor(
    color: Color(0xff842029),
    backgroundColor: Color(0xfff8d7da),
    borderColor: Color(0xfff5c2c7),
  );

  /// define alert color warning
  static const BsAlertColor warning = BsAlertColor(
    color: Color(0xff664d03),
    backgroundColor: Color(0xfffff3cd),
    borderColor: Color(0xffffecb5),
  );

  /// define alert color info
  static const BsAlertColor info = BsAlertColor(
    color: Color(0xff055160),
    backgroundColor: Color(0xffcff4fc),
    borderColor: Color(0xffb6effb),
  );

  /// define alert color light
  static const BsAlertColor light = BsAlertColor(
    color: Color(0xff636464),
    backgroundColor: Color(0xfffefefe),
    borderColor: Color(0xfffdfdfe),
  );

  /// define alert color dark
  static const BsAlertColor dark = BsAlertColor(
      color: Color(0xff141619),
      backgroundColor: Color(0xffd3d3d4),
      borderColor: Color(0xffbcbebf));
}