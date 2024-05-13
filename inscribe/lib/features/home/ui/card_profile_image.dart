import 'package:flutter/material.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';

const cardProfileImageSize = 50.0;

class CardProfileImage extends StatelessWidget {
  const CardProfileImage({super.key, required this.imageName});

  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardProfileImageSize,
      height: cardProfileImageSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColorScheme.of(context).beige,
          width: 3,
        ),
      ),
      child: ClipOval(
        child: Image.asset(
          imageName,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
