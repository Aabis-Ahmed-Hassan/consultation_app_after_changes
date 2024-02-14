import 'models/iphone_13_pro_max_fortyseven_model.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/widgets/app_bar/appbar_image.dart';
import 'package:arslan_s_application28/widgets/app_bar/appbar_leading_image.dart';
import 'package:arslan_s_application28/widgets/app_bar/custom_app_bar.dart';
import 'package:arslan_s_application28/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_13_pro_max_fortyseven_provider.dart';

class Iphone13ProMaxFortysevenScreen extends StatefulWidget {
  const Iphone13ProMaxFortysevenScreen({Key? key}) : super(key: key);

  @override
  Iphone13ProMaxFortysevenScreenState createState() =>
      Iphone13ProMaxFortysevenScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone13ProMaxFortysevenProvider(),
        child: Iphone13ProMaxFortysevenScreen());
  }
}

class Iphone13ProMaxFortysevenScreenState
    extends State<Iphone13ProMaxFortysevenScreen> {
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
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 27.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgStatusBar1,
                      height: 15.v,
                      width: 383.h),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 37.h, vertical: 51.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("lbl_faq".tr,
                                style: theme.textTheme.headlineMedium),
                            SizedBox(height: 39.v),
                            _buildHowCanIPostA(context),
                            SizedBox(height: 39.v),
                            Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: _buildLoremIpsumDolor(context,
                                    dynamicText: "msg_2_lorem_ipsum_dolor".tr,
                                    dynamicImage:
                                        ImageConstant.imgVectorGray10003)),
                            SizedBox(height: 26.v),
                            Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: _buildLoremIpsumDolor(context,
                                    dynamicText: "msg_3_lorem_ipsum_dolor".tr,
                                    dynamicImage:
                                        ImageConstant.imgVectorTeal400)),
                            SizedBox(height: 26.v),
                            Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: _buildLoremIpsumDolor(context,
                                    dynamicText: "msg_3_lorem_ipsum_dolor".tr,
                                    dynamicImage:
                                        ImageConstant.imgVectorTeal400)),
                            SizedBox(height: 26.v),
                            Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: _buildLoremIpsumDolor(context,
                                    dynamicText: "msg_3_lorem_ipsum_dolor".tr,
                                    dynamicImage:
                                        ImageConstant.imgVectorTeal400)),
                            SizedBox(height: 4.v)
                          ]))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 45.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 38.h, top: 14.v, bottom: 13.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          Container(
              margin: EdgeInsets.symmetric(horizontal: 37.h),
              decoration: AppDecoration.fillBlueGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
              child: AppbarImage(imagePath: ImageConstant.imgPlay41x41))
        ]);
  }

  /// Section Widget
  Widget _buildHowCanIPostA(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 19.v),
        decoration: AppDecoration.fillGreen
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 7.v, bottom: 4.v),
                            child: Text("msg_how_can_i_post_a".tr,
                                style: CustomTextStyles.bodyMediumBlack90013)),
                        CustomIconButton(
                            height: 32.v,
                            width: 30.h,
                            padding: EdgeInsets.all(10.h),
                            decoration: IconButtonStyleHelper.fillPrimary,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgGroup16433))
                      ])),
              SizedBox(height: 12.v),
              Opacity(
                  opacity: 0.4,
                  child: Container(
                      width: 296.h,
                      margin: EdgeInsets.only(left: 3.h, right: 10.h),
                      child: Text("msg_lorem_ipsum_dolor".tr,
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmallBlack90010_1
                              .copyWith(height: 1.70)))),
              SizedBox(height: 2.v)
            ]));
  }

  /// Common widget
  Widget _buildLoremIpsumDolor(
    BuildContext context, {
    required String dynamicText,
    required String dynamicImage,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v),
        decoration: AppDecoration.outlineGray20001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Container(
                      width: 265.h,
                      margin: EdgeInsets.only(top: 8.v),
                      child: Text(dynamicText,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyMediumBlack90013.copyWith(
                              color: appTheme.black900, height: 1.92)))),
              Container(
                  height: 32.v,
                  width: 30.h,
                  margin: EdgeInsets.only(left: 18.h, top: 7.v, bottom: 21.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.h, vertical: 13.v),
                  decoration: AppDecoration.fillGray
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: CustomImageView(
                      imagePath: dynamicImage,
                      height: 4.v,
                      width: 7.h,
                      alignment: Alignment.centerLeft))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
