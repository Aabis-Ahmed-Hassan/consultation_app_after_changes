import '../models/dynamicview_item_model.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DynamicviewItemWidget extends StatelessWidget {
  DynamicviewItemWidget(
    this.dynamicviewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DynamicviewItemModel dynamicviewItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 13.h,
            vertical: 12.v,
          ),
          decoration: AppDecoration.outlineGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder11,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                color: appTheme.blueGray100,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Container(
                  height: 93.v,
                  width: 106.h,
                  decoration: AppDecoration.fillBluegray100.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPexelsMikaelB,
                        height: 93.v,
                        width: 106.h,
                        radius: BorderRadius.circular(
                          10.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      CustomIconButton(
                        height: 31.adaptSize,
                        width: 31.adaptSize,
                        padding: EdgeInsets.all(8.h),
                        decoration:
                            IconButtonStyleHelper.outlineOnPrimaryContainerTL15,
                        alignment: Alignment.center,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgUserOnprimarycontainer,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 13.h,
                  top: 3.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 66.h,
                          child: Text(
                            dynamicviewItemModelObj.digitalMarketingText!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.titleSmallBlack900.copyWith(
                              height: 1.29,
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup16381,
                          height: 15.v,
                          width: 4.h,
                          margin: EdgeInsets.only(
                            left: 59.h,
                            top: 4.v,
                            bottom: 19.v,
                          ),
                        ),
                      ],
                    ),
                    Opacity(
                      opacity: 0.4,
                      child: Text(
                        dynamicviewItemModelObj.resourcesText1!,
                        style: CustomTextStyles.bodySmallBlack90010,
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Text(
                      dynamicviewItemModelObj.resourcesText2!,
                      style: CustomTextStyles.bodySmallTeal4009,
                    ),
                    SizedBox(height: 5.v),
                    Container(
                      height: 4.v,
                      width: 129.h,
                      decoration: BoxDecoration(
                        color: appTheme.blueGray50,
                        borderRadius: BorderRadius.circular(
                          2.h,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          2.h,
                        ),
                        child: LinearProgressIndicator(
                          value: 0.36,
                          backgroundColor: appTheme.blueGray50,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            theme.colorScheme.primary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
