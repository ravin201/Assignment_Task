import 'package:assignment_test/controllers/home_controller.dart';
import 'package:assignment_test/widget/app_image_assets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeImageView extends StatelessWidget {
  HomeImageView({Key? key, required this.homeController}) : super(key: key);
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: Color(0xffEDEEF3),
      child: Stack(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: height / 2,
              enlargeCenterPage: false,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              onPageChanged: (index, reason) {
                homeController.currentImage.value = index;
              },
            ),
            carouselController: homeController.carouselController,
            items: homeController.postImageList.map((i) {
              return Builder(builder: (BuildContext context) {
                return AppImageAsset(
                  image: i,
                  width: width,
                  height: height,
                  fit: BoxFit.fitHeight,
                );
              });
            }).toList(),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: homeController.postImageList.asMap().entries.map((entry) {
                  return Container(
                    width: 6.0,
                    height: 6.0,
                    margin: const EdgeInsets.symmetric(horizontal: 2.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness != Brightness.dark ? Colors.white : Colors.black).withOpacity(
                          homeController.currentImage.value == entry.key ? 1 : 0.5,
                        )),
                  );
                }).toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
