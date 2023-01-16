import 'dart:math';
import 'dart:ui';

import 'package:cashee/controllers/teen/home/teen_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class GradientSection extends StatefulWidget {
  const GradientSection({Key? key}) : super(key: key);

  @override
  State<GradientSection> createState() => _GradientSectionState();
}

class _GradientSectionState extends State<GradientSection> {
  @override
  Widget build(BuildContext context) {
    return GetX<TeenHomeController>(
      builder: (controller) {
        return Positioned(
          top: max(
            -TeenHomeController.estimateColorGradientHeight,
            min(TeenHomeController.colorGradientStartOffset,
                TeenHomeController.colorGradientStartOffset - controller.scrollPixels.value),
          ),
          left: 0,
          right: 0,
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(
              sigmaX: 50,
              sigmaY: 50,
              tileMode: TileMode.decal,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Transform.translate(
                  offset: const Offset(0.0, 50),
                  child: Container(
                    height: 220,
                    width: 320,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(100), right: Radius.circular(100)),
                      color: Color(0xff602BFF),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0.0, -80.0),
                  child: Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      color: const Color(0xff00E3EB),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(50.0, 0.0),
                  child: Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      color: const Color(0xffFFF014),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(-50.0, 0.0),
                  child: Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      color: const Color(0xff22F578),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
