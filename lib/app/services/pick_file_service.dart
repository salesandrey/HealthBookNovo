

import 'dart:io';

import 'package:HealthBook/app/interfaces/pick_file_interface.dart';
import 'package:file_picker/file_picker.dart';

class PickFileService implements IPickFile{



  @override
  Future<File> takeFileResults() async {

    FilePickerResult result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if(result!=null) {
      return File(result.files.single.path);
    }else{
      return null;
    }

  }


}