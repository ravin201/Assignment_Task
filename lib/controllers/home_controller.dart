import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class HomeController extends GetxController {
  final isLoading = false.obs;
  final CarouselController carouselController = CarouselController();
  final currentImage = 0.obs;

  final hashTagList = [
    "2023",
    "TODAYISMONDAY",
    "TOP",
    "POPS!",
    "WOW",
    "ROW",
  ];
  final postImageList = [
    "https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg",
    "https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg",
    "https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg",
    "https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg",
    "https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg",
    "https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg",
  ];

  void onImageButtonPressed() async {
    final ImagePicker imagePicker = ImagePicker();
    try {
      final pickedFile = await imagePicker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 40,
      );
      var file = File(pickedFile!.path);
      print("pickedFile==>${file.lengthSync() / (1024 * 1024)}");
      /*final dir = await path_provider.getTemporaryDirectory();
      final targetPath = "${dir.absolute.path}/${DateTime.now()}.jpg";
      File? compressedImage = await Constant.compressImage(File(pickedFile.path), targetPath);*/
      if (file != null) {
        print("file==>$file");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
