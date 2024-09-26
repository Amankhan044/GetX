import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  RxString image = "".obs;
  Future getImage() async {
    final ImagePicker imagePicker = ImagePicker();
    final imagePath = await imagePicker.pickImage(source: ImageSource.camera);
    if (imagePath != null) {
      image.value = imagePath.path.toString();
    } else {
      return null;
    }
  }
}
