import 'package:assignment_test/constants/app_assets.dart';
import 'package:assignment_test/constants/apps_textstyle.dart';
import 'package:assignment_test/widget/app_image_assets.dart';
import 'package:flutter/material.dart';

class CommentView extends StatelessWidget {
  CommentView({Key? key, required this.profile, this.name, this.subName, this.description, this.favCount, this.commentCount}) : super(key: key);
  String? profile = "";
  String? name = "";
  String? subName = "";
  String? description = "";
  String? favCount = "";
  String? commentCount = "";

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: AppImageAsset(
                image: profile,
                height: 40,
                width: 40,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(width: width * 0.01),
            Row(
              children: [
                Text(
                  name ?? "",
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
                  subName ?? "",
                  style: AppsStyle.grey10w500,
                ),
              ],
            ),
            const Spacer(),
            AppImageAsset(
              image: Assets.moreIcon,
              width: 12,
              height: 12,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                description ?? "",
                style: AppsStyle.blackLight12w400,
              ),
              SizedBox(height: height * 0.01),
              Row(
                children: [
                  favCount == "" || favCount == null
                      ? const SizedBox()
                      : Row(
                          children: [
                            AppImageAsset(
                              image: Assets.favIcon,
                              width: 16,
                              height: 16,
                            ),
                            SizedBox(width: width * 0.01),
                            Text(
                              favCount ?? "",
                              style: AppsStyle.grey12w400,
                            ),
                          ],
                        ),
                  commentCount == "" || commentCount == null
                      ? const SizedBox()
                      : Row(
                          children: [
                            SizedBox(width: width * 0.03),
                            AppImageAsset(
                              image: Assets.commentIcon,
                              width: 16,
                              height: 16,
                            ),
                            SizedBox(width: width * 0.01),
                            Text(
                              commentCount ?? "",
                              style: AppsStyle.grey12w400,
                            ),
                          ],
                        ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
