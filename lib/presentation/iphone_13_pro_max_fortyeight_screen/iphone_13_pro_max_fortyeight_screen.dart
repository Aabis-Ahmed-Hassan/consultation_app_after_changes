import 'models/iphone_13_pro_max_fortyeight_model.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/widgets/app_bar/appbar_image.dart';
import 'package:arslan_s_application28/widgets/app_bar/appbar_leading_image.dart';
import 'package:arslan_s_application28/widgets/app_bar/custom_app_bar.dart';
import 'package:arslan_s_application28/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_13_pro_max_fortyeight_provider.dart';

class Iphone13ProMaxFortyeightScreen extends StatefulWidget {
  const Iphone13ProMaxFortyeightScreen({Key? key}) : super(key: key);

  @override
  Iphone13ProMaxFortyeightScreenState createState() =>
      Iphone13ProMaxFortyeightScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone13ProMaxFortyeightProvider(),
        child: Iphone13ProMaxFortyeightScreen());
  }
}

class Iphone13ProMaxFortyeightScreenState
    extends State<Iphone13ProMaxFortyeightScreen> {
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
                          horizontal: 34.h, vertical: 12.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 6.v),
                            Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: Text("msg_terms_of_service".tr,
                                    style: theme.textTheme.headlineMedium)),
                            SizedBox(height: 5.v),
                            Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: Text("msg_last_updated_july".tr,
                                    style:
                                        CustomTextStyles.bodyMediumTeal40015)),
                            SizedBox(height: 8.v),
                            Opacity(
                                opacity: 0.4,
                                child: Container(
                                    width: 317.h,
                                    margin:
                                        EdgeInsets.only(left: 7.h, right: 35.h),
                                    child: Text("msg_please_read_these".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .bodyMediumBlack90013_1
                                            .copyWith(height: 1.69)))),
                            SizedBox(height: 39.v),
                            Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: Text("lbl_acknowledgement".tr,
                                    style: theme.textTheme.bodyLarge)),
                            SizedBox(height: 4.v),
                            Container(
                                height: 593.v,
                                width: 353.h,
                                margin: EdgeInsets.only(left: 7.h),
                                child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Opacity(
                                              opacity: 0.4,
                                              child: SizedBox(
                                                  width: 353.h,
                                                  child: Text(
                                                      "msg_lorem_ipsum_dolor2"
                                                          .tr,
                                                      maxLines: 27,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: CustomTextStyles
                                                          .bodyMediumBlack90013_1
                                                          .copyWith(
                                                              height: 1.69))))),
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 6.h,
                                                  right: 6.h,
                                                  bottom: 19.v),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    CustomElevatedButton(
                                                        text: "lbl_accept".tr),
                                                    SizedBox(height: 21.v),
                                                    Text("lbl_decline".tr,
                                                        style: CustomTextStyles
                                                            .titleSmallTeal400
                                                            .copyWith(
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline))
                                                  ])))
                                    ]))
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

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
