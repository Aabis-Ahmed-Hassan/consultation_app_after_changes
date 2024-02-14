import '../models/viewhierarchy_item_model.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget(
    this.viewhierarchyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchyItemModel viewhierarchyItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineGray20001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 119.v,
            width: 135.h,
            decoration: AppDecoration.fillBluegray100.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: CustomImageView(
              imagePath: viewhierarchyItemModelObj?.imageProp,
              height: 119.v,
              width: 135.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 8.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 75.h,
              margin: EdgeInsets.only(left: 8.h),
              child: Text(
                viewhierarchyItemModelObj.textProp1!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleSmallBlack90015.copyWith(
                  height: 1.27,
                ),
              ),
            ),
          ),
          Opacity(
            opacity: 0.4,
            child: SizedBox(
              width: 116.h,
              child: Text(
                viewhierarchyItemModelObj.textProp2!,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallBlack90010_1.copyWith(
                  height: 1.50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
