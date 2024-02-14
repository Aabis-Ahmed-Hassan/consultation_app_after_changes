import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.green50,
                  borderRadius: BorderRadius.circular(12.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(8.h),
      );
  static BoxDecoration get outlineOnPrimaryContainer => BoxDecoration(
        color: appTheme.green300,
        borderRadius: BorderRadius.circular(27.h),
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          width: 3.h,
        ),
      );
  static BoxDecoration get outlineOnPrimaryContainerTL15 => BoxDecoration(
        color: appTheme.black900.withOpacity(0.3),
        borderRadius: BorderRadius.circular(15.h),
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          width: 1.h,
        ),
      );
  static BoxDecoration get fillPrimaryTL11 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(11.h),
      );
  static BoxDecoration get outlineOnPrimaryContainerTL10 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(10.h),
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(0.4),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnPrimaryContainerTL101 => BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(0.4),
          width: 1.h,
        ),
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal100,
        borderRadius: BorderRadius.circular(27.h),
      );
}
