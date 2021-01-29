import 'dart:io';

abstract class IPickFile {

  Future<File> takeFileResults();
}