import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/features/new_note/bloc/new_note_bloc.dart';
import 'package:inscribe/features/new_note/usecases/get_random_profile_image_usecase.dart';

const selectImage = "SELECT";
const removeOrRandoizeImage = "REMOVE OR RANDONIZE";

class CircleImage extends StatefulWidget {
  CircleImage({super.key, this.note});

  final Note? note;

  @override
  State<CircleImage> createState() => _CircleImageState();
}

class _CircleImageState extends State<CircleImage> {
  final _getRandomProfileImageUseCase = GetRandomProfileImageUseCase();
  final NewNoteBloc _bloc = IC.getIt();

  void _openImagePicker() async {
    XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      _registerChanges();
      _bloc.add(UpdateGalleryImage(image: File(image.path)));
    }
  }

  void _removeOrRandomizeImage() async {
    if (widget.note?.galleryImage != null) {
      _registerChanges();
      _bloc.add(UpdateGalleryImage(image: null));
    } else {
      _registerChanges();
      _bloc.add(UpdateAssetImage(assetImage: _getRandomProfileImageUseCase()));
    }
  }

  void _registerChanges() {
    _bloc.add(RegisterChanges());
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
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
                child: (widget.note?.galleryImage != null)
                    ? Image.file(
                        File.fromUri(widget.note!.galleryImage!),
                        fit: BoxFit.cover,
                      )
                    : (widget.note?.assetImage != null &&
                            widget.note?.assetImage != "")
                        ? Image.asset(
                            (widget.note?.assetImage == null ||
                                    widget.note?.assetImage == "")
                                ? _getRandomProfileImageUseCase()
                                : widget.note!.assetImage,
                            fit: BoxFit.cover,
                          )
                        : Container(
                            color: AppColorScheme.of(context).white,
                          ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 80,
            child: Center(
              child: PopupMenuButton(
                child: ClipOval(
                  child: Container(
                    color: lightAppColorScheme.beige,
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.image_outlined,
                      color: lightAppColorScheme.gray,
                    ),
                  ),
                ),
                onSelected: (value) {
                  if (value == selectImage) {
                    _openImagePicker();
                  } else {
                    _removeOrRandomizeImage();
                  }
                },
                itemBuilder: (BuildContext context) {
                  return [
                    PopupMenuItem(
                      value: selectImage,
                      child: Text(
                          Translations.of(context).newNoteScreen.select_image),
                    ),
                    PopupMenuItem(
                      value: removeOrRandoizeImage,
                      child: Text((widget.note?.galleryImage == null)
                          ? Translations.of(context)
                              .newNoteScreen
                              .randomize_illusrtation
                          : Translations.of(context)
                              .newNoteScreen
                              .remove_image),
                    ),
                  ];
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
