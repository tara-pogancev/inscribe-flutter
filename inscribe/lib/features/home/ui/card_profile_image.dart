import 'dart:io';

import 'package:flutter/material.dart';
import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/features/new_note/usecases/get_random_profile_image_usecase.dart';

const cardProfileImageSize = 50.0;

class CardProfileImage extends StatelessWidget {
  CardProfileImage({super.key, required this.note});
  final _getRandomProfileImageUseCase = GetRandomProfileImageUseCase();

  final Note note;

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
        child: (note.galleryImage != null)
            ? Image.file(
                File.fromUri(note.galleryImage!),
                fit: BoxFit.cover,
              )
            : Image.asset(
                (note.assetImage == "")
                    ? _getRandomProfileImageUseCase()
                    : note.assetImage,
                fit: BoxFit.cover,
              ),
      ),
    );
  }
}
