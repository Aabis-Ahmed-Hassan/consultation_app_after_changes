import 'models/iphone_13_pro_max_fiftyeight_model.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_13_pro_max_fiftyeight_provider.dart';

class Iphone13ProMaxFiftyeightScree extends StatefulWidget {
  const Iphone13ProMaxFiftyeightScree({Key? key}) : super(key: key);

  @override
  Iphone13ProMaxFiftyeightScreenState createState() =>
      Iphone13ProMaxFiftyeightScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone13ProMaxFiftyeightProvider(),
        child: Iphone13ProMaxFiftyeightScree());
  }
}

class Iphone13ProMaxFiftyeightScreenState
    extends State<Iphone13ProMaxFiftyeightScree> {
  @override
  void initState() {
    super.initState();
 /*   Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.iphone13ProMaxFortysevenScreen,
      );
    });*/
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.green50,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildPlaySection(context),
                      SizedBox(height: 91.v),
                      Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              height: 330.v,
                              width: 173.h,
                              child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                            width: 173.h,
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "lbl_home".tr,
                                                      style: CustomTextStyles
                                                          .titleMediumff163b61),
                                                  TextSpan(
                                                      text: "msg_profile_settin"
                                                          .tr,
                                                      style: CustomTextStyles
                                                          .bodyLargeff0f1d56
                                                          .copyWith(
                                                              height: 1.58))
                                                ]),
                                                textAlign: TextAlign.center))),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                            height: 5.v,
                                            width: 16.h,
                                            margin: EdgeInsets.only(
                                                left: 33.h, top: 10.v),
                                            decoration: BoxDecoration(
                                                color: appTheme.green300,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        2.h))))
                                  ]))),
                      Spacer(flex: 38),
                      Padding(
                          padding: EdgeInsets.only(left: 161.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgUser,
                                    height: 18.v,
                                    width: 16.h,
                                    margin:
                                        EdgeInsets.only(top: 3.v, bottom: 8.v)),
                                Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: Text("lbl_logout".tr,
                                        style: CustomTextStyles
                                            .titleLargePrimaryContainer))
                              ])),
                      Spacer(flex: 61),
                      SizedBox(height: 39.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("lbl_version_2_0_1".tr,
                              style: CustomTextStyles.titleSmallTeal400))
                    ]))));
  }

  /// Section Widget
  Widget _buildPlaySection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 46.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              width: 242.h,
              padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 36.v),
              decoration: AppDecoration.fillOnPrimaryContainer
                  .copyWith(borderRadius: BorderRadiusStyle.customBorderBR53),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 41.adaptSize,
                        width: 41.adaptSize,
                        margin: EdgeInsets.only(bottom: 8.v),
                        decoration: AppDecoration.fillBlueGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder20),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgPlay41x41,
                            height: 41.adaptSize,
                            width: 41.adaptSize,
                            alignment: Alignment.center)),
                    Padding(
                        padding: EdgeInsets.only(right: 8.h, bottom: 7.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_michael_oliver".tr,
                                  style: CustomTextStyles
                                      .titleMediumPrimaryContainer),
                              SizedBox(height: 1.v),
                              Text("msg_los_angeles_usa".tr,
                                  style: CustomTextStyles.bodySmallTeal400)
                            ]))
                  ])),
          CustomImageView(
              imagePath: ImageConstant.imgClose,
              height: 15.adaptSize,
              width: 15.adaptSize,
              margin: EdgeInsets.only(top: 58.v, bottom: 50.v))
        ]));
  }
}
