import '../iphone_13_pro_max_sixtyfour_screen/widgets/viewhierarchy_item_widget.dart';
import 'models/iphone_13_pro_max_sixtyfour_model.dart';
import 'models/viewhierarchy_item_model.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/widgets/app_bar/appbar_image.dart';
import 'package:arslan_s_application28/widgets/app_bar/appbar_leading_image.dart';
import 'package:arslan_s_application28/widgets/app_bar/appbar_subtitle.dart';
import 'package:arslan_s_application28/widgets/app_bar/custom_app_bar.dart';
import 'package:arslan_s_application28/widgets/custom_elevated_button.dart';
import 'package:arslan_s_application28/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_13_pro_max_sixtyfour_provider.dart';

class Iphone13ProMaxSixtyfourScreen extends StatefulWidget {
  const Iphone13ProMaxSixtyfourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone13ProMaxSixtyfourScreenState createState() =>
      Iphone13ProMaxSixtyfourScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Iphone13ProMaxSixtyfourProvider(),
      child: Iphone13ProMaxSixtyfourScreen(),
    );
  }
}

class Iphone13ProMaxSixtyfourScreenState
    extends State<Iphone13ProMaxSixtyfourScreen> {
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
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgStatusBar1,
                    height: 15.v,
                    width: 383.h,
                  ),
                  SizedBox(height: 101.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 60.v,
                      width: 136.h,
                      margin: EdgeInsets.only(left: 15.h),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "lbl_home2".tr,
                              style: theme.textTheme.headlineMedium,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "msg_select_a_category".tr,
                              style: CustomTextStyles.bodyMediumTeal40015,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 32.v),
                  _buildViewHierarchy(context),
                  SizedBox(height: 27.v),
                  _buildTipOfTheWeek(context),
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
      height: 75.v,
      leadingWidth: 60.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGrid,
        margin: EdgeInsets.only(
          left: 38.h,
          top: 9.v,
          bottom: 12.v,
        ),
      ),
      actions: [
        AppbarSubtitle(
          text: "lbl_5".tr,
          margin: EdgeInsets.only(
            left: 37.h,
            bottom: 28.v,
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 11.h,
            top: 4.v,
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
  Widget _buildViewHierarchy(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Consumer<Iphone13ProMaxSixtyfourProvider>(
        builder: (context, provider, child) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 244.v,
              crossAxisCount: 2,
              mainAxisSpacing: 23.h,
              crossAxisSpacing: 23.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: provider
                .iphone13ProMaxSixtyfourModelObj.viewhierarchyItemList.length,
            itemBuilder: (context, index) {
              ViewhierarchyItemModel model = provider
                  .iphone13ProMaxSixtyfourModelObj.viewhierarchyItemList[index];
              return ViewhierarchyItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTipOfTheWeek(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineGray20001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 25.v,
              bottom: 25.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 70.h,
                  child: Text(
                    "lbl_tip_of_the_week2".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmallBlack90015.copyWith(
                      height: 1.27,
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.4,
                  child: SizedBox(
                    width: 111.h,
                    child: Text(
                      "msg_lorem_ipsum_dolor5".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallBlack90010_1.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 119.v,
            width: 135.h,
            margin: EdgeInsets.only(bottom: 3.v),
            decoration: AppDecoration.fillBluegray100.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgPexelsEnricCr,
              height: 118.v,
              width: 135.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHome(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 33.h,
        right: 37.h,
        bottom: 37.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomOutlinedButton(
            width: 107.h,
            text: "lbl_home2".tr,
            leftIcon: Container(
              margin: EdgeInsets.only(right: 7.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgHome,
                height: 17.v,
                width: 16.h,
              ),
            ),
          ),
          CustomElevatedButton(
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
          ),
          CustomElevatedButton(
            height: 40.v,
            width: 129.h,
            text: "lbl_schedule_call".tr,
            margin: EdgeInsets.only(
              left: 14.h,
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
          ),
        ],
      ),
    );
  }
}
