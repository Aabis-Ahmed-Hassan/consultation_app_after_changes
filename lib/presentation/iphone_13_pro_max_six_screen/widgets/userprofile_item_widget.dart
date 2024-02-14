import '../models/userprofile_item_model.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 169.v,
            width: 353.h,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    padding: EdgeInsets.all(21.h),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imgUnion,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 69.v,
                          width: 301.h,
                          margin: EdgeInsets.only(left: 10.h),
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  userprofileItemModelObj.oxfordClassA!,
                                  style: CustomTextStyles
                                      .titleMediumOnPrimaryContainer,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 21.v),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 88.h,
                                        margin: EdgeInsets.only(bottom: 22.v),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 3.v,
                                                bottom: 4.v,
                                              ),
                                              child: Text(
                                                userprofileItemModelObj
                                                    .instructor!,
                                                style: CustomTextStyles
                                                    .bodySmallOnPrimaryContainer_1,
                                              ),
                                            ),
                                            Container(
                                              height: 26.adaptSize,
                                              width: 26.adaptSize,
                                              decoration: AppDecoration.fillTeal
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder11,
                                              ),
                                              child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgLock26x26,
                                                height: 26.adaptSize,
                                                width: 26.adaptSize,
                                                alignment: Alignment.center,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      CustomIconButton(
                                        height: 48.v,
                                        width: 38.h,
                                        padding: EdgeInsets.all(10.h),
                                        decoration: IconButtonStyleHelper
                                            .outlineOnPrimaryContainerTL10,
                                        child: CustomImageView(
                                          imagePath: ImageConstant.imgEdit,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 1.v),
                        Container(
                          width: 262.h,
                          margin: EdgeInsets.only(
                            left: 10.h,
                            right: 38.h,
                          ),
                          child: Text(
                            userprofileItemModelObj.loremIpsumDolor!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyMediumOnPrimaryContainer
                                .copyWith(
                              height: 1.46,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.v),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 31.h),
                    child: Row(
                      children: [
                        Opacity(
                          opacity: 0.9,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgClockOnprimarycontainer,
                            height: 15.adaptSize,
                            width: 15.adaptSize,
                          ),
                        ),
                        Opacity(
                          opacity: 0.7,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: Text(
                              userprofileItemModelObj.duration!,
                              style: CustomTextStyles
                                  .labelMediumOnPrimaryContainer,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 31.h),
            child: Row(
              children: [
                Opacity(
                  opacity: 0.9,
                  child: Container(
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    padding: EdgeInsets.all(3.h),
                    decoration:
                        AppDecoration.outlineOnPrimaryContainer1.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgUserOnprimarycontainer,
                      height: 8.adaptSize,
                      width: 8.adaptSize,
                      radius: BorderRadius.circular(
                        1.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.7,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Text(
                      userprofileItemModelObj.lessonsCounter!,
                      style: CustomTextStyles.labelMediumOnPrimaryContainer,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24.v),
        ],
      ),
    );
  }
}
