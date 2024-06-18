import 'package:flutter/material.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/features/new_note/usecases/get_random_profile_image_usecase.dart';

class CircleImage extends StatelessWidget {
  CircleImage({super.key, this.imageName});

  final String? imageName;
  final _getRandomProfileImageUseCase = GetRandomProfileImageUseCase();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColorScheme.of(context).beige,
          width: 3,
        ),
      ),
      child: ClipOval(
        child: (imageName != null && imageName != "")
            ? Image.asset(
                imageName ?? _getRandomProfileImageUseCase(),
                fit: BoxFit.cover,
              )
            : Container(
                color: AppColorScheme.of(context).white,
              ),
      ),
    );
  }
}
