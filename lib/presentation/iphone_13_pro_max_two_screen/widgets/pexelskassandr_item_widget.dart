import '../models/pexelskassandr_item_model.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore: must_be_immutable
class PexelskassandrItemWidget extends StatelessWidget {
  PexelskassandrItemWidget(
    this.pexelskassandrItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PexelskassandrItemModel pexelskassandrItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.all(15.h),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: fs.Svg(

              ImageConstant.imgGroup298,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 245.v,
              width: 321.h,
              margin: EdgeInsets.only(left: 1.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPexelsKassandr,
                    height: 245.v,
                    width: 321.h,
                    radius: BorderRadius.circular(
                      15.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgPexelsImageHunter13738219,
                    height: 245.v,
                    width: 321.h,
                    radius: BorderRadius.circular(
                      15.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.v),
            Row(
              children: [
                Container(
                  height: 55.adaptSize,
                  width: 55.adaptSize,
                  padding: EdgeInsets.symmetric(horizontal: 5.h),
                  decoration: AppDecoration.fillTeal.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder27,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgImage2,
                    height: 54.v,
                    width: 44.h,
                    radius: BorderRadius.circular(
                      27.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Column(
                    children: [
                      Text(
                        "lbl_webinar_name".tr,
                        style: theme.textTheme.titleLarge,
                      ),
                      SizedBox(height: 2.v),
                      SizedBox(
                        width: 145.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 60.h,
                              margin: EdgeInsets.only(bottom: 1.v),
                              padding: EdgeInsets.symmetric(
                                horizontal: 5.h,
                                vertical: 1.v,
                              ),
                              decoration: AppDecoration.fillTeal400.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Text(
                                "lbl_2h_35m".tr,
                                style: CustomTextStyles
                                    .bodyMediumOnPrimaryContainer,
                              ),
                            ),
                            Opacity(
                              opacity: 0.4,
                              child: Padding(
                                padding: EdgeInsets.only(top: 2.v),
                                child: Text(
                                  "lbl_feb_12_2022".tr,
                                  style:
                                      CustomTextStyles.bodyMediumBlack90013_1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 3.v),
          ],
        ),
      ),
    );
  }
}
