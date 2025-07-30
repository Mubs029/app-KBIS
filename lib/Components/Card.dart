import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kamus_indonesia_sahu/text_style.dart';

class LongCourseCard extends StatelessWidget {
  final Color background;
  final String title;
  final String subtitle;

  const LongCourseCard({
    Key? key,
    required this.background,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final isLandscape = mediaQuery.orientation == Orientation.landscape;

    // Calculate card width based on screen size and orientation
    double cardWidth = isLandscape ? screenWidth * 0.4 : screenWidth * 0.4;

    // Calculate font sizes based on orientation
    double fontSizeTitle = isLandscape ? 18.0 : 18.0;
    double fontSizeSubtitle = isLandscape ? 16.0 : 12.0;

    return Container(
      margin: const EdgeInsets.only(
        bottom: 10,
      ),
      padding: const EdgeInsets.only(left: 10),
      width: cardWidth,
      height: 70,
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.light
            ? Colors.white
            : const Color.fromARGB(255, 44, 44, 44),
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 5,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(10),
          Text(
            title,
            style: interTextNormal.copyWith(
              fontSize: fontSizeTitle,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.black
                  : Colors.white,
            ),
          ),
          const Gap(10),
          Text(
            subtitle,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: poppinsTextMedium.copyWith(
              fontSize: fontSizeSubtitle,
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.black
                  : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
