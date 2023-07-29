import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AppShimmerEffectView extends StatelessWidget {
  final double? height;
  final double? width;
  final double? borderRadius;

  const AppShimmerEffectView({Key? key, this.height, this.width, this.borderRadius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Color(0xffEDEEF3),
      highlightColor: Colors.white,
      child: Container(
        height: height ?? 30,
        width: width ?? 50,
        decoration: BoxDecoration(
          color: Color(0xffEDEEF3),
          borderRadius: BorderRadius.circular(borderRadius ?? 4),
        ),
      ),
    );
  }
}
