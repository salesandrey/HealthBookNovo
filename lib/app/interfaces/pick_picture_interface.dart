import 'dart:io';

abstract class IPickPicture {

  Future<File> takePhotoCamera();
  Future<File> takePhotoGallery();
}