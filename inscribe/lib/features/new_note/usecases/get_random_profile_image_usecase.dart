import 'dart:math';

import 'package:inscribe/core/domain/model/usecase.dart';

class GetRandomProfileImageUseCase extends UseCase {
  String call() {
    int numberOfAssets =
        10; // Adjust this according to the number of assets in the folder
    int randomIndex = Random().nextInt(numberOfAssets) + 1;
    return 'assets/images/profile_images/$randomIndex.jpg';
  }
}
