import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllEWxpensessItemHeader extends StatelessWidget{
  final String image;
  final Color? imageBackground, imageColor;
  const AllEWxpensessItemHeader({super.key, required this.image, this.imageBackground, this.imageColor});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration:  ShapeDecoration(
                  color: imageBackground??const Color(0xFFFAFAFA),
                  shape: OvalBorder(),
                  ),
                child: Center(child: SvgPicture.asset(
                  image,
                  colorFilter: ColorFilter.mode(imageColor??Color(0xFF4EB7F2), BlendMode.srcIn),
                 ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
            angle: -1.57079633*2,
            child:  Icon(
              Icons.arrow_back_ios_new_outlined,
              color:imageColor==null? Color(0xFF064061):Colors.white,
            ),
            ),
      ],
    );
  }
}