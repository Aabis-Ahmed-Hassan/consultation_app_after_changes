import 'models/iphone_13_pro_max_seventythree_model.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_13_pro_max_seventythree_provider.dart';

class Iphone13ProMaxSeventythreeScreen extends StatefulWidget {
  const Iphone13ProMaxSeventythreeScreen({Key? key}) : super(key: key);

  @override
  Iphone13ProMaxSeventythreeScreenState createState() =>
      Iphone13ProMaxSeventythreeScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone13ProMaxSeventythreeProvider(),
        child: Iphone13ProMaxSeventythreeScreen());
  }
}

class Iphone13ProMaxSeventythreeScreenState
    extends State<Iphone13ProMaxSeventythreeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 27.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgStatusBar1,
                      height: 15.v,
                      width: 383.h),
                  SizedBox(height: 44.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowLeft,
                      height: 14.v,
                      width: 7.h,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 16.h),
                      onTap: () {
                        onTapImgArrowLeft(context);
                      }),
                  SizedBox(height: 15.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup162739,
                      height: 109.adaptSize,
                      width: 109.adaptSize),
                  SizedBox(height: 15.v),
                  SizedBox(
                      width: 187.h,
                      child: Text("msg_appointment_confirmed".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineMedium!
                              .copyWith(height: 1.37))),
                  SizedBox(height: 52.v),
                  Container(
                      margin: EdgeInsets.only(left: 23.h, right: 28.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.h, vertical: 12.v),
                      decoration: AppDecoration.outlineGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder11),
                      child: Row(mainAxisSize: MainAxisSize.max, children: [
                        SizedBox(
                            height: 93.v,
                            width: 109.h,
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: 93.v,
                                      width: 106.h,
                                      decoration: BoxDecoration(
                                          color: appTheme.blueGray100,
                                          borderRadius:
                                              BorderRadius.circular(10.h)))),
                              CustomImageView(
                                  imagePath: ImageConstant.imgPexelsCottonbr,
                                  height: 93.v,
                                  width: 106.h,
                                  radius: BorderRadius.circular(10.h),
                                  alignment: Alignment.center)
                            ])),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 17.h, top: 7.v, bottom: 4.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_dr_samantha".tr,
                                      style: CustomTextStyles.titleMedium17),
                                  Opacity(
                                      opacity: 0.4,
                                      child: Text("lbl_coach".tr,
                                          style: CustomTextStyles
                                              .bodyMediumBlack90013_2)),
                                  SizedBox(height: 16.v),
                                  Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgLinkedin,
                                        height: 16.v,
                                        width: 12.h,
                                        margin: EdgeInsets.only(bottom: 1.v)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 7.h),
                                        child: Text("lbl_los_angeles".tr,
                                            style: CustomTextStyles
                                                .bodySmallErrorContainer))
                                  ])
                                ]))
                      ])),
                  SizedBox(height: 27.v),
                  Divider(indent: 23.h, endIndent: 28.h),
                  SizedBox(height: 15.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 42.h, right: 56.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("lbl_date".tr,
                                          style: theme.textTheme.titleMedium),
                                      SizedBox(height: 3.v),
                                      Opacity(
                                          opacity: 0.4,
                                          child: Text("msg_wed_19_july_2022".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumBlack90015_1))
                                    ]),
                                Padding(
                                    padding: EdgeInsets.only(bottom: 2.v),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("lbl_slots".tr,
                                              style:
                                                  theme.textTheme.titleMedium),
                                          SizedBox(height: 1.v),
                                          Opacity(
                                              opacity: 0.4,
                                              child: Text("lbl_afternoon".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumBlack90015_1))
                                        ]))
                              ]))),
                  SizedBox(height: 27.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 42.h, right: 64.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(top: 2.v),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("msg_appointment_type".tr,
                                              style:
                                                  theme.textTheme.titleMedium),
                                          Opacity(
                                              opacity: 0.4,
                                              child: Text("lbl_online".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumBlack90015_1))
                                        ])),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("lbl_time".tr,
                                          style: theme.textTheme.titleMedium),
                                      SizedBox(height: 2.v),
                                      Opacity(
                                          opacity: 0.4,
                                          child: Text("lbl_02_00_pm".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumBlack90015_1))
                                    ])
                              ]))),
                  SizedBox(height: 18.v),
                  Divider(indent: 26.h, endIndent: 25.h),
                  SizedBox(height: 22.v),
                  Text("msg_your_approximate".tr,
                      style: CustomTextStyles.bodyMediumTeal400),
                  SizedBox(height: 15.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CustomElevatedButton(
                        width: 72.h,
                        text: "lbl_05".tr,
                        buttonStyle: CustomButtonStyles.fillPrimaryContainer,
                        buttonTextStyle: theme.textTheme.headlineLarge!),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 8.h, top: 9.v, bottom: 8.v),
                        child: Text("lbl".tr,
                            style: theme.textTheme.headlineSmall)),
                    CustomElevatedButton(
                        width: 72.h,
                        text: "lbl_30".tr,
                        margin: EdgeInsets.only(left: 8.h),
                        buttonStyle: CustomButtonStyles.fillPrimaryContainer,
                        buttonTextStyle: theme.textTheme.headlineLarge!)
                  ]),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildSetReminder(context)));
  }

  /// Section Widget
  Widget _buildSetReminder(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_set_reminder".tr,
        margin: EdgeInsets.only(left: 44.h, right: 44.h, bottom: 35.v),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 7.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgContrast,
                height: 21.v,
                width: 20.h)));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
