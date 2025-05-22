import 'package:image_picker/image_picker.dart';
import '../services/image_service.dart';

class ImageController {
  final ImageService _imageService = ImageService();

  Future<String?> getImagePath(bool fromCamera) async {
    return await _imageService.pickImage(
        fromCamera ? ImageSource.camera : ImageSource.gallery);
  }
}
