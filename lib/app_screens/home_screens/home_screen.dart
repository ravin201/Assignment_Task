import 'package:assignment_test/constants/app_assets.dart';
import 'package:assignment_test/constants/apps_textstyle.dart';
import 'package:assignment_test/constants/constant_color.dart';
import 'package:assignment_test/controllers/home_controller.dart';
import 'package:assignment_test/widget/app_image_assets.dart';
import 'package:assignment_test/widget/commet_view.dart';
import 'package:assignment_test/widget/home_widget/image_view.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: ConstantColor.white,
      appBar: AppBar(
        backgroundColor: ConstantColor.white,
        elevation: 0,
        leading: Center(
          child: AppImageAsset(
            image: Assets.backIcon,
            height: 20,
            width: 20,
          ),
        ),
        centerTitle: true,
        title: Text(
          "자유톡",
          style: AppsStyle.black16w700,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: AppImageAsset(
              image: Assets.notificationIcon,
              height: 24,
              width: 24,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: AppImageAsset(
                                image: Assets.profileImg,
                                height: 40,
                                width: 40,
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(width: width * 0.02),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "안녕 나 응애",
                                      style: AppsStyle.black14w700,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 4),
                                      child: AppImageAsset(
                                        image: Assets.expertIcon,
                                        height: 15,
                                        width: 15,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Text(
                                      "1일전",
                                      style: AppsStyle.grey10w500,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "165cm • 53kg",
                                      style: AppsStyle.grey12w400,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                color: ConstantColor.greenLight,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                              child: Text(
                                "팔로우",
                                style: AppsStyle.white12w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.03),
                        Text(
                          "지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?",
                          textAlign: TextAlign.left,
                          style: AppsStyle.black14w700,
                        ),
                        SizedBox(height: height * 0.03),
                        Text(
                          "지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~혹시 어떤 상품이 제일 괜찮았어?\n\n후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이제일 재밌었다던데 맞아???=\n\n올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에 있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!",
                          textAlign: TextAlign.left,
                          style: AppsStyle.blackLight14w500,
                        ),
                        SizedBox(height: height * 0.02),
                        Wrap(
                          children: homeController.hashTagList
                              .map((e) => Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                                    margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(color: const Color(0xffCED3DE), width: 0.6),
                                      color: ConstantColor.whiteLight,
                                    ),
                                    child: Text("#$e", style: AppsStyle.greyExtraLight12w500),
                                  ))
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  HomeImageView(homeController: homeController),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        SizedBox(height: height * 0.03),
                        Row(
                          children: [
                            AppImageAsset(
                              image: Assets.favIcon,
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(width: width * 0.01),
                            Text(
                              "5",
                              style: AppsStyle.grey12w400,
                            ),
                            SizedBox(width: width * 0.03),
                            AppImageAsset(
                              image: Assets.commentIcon,
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(width: width * 0.01),
                            Text(
                              "5",
                              style: AppsStyle.grey12w400,
                            ),
                            SizedBox(width: width * 0.03),
                            AppImageAsset(
                              image: Assets.savedIcon,
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(width: width * 0.05),
                            AppImageAsset(
                              image: Assets.moreIcon,
                              width: 12,
                              height: 12,
                            ),
                            SizedBox(width: width * 0.01),
                          ],
                        ),
                        SizedBox(height: height * 0.03),
                      ],
                    ),
                  ),
                  const Divider(color: Color(0xffF7F8FA), thickness: 2, height: 0),
                  SizedBox(height: height * 0.02),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        CommentView(
                          profile: Assets.profileImg,
                          name: "안녕 나 응애",
                          subName: "1일전",
                          description:
                              "어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도 아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다 괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니 꼭 봐주세용~!",
                          favCount: "5",
                          commentCount: "5",
                        ),
                        SizedBox(height: height * 0.02),
                        Padding(
                          padding: const EdgeInsets.only(left: 48),
                          child: CommentView(
                            profile: Assets.profile2Img,
                            name: "ㅇㅅㅇ",
                            subName: "1일전",
                            description: "오 대박! 라이브 리뷰 오늘 올라온대요? 챙겨봐야겠다",
                            favCount: "5",
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                ],
              ),
            ),
          ),
          Column(
            children: [
              const Divider(color: Color(0xffF7F8FA), thickness: 1, height: 0),
              Container(
                height: 50,
                width: width,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        homeController.onImageButtonPressed();
                      },
                      child: AppImageAsset(
                        image: Assets.galleryIcon,
                        height: 20,
                        width: 20,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: SizedBox(
                          height: 50,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: const UnderlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              hintText: "댓글을 남겨주세요.",
                              hintStyle: AppsStyle.grey12w400,
                              // contentPadding: EdgeInsets.zero,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "등록",
                      style: AppsStyle.grey12w400,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
