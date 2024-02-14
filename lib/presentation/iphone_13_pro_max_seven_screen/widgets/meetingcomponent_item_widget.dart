import '../models/meetingcomponent_item_model.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MeetingcomponentItemWidget extends StatelessWidget {
  MeetingcomponentItemWidget(
    this.meetingcomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MeetingcomponentItemModel meetingcomponentItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.teal400,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Container(
        height: 223.v,
        width: 165.h,
        decoration: AppDecoration.fillTeal400.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            CustomImageView(
              imagePath: meetingcomponentItemModelObj?.meetingImage,
              height: 107.v,
              width: 165.h,
              alignment: Alignment.topCenter,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 23.h,
                  right: 34.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 48.v,
                        width: 38.h,
                        margin: EdgeInsets.only(right: 29.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 9.h,
                          vertical: 15.v,
                        ),
                        decoration:
                            AppDecoration.outlineOnPrimaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgEdit,
                          height: 16.v,
                          width: 17.h,
                          alignment: Alignment.centerRight,
                        ),
                      ),
                    ),
                    SizedBox(height: 22.v),
                    SizedBox(
                      width: 86.h,
                      child: Text(
                        meetingcomponentItemModelObj.meetingTitle!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.titleSmall15.copyWith(
                          height: 1.27,
                        ),
                      ),
                    ),
                    SizedBox(height: 1.v),
                    SizedBox(
                      width: 107.h,
                      child: Text(
                        meetingcomponentItemModelObj.meetingDescription!,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallOnPrimaryContainer
                            .copyWith(
                          height: 1.50,
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
    );
  }
}
