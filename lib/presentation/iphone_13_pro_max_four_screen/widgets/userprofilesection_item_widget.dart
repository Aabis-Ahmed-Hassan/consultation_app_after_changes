import '../models/userprofilesection_item_model.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofilesectionItemWidget extends StatelessWidget {
  UserprofilesectionItemWidget(
    this.userprofilesectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilesectionItemModel userprofilesectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 18.h,
          vertical: 12.v,
        ),
        decoration: AppDecoration.fillGreen.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 54.adaptSize,
              width: 54.adaptSize,
              margin: EdgeInsets.only(top: 1.v),
              padding: EdgeInsets.all(15.h),
              decoration: AppDecoration.fillTeal100.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder27,
              ),
              child: CustomIconButton(
                height: 23.adaptSize,
                width: 23.adaptSize,
                padding: EdgeInsets.all(4.h),
                decoration: IconButtonStyleHelper.fillPrimaryTL11,
                alignment: Alignment.topCenter,
                child: CustomImageView(
                  imagePath: ImageConstant.imgUserOnprimarycontainer,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.h,
                top: 7.v,
                bottom: 7.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userprofilesectionItemModelObj.resources!,
                    style: CustomTextStyles.titleSmallBlack900Medium,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgClock,
                        height: 13.adaptSize,
                        width: 13.adaptSize,
                        margin: EdgeInsets.only(
                          top: 2.v,
                          bottom: 3.v,
                        ),
                      ),
                      Opacity(
                        opacity: 0.4,
                        child: Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text(
                            userprofilesectionItemModelObj.duration!,
                            style: CustomTextStyles.bodySmallBlack900_2,
                          ),
                        ),
                      ),
                    ],
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
