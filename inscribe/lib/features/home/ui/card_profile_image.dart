import 'dart:io';

import 'package:flutter/material.dart';
import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';

const cardProfileImageSize = 50.0;

class CardProfileImage extends StatelessWidget {
  const CardProfileImage({super.key, required this.note});

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
                note.assetImage,
                fit: BoxFit.cover,
              ),
      ),
    );
  }
}
