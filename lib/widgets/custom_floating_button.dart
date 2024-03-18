import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomFloatingButton extends StatelessWidget {
  CustomFloatingButton({
    Key? key,
    this.alignment,
    this.backgroundColor,
    this.onTap,
    this.width,
    this.height,
    this.decoration,
    this.child,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final Color? backgroundColor;

  final VoidCallback? onTap;

  final double? width;

  final double? height;

  final BoxDecoration? decoration;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: fabWidget,
          )
        : fabWidget;
  }

  Widget get fabWidget => FloatingActionButton(
        backgroundColor: backgroundColor,
        onPressed: onTap,
        child: Container(
          alignment: Alignment.center,
          width: width ?? 0,
          height: height ?? 0,
          decoration: decoration ??
              BoxDecoration(
                color: appTheme.gray50,
                borderRadius: BorderRadius.circular(27.h),
              ),
          child: child,
        ),
      );
}

/// Extension on [CustomFloatingButton] to facilitate inclusion of all types of border style etc
extension FloatingButtonStyleHelper on CustomFloatingButton {
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo900,
        borderRadius: BorderRadius.circular(27.h),
      );
  static BoxDecoration get gradientGreenToGreen => BoxDecoration(
        borderRadius: BorderRadius.circular(27.h),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.49, 1),
          colors: [
            appTheme.green90001.withOpacity(0.92),
            appTheme.green900,
          ],
        ),
      );
}
