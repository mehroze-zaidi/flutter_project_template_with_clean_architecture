// import 'package:cached_network_image/cached_network_image.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:fedman_admin_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';



class CustomCachedImageWidget extends StatelessWidget {
  const CustomCachedImageWidget(
      {super.key,
        required this.url,
        this.width = double.maxFinite,
        this.height = 100});

  final String url;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: height,
      width: width,
      fit: BoxFit.fill,
      imageUrl: url,

      errorWidget: (context, error, stackTrace) {
        return const Icon(Icons.broken_image);
      },
      placeholder:  (p0, p1) {
        return  Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(color: AppColors.primaryColor,),
            ));
      },
    );
    //Image.network(gifUrl,width: width,height: height,fit: BoxFit.fill,);
    //   CachedNetworkImage(width: width,height: height,fit: BoxFit.fill,placeholder:(context, url) {
    //   return const CircularProgressIndicator();
    // },imageUrl: gifUrl);
  }
}
