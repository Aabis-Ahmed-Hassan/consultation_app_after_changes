import '../iphone_13_pro_max_sixtyfive_screen/widgets/userprofile1_item_widget.dart';
import 'models/iphone_13_pro_max_sixtyfive_model.dart';
import 'models/userprofile1_item_model.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/widgets/app_bar/appbar_image.dart';
import 'package:arslan_s_application28/widgets/app_bar/appbar_leading_image.dart';
import 'package:arslan_s_application28/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:arslan_s_application28/widgets/app_bar/custom_app_bar.dart';
import 'package:arslan_s_application28/widgets/custom_elevated_button.dart';
import 'package:arslan_s_application28/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_13_pro_max_sixtyfive_provider.dart';

class Iphone13ProMaxSixtyfiveScreen extends StatefulWidget {
  const Iphone13ProMaxSixtyfiveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone13ProMaxSixtyfiveScreenState createState() =>
      Iphone13ProMaxSixtyfiveScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Iphone13ProMaxSixtyfiveProvider(),
      child: Iphone13ProMaxSixtyfiveScreen(),
    );
  }
}

class Iphone13ProMaxSixtyfiveScreenState
    extends State<Iphone13ProMaxSixtyfiveScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(horizontal: 22.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(height: 101.v),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "msg_select_a_membership".tr,
                      style: CustomTextStyles.bodyMediumTeal40015,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.h),
                    child: Text(
                      "lbl_membership_plan".tr,
                      style: theme.textTheme.headlineMedium,
                    ),
                  ),
                  SizedBox(height: 18.v),
                  _buildUserProfile(context),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildHome(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 91.v,
      leadingWidth: 60.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGrid,
        margin: EdgeInsets.only(
          left: 38.h,
          top: 12.v,
          bottom: 13.v,
        ),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.img2,
          margin: EdgeInsets.only(left: 37.h),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 4.h,
            top: 7.v,
            right: 37.h,
          ),
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
  Widget _buildUserProfile(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Consumer<Iphone13ProMaxSixtyfiveProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.5.v),
                  child: SizedBox(
                    width: 299.h,
                    child: Divider(
                      height: 1.v,
                      thickness: 1.v,
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    ),
                  ),
                );
              },
              itemCount: provider
                  .iphone13ProMaxSixtyfiveModelObj.userprofile1ItemList.length,
              itemBuilder: (context, index) {
                Userprofile1ItemModel model = provider
                    .iphone13ProMaxSixtyfiveModelObj
                    .userprofile1ItemList[index];
                return Userprofile1ItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHomeButton(BuildContext context) {
    return CustomElevatedButton(
      height: 40.v,
      width: 96.h,
      text: "lbl_home2".tr,
      margin: EdgeInsets.symmetric(vertical: 4.v),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 7.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgHomeGray600,
          height: 17.v,
          width: 16.h,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillTeal,
      buttonTextStyle: CustomTextStyles.bodySmallGray600,
    );
  }

  /// Section Widget
  Widget _buildPlansButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 107.h,
      text: "lbl_plans".tr,
      margin: EdgeInsets.only(left: 10.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 7.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgComputerOnprimarycontainer,
          height: 17.v,
          width: 19.h,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildScheduleCallButton(BuildContext context) {
    return CustomElevatedButton(
      height: 40.v,
      width: 129.h,
      text: "lbl_schedule_call".tr,
      margin: EdgeInsets.only(
        left: 9.h,
        top: 4.v,
        bottom: 4.v,
      ),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 8.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgCalendar,
          height: 17.v,
          width: 16.h,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillTeal,
      buttonTextStyle: CustomTextStyles.bodySmallGray600,
    );
  }

  /// Section Widget
  Widget _buildHome(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 37.h,
        right: 37.h,
        bottom: 22.v,
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
