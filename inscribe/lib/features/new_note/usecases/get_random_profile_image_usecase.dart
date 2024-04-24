import 'dart:math';

import 'package:inscribe/core/domain/model/usecase.dart';

const assetProfileImagesNumber =
    10; // Adjust this according to the number of assets in the folder

class GetRandomProfileImageUseCase extends UseCase {
  String call() {
    int numberOfAssets = assetProfileImagesNumber;
    int randomIndex = Random().nextInt(numberOfAssets) + 1;
    return 'assets/images/profile_images/$randomIndex.jpg';
  }
}
