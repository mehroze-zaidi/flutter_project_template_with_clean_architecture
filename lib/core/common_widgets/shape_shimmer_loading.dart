import 'package:flutter/material.dart';




import 'package:shimmer/shimmer.dart';

import '../constants/app_colors.dart';

class ShapeShimmerLoading extends StatelessWidget {
  const ShapeShimmerLoading({super.key,this.width=50,this.height=50});
final double width;
final double height;
  @override
  Widget build(BuildContext context) {
    return Shimmer(gradient:  const LinearGradient(colors: [AppColors.black26,Colors.black12,AppColors.baseWhiteColor]),
    child: Container(color: Colors.white,width: width,height: height,));
  }
}
