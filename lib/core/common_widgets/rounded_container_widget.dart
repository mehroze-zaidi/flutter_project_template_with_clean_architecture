
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';




class RoundedContainerWidget extends StatelessWidget {
  final Widget? child;
  final double? width;
  final double? height;
  final double borderRadius;
  final Color? color;
  final Color? borderColor;
  final double blurRadius;
  final double borderWidth;
  final double spreadRadius;
  final Color? shadowColor;
  final bool? showBorder;
  final bool showShadow;
  final Offset? shadowOffset;
  final Gradient? gradient;
  final BorderRadiusGeometry? borderRadiusGeometry;
  final double? borderSideAlignment;
  const RoundedContainerWidget(
      {super.key,
      this.child,
      this.width,
      this.height,
      this.borderColor ,
        this.gradient,
      this.color,
      this.blurRadius = 12,
      this.spreadRadius = 0,
      this.borderRadius = 12,
      this.borderWidth = 1,
      this.showBorder = true,
      this.shadowOffset,
      this.shadowColor,
      this.borderRadiusGeometry,this.showShadow=true,this.borderSideAlignment});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: width,
      height: height,


      decoration: BoxDecoration(
          color: color ??  AppColors.baseWhiteColor,
          gradient:gradient ,
          boxShadow: showShadow ? [
            BoxShadow(
              color: shadowColor ?? AppColors.baseBlackColor.withValues(alpha: .2),
              blurRadius: blurRadius,
              spreadRadius: spreadRadius,
              offset: shadowOffset ?? const Offset(0, 3),
            )
          ]:null,
          border: showBorder!
              ? Border.all(
            strokeAlign:borderSideAlignment ?? BorderSide.strokeAlignInside,
                  color:  borderColor??  AppColors.baseWhiteColor,
                  width:   borderWidth )
              : null,
          borderRadius: borderRadiusGeometry ?? BorderRadius.all(Radius.circular(borderRadius))),
      child: child,
    );
  }
}
