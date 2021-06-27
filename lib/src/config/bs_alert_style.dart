import 'package:bs_flutter_alert/bs_flutter_alert.dart';
import 'package:flutter/material.dart';

/// Class to set style of [BsAlert]
class BsAlertStyle {
  /// Constructor [BsAlertStyle]
  const BsAlertStyle({
    this.color,
    this.borderRadius,
  });

  /// define color of [BsAlert]
  final BsAlertColor? color;

  /// define borderRadius of [BsAlert]
  final BorderRadiusGeometry? borderRadius;

  /// define alert style primary
  static const BsAlertStyle primary = BsAlertStyle(
    color: BsAlertColor.primary,
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  );

  /// define alert style secondary
  static const BsAlertStyle secondary = BsAlertStyle(
    color: BsAlertColor.secondary,
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  );

  /// define alert style success
  static const BsAlertStyle success = BsAlertStyle(
    color: BsAlertColor.success,
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  );

  /// define alert style danger
  static const BsAlertStyle danger = BsAlertStyle(
    color: BsAlertColor.danger,
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  );

  /// define alert style warning
  static const BsAlertStyle warning = BsAlertStyle(
    color: BsAlertColor.warning,
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  );

  /// define alert style info
  static const BsAlertStyle info = BsAlertStyle(
    color: BsAlertColor.info,
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  );

  /// define alert style light
  static const BsAlertStyle light = BsAlertStyle(
    color: BsAlertColor.light,
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  );

  /// define alert style dark
  static const BsAlertStyle dark = BsAlertStyle(
    color: BsAlertColor.dark,
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  );
}