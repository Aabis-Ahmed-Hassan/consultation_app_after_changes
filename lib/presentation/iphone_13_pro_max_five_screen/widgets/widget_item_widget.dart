import '../models/widget_item_model.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WidgetItemWidget extends StatelessWidget {
  WidgetItemWidget(
    this.widgetItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  WidgetItemModel widgetItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 103.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: 103.h,
          padding: EdgeInsets.symmetric(
            horizontal: 21.h,
            vertical: 8.v,
          ),
          decoration: AppDecoration.outlineGray200.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Text(
            widgetItemModelObj.group!,
            style: CustomTextStyles.bodySmallBlack900_1,
          ),
        ),
      ),
    );
  }
}
