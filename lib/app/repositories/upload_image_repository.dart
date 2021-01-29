import 'dart:convert';
import 'dart:io';
import 'package:HealthBook/app/interfaces/upload_image_interface.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';


class UploadImageRepository implements IUploadImage{

  String url = "https://health.lanconi.com.br/upload2.php";

  @override
  Future<String> upload(File image,String filename) async {
      List<int> imageBits = image.readAsBytesSync();
      String baseImage = base64Encode(imageBits);

      Map file = Map<String, dynamic>();
      file['image'] = baseImage;
      file['filename'] = filename;

      var response = await post(url, body: file);

      if(response.statusCode==200){
        dynamic data = jsonDecode(response.body);
        print(data);
        return data['address'];
      }
      else{
        print("problema para enviar para o servidor");
        return null;
      }
    }
  }