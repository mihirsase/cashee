import 'package:cashee/themer/pallete.dart';
import 'package:cashee/themer/themer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class FooterSection extends StatefulWidget {
  const FooterSection({Key? key}) : super(key: key);

  @override
  State<FooterSection> createState() => _FooterSectionState();
}

class _FooterSectionState extends State<FooterSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _appBar(),
        Expanded(child: Container()),
        _bottomNavigation(),
      ],
    );
  }

  Widget _appBar() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(color: Pallete.interactive3Bg, shape: BoxShape.circle),
            child: SvgPicture.asset("lib/assets/icons/user.svg", height: 24, width: 24),
          ),
          Expanded(child: Container()),
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Pallete.interactive3Bg,
              borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(100.0),
                right: Radius.circular(100.0),
              ),
            ),
            child: Row(
              children: [
                Image.asset("lib/assets/icons/fake_coin.png", height: 16, width: 16),
                const SizedBox(width: 8),
                Text(
                  '100',
                  style: Themer.casheeTypography.body2Highlight.copyWith(
                    color: Pallete.text1,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _bottomNavigation() {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            IgnorePointer(
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Pallete.core02.withOpacity(0),
                      Pallete.core02.withOpacity(0.1),
                      Pallete.core02.withOpacity(0.2),
                      Pallete.core02.withOpacity(0.3),
                      Pallete.core02.withOpacity(0.4),
                      Pallete.core02.withOpacity(0.5),
                      Pallete.core02.withOpacity(0.6),
                      Pallete.core02.withOpacity(0.7),
                      Pallete.core02.withOpacity(0.8),
                      Pallete.core02.withOpacity(0.9),
                      Pallete.core02.withOpacity(1),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('lib/assets/icons/teen_home.png', height: 30, width: 22),
                    Image.asset('lib/assets/icons/teen_education.png', height: 30, width: 22),
                    Image.asset('lib/assets/icons/teen_hub.png', height: 30, width: 22),
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(color: Pallete.core02, width: Get.width, height: 34.0),
      ],
    );
  }
}
