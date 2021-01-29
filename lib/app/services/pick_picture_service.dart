import 'dart:io';
import 'package:HealthBook/app/interfaces/pick_picture_interface.dart';
import 'package:image_picker/image_picker.dart';

class PickPictureService implements IPickPicture{


  final picker = ImagePicker();

  @override
  Future<File>takePhotoCamera() async {
    File file;
    var image = await picker.getImage(source: ImageSource.camera,maxHeight: 512,maxWidth: 512);
    file = File(image.path);
    return file;
  }

  @override
  Future<File> takePhotoGallery() async {
    File file;
    var image = await picker.getImage(source: ImageSource.gallery,maxHeight: 512,maxWidth: 512);
    file = File(image.path);
    return file;
  }


}