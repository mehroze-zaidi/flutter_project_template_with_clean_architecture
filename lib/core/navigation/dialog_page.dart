// Custom DialogPage class for go_router dialog routes
import 'package:flutter/material.dart';

class DialogPage<T> extends Page<T> {
  final Widget Function(BuildContext) builder;
  final bool barrierDismissible;
  final Color? barrierColor;
  final String? barrierLabel;

  const DialogPage({
    required this.builder,
    this.barrierDismissible = true,
    this.barrierColor,
    this.barrierLabel,
    super.key,
    super.name,
    super.arguments,
    super.restorationId,
  });

  @override
  Route<T> createRoute(BuildContext context) {
    return DialogRoute<T>(
      context: context,
      settings: this,
      builder: builder,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor ?? Colors.black54,
      barrierLabel: barrierLabel,
    );
  }
}