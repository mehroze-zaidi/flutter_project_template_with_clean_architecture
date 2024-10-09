import 'package:flutter/material.dart';

class ScreenBody extends StatelessWidget {
  const ScreenBody(
      {super.key,
      required this.child,
      this.enableScroll = true,
      this.appBar,
      this.bottomNAvBar});

  final Widget child;
  final bool enableScroll;
  final AppBar? appBar;
  final Widget? bottomNAvBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,

      body: SafeArea(
          top: false,
          child: enableScroll
              ? SingleChildScrollView(

                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  child: child)
              : child),
      bottomNavigationBar: bottomNAvBar,
    );
  }
}
