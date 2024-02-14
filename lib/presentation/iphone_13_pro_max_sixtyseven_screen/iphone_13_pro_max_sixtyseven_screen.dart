import 'models/iphone_13_pro_max_sixtyseven_model.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/widgets/app_bar/appbar_image.dart';
import 'package:arslan_s_application28/widgets/app_bar/appbar_leading_image.dart';
import 'package:arslan_s_application28/widgets/app_bar/custom_app_bar.dart';
import 'package:arslan_s_application28/widgets/custom_elevated_button.dart';
import 'package:arslan_s_application28/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_13_pro_max_sixtyseven_provider.dart';

class Iphone13ProMaxSixtysevenScreen extends StatefulWidget {
  const Iphone13ProMaxSixtysevenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone13ProMaxSixtysevenScreenState createState() =>
      Iphone13ProMaxSixtysevenScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Iphone13ProMaxSixtysevenProvider(),
      child: Iphone13ProMaxSixtysevenScreen(),
    );
  }
}

class Iphone13ProMaxSixtysevenScreenState
    extends State<Iphone13ProMaxSixtysevenScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 22.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgStatusBar1,
                height: 15.v,
                width: 383.h,
                margin: EdgeInsets.only(left: 1.h),
              ),
              SizedBox(height: 99.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "msg_schedule_a_call".tr,
                  style: CustomTextStyles.bodyMediumTeal40015,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.h),
                child: Text(
                  "lbl_meet_carrie".tr,
                  style: theme.textTheme.headlineMedium,
                ),
              ),
              SizedBox(height: 27.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "msg_for_teachers_parents".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 13.v),
              Opacity(
                opacity: 0.4,
                child: Container(
                  width: 256.h,
                  margin: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "msg_schedule_a_zoom".tr,
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumBlack90013_1.copyWith(
                      height: 1.69,
                    ),
                  ),
                ),
              ),
              Spacer(
                flex: 55,
              ),
              _buildScheduleACallButton(context),
              Spacer(
                flex: 44,
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildHome(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 60.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGrid,
        margin: EdgeInsets.only(
          left: 38.h,
          top: 5.v,
          bottom: 13.v,
        ),
      ),
      actions: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 37.h),
          decoration: AppDecoration.fillBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: AppbarImage(
            imagePath: ImageConstant.imgPlay41x41,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildScheduleACallButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_schedule_a_call".tr,
      margin: EdgeInsets.symmetric(horizontal: 22.h),
      alignment: Alignment.center,
    );
  }

  /// Section Widget
  Widget _buildHomeButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 107.h,
      text: "lbl_home2".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 7.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgHomeGray600,
          height: 17.v,
          width: 16.h,
        ),
      ),
      buttonTextStyle: CustomTextStyles.bodySmallGray600,
    );
  }

  /// Section Widget
  Widget _buildPlansButton(BuildContext context) {
    return CustomElevatedButton(
      height: 40.v,
      width: 96.h,
      text: "lbl_plans".tr,
      margin: EdgeInsets.only(
        left: 9.h,
        top: 4.v,
        bottom: 4.v,
      ),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 7.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgComputer,
          height: 17.v,
          width: 19.h,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillTeal,
      buttonTextStyle: CustomTextStyles.bodySmallGray600,
    );
  }

  /// Section Widget
  Widget _buildScheduleCallButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 140.h,
      text: "lbl_schedule_call".tr,
      margin: EdgeInsets.only(left: 9.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 8.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgCalendarOnprimarycontainer,
          height: 17.v,
          width: 16.h,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHome(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 35.h,
        right: 30.h,
        bottom: 40.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildHomeButton(context),
          _buildPlansButton(context),
          _buildScheduleCallButton(context),
        ],
      ),
    );
  }
}
