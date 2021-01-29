

import 'dart:io';


abstract class IUploadImage{

  Future<void> upload(File image,String filename);
}