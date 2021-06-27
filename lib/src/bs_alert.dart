import 'package:bs_flutter_alert/bs_flutter_alert.dart';
import 'package:bs_flutter_utils/bs_flutter_utils.dart';
import 'package:flutter/material.dart';

/// Wodget bootstrap alert
class BsAlert extends StatefulWidget {
  /// Construct [BsAlert]
  const BsAlert({
    Key? key,
    this.visibility = BsVisibility.block,
    this.closeButton = false,
    this.heading,
    this.style = BsAlertStyle.primary,
    this.textStyle,
    this.headingTextStyle,
    this.margin,
    this.padding,
    this.child,
    this.onClose,
  }) : super(key: key);

  /// define visibility [BsAlert]
  final BsVisibility visibility;

  /// define heading [BsAlert]
  final Widget? heading;

  /// define closeButton [BsAlert]
  final bool closeButton;

  /// define style [BsAlert]
  final BsAlertStyle style;

  /// define textStyle [BsAlert]
  final TextStyle? textStyle;

  /// define headingTextStyle [BsAlert]
  final TextStyle? headingTextStyle;

  /// define margin [BsAlert]
  final EdgeInsetsGeometry? margin;

  /// define padding [BsAlert]
  final EdgeInsetsGeometry? padding;

  /// define onClose [BsAlert]
  final VoidCallback? onClose;

  /// define child [BsAlert]
  final Widget? child;

  @override
  State<StatefulWidget> createState() {
    return _BsAlertState();
  }
}

class _BsAlertState extends State<BsAlert> {
  bool _visibility = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(microseconds: 500), () {
      BreakPoint breakPoint = BreakPoint.of(context);
      _visibility = widget.visibility.breakPoints.contains(breakPoint.state);
    });
  }

  @override
  Widget build(BuildContext context) {
    return !_visibility
        ? Container()
        : Container(
      margin: widget.margin,
      padding:
      widget.padding == null ? EdgeInsets.all(15.0) : widget.padding,
      decoration: BoxDecoration(
          color: widget.style.color!.backgroundColor,
          borderRadius: widget.style.borderRadius,
          border: Border.all(
              color: widget.style.color!.borderColor, width: 0.5)),
      child: DefaultTextStyle(
        style: TextStyle(color: widget.style.color!.color, fontSize: 14.0)
            .merge(widget.textStyle),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    widget.heading == null
                        ? Container()
                        : DefaultTextStyle(
                      style: TextStyle(
                          color: widget.style.color!.color,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                      child: Container(
                        padding: EdgeInsets.only(bottom: 15.0),
                        child: widget.heading,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(child: Container(child: widget.child)),
                      ],
                    )
                  ],
                )),
            !widget.closeButton
                ? Container(width: 0)
                : Container(
              child: TextButton(
                style: TextButton.styleFrom(
                  minimumSize: Size(20.0, 20.0),
                ),
                onPressed: () => _closeAlert(),
                child: Icon(Icons.close,
                    size: 14.0, color: widget.style.color!.color),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _closeAlert() {
    setState(() {
      _visibility = false;
      if (widget.onClose != null) widget.onClose!();
    });
  }
}