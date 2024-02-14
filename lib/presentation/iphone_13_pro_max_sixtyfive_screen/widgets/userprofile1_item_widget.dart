import '../models/userprofile1_item_model.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/widgets/custom_elevated_button.dart';
import 'package:arslan_s_application28/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 12.v,
        ),
        decoration: AppDecoration.fillGreen.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 9.v),
            Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                right: 53.h,
              ),
              child: Row(
                children: [
                  CustomIconButton(
                    height: 54.adaptSize,
                    width: 54.adaptSize,
                    padding: EdgeInsets.all(15.h),
                    decoration: IconButtonStyleHelper.fillTeal,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgVector,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 14.h,
                        bottom: 3.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            userprofile1ItemModelObj.forSchoolsText!,
                            style: CustomTextStyles.titleMediumBold,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 2.v),
                                child: Text(
                                  userprofile1ItemModelObj.freeTrialText!,
                                  style: CustomTextStyles.bodyMediumBlack900_1,
                                ),
                              ),
                              SizedBox(
                                height: 21.v,
                                width: 113.h,
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        height: 21.v,
                                        width: 113.h,
                                        decoration: BoxDecoration(
                                          color: appTheme.teal400,
                                          borderRadius: BorderRadius.circular(
                                            5.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        userprofile1ItemModelObj.resourcesText!,
                                        style: CustomTextStyles
                                            .bodyMediumOnPrimaryContainer,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.v),
            Opacity(
              opacity: 0.4,
              child: Padding(
                padding: EdgeInsets.only(left: 11.h),
                child: Text(
                  userprofile1ItemModelObj.resources!,
                  style: CustomTextStyles.bodySmallBlack900_2,
                ),
              ),
            ),
            SizedBox(height: 5.v),
            Opacity(
              opacity: 0.4,
              child: Padding(
                padding: EdgeInsets.only(left: 11.h),
                child: Text(
                  userprofile1ItemModelObj.resources1!,
                  style: CustomTextStyles.bodySmallBlack900_2,
                ),
              ),
            ),
            SizedBox(height: 19.v),
            Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 2.h,
                      top: 11.v,
                      bottom: 6.v,
                    ),
                    child: Text(
                      userprofile1ItemModelObj.priceText!,
                      style: CustomTextStyles.headlineMediumMedium,
                    ),
                  ),
                  CustomElevatedButton(
                    height: 46.v,
                    width: 124.h,
                    text: "lbl_choose_plan".tr,
                    margin: EdgeInsets.only(top: 11.v),
                    buttonStyle: CustomButtonStyles.fillPrimaryTL23,
                    buttonTextStyle: CustomTextStyles.labelLargeBold,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
