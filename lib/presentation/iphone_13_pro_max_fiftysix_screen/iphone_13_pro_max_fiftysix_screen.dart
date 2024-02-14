import 'models/iphone_13_pro_max_fiftysix_model.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/widgets/app_bar/appbar_image.dart';
import 'package:arslan_s_application28/widgets/app_bar/appbar_leading_image.dart';
import 'package:arslan_s_application28/widgets/app_bar/appbar_title.dart';
import 'package:arslan_s_application28/widgets/app_bar/custom_app_bar.dart';
import 'package:arslan_s_application28/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_13_pro_max_fiftysix_provider.dart';

class Iphone13ProMaxFiftysixScreen extends StatefulWidget {
  const Iphone13ProMaxFiftysixScreen({Key? key}) : super(key: key);

  @override
  Iphone13ProMaxFiftysixScreenState createState() =>
      Iphone13ProMaxFiftysixScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone13ProMaxFiftysixProvider(),
        child: Iphone13ProMaxFiftysixScreen());
  }
}

class Iphone13ProMaxFiftysixScreenState
    extends State<Iphone13ProMaxFiftysixScreen> {
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
              height: MediaQuery.of(context).size.height,
                width: double.maxFinite,
                child: SingleChildScrollView(
                  child: Column(children: [
                    SizedBox(height: 27.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgStatusBar1,
                        height: 15.v,
                        width: 383.h),
                    Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(horizontal: 36.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 451.v, bottom: 70.v),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                            width: 10.h,
                                            child: Text("lbl_acheivements".tr,
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .bodySmallBlack900
                                                    .copyWith(height: 3.08))),
                                        SizedBox(height: 44.v),
                                        SizedBox(
                                            width: 10.h,
                                            child: Text("lbl_beliefs".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .bodySmallBlack900
                                                    .copyWith(height: 3.08))),
                                        SizedBox(height: 43.v),
                                        Row(children: [
                                          SizedBox(
                                              width: 14.h,
                                              child: Text("lbl_biography".tr,
                                                  maxLines: 3,
                                                  overflow: TextOverflow.ellipsis,
                                                  style: CustomTextStyles
                                                      .labelLargePrimaryContainer
                                                      .copyWith(height: 3.08))),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10.h),
                                              child: SizedBox(
                                                  height: 68.v,
                                                  child: VerticalDivider(
                                                      width: 5.h,
                                                      thickness: 5.v,
                                                      color: theme
                                                          .colorScheme.primary,
                                                      indent: 19.h,
                                                      endIndent: 18.h)))
                                        ])
                                      ])),
                              SizedBox(
                                  height: 813.v,
                                  child: VerticalDivider(
                                      width: 1.h,
                                      thickness: 1.v,
                                      color: appTheme.black900.withOpacity(0.1),
                                      indent: 40.h)),
                              Expanded(
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 29.h, top: 35.v, bottom: 24.v),
                                      child: Column(children: [
                                        Container(
                                            height: 231.v,
                                            width: 287.h,
                                            decoration: AppDecoration
                                                .fillBluegray10001
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder16),
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgFabded540ab54,
                                                height: 231.v,
                                                width: 287.h,
                                                radius:
                                                    BorderRadius.circular(16.h),
                                                alignment: Alignment.center)),
                                        SizedBox(height: 8.v),
                                        Container(
                                            width: 287.h,
                                            margin: EdgeInsets.only(right: 5.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "lbl_carrie_flint".tr,
                                                            style: CustomTextStyles
                                                                .titleLargePrimaryContainerBold22),
                                                        Text(
                                                            "msg_national_trainer"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .bodyMediumTeal400)
                                                      ]),
                                                  Spacer(),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 17.v, bottom: 9.v),
                                                      child: CustomIconButton(
                                                          height: 25.adaptSize,
                                                          width: 25.adaptSize,
                                                          padding:
                                                              EdgeInsets.all(7.h),
                                                          child: CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgGroup36))),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 4.h,
                                                          top: 17.v,
                                                          bottom: 9.v),
                                                      child: CustomIconButton(
                                                          height: 25.adaptSize,
                                                          width: 25.adaptSize,
                                                          padding:
                                                              EdgeInsets.all(7.h),
                                                          child: CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgTrash))),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 4.h,
                                                          top: 17.v,
                                                          bottom: 9.v),
                                                      child: CustomIconButton(
                                                          height: 25.adaptSize,
                                                          width: 25.adaptSize,
                                                          padding:
                                                              EdgeInsets.all(7.h),
                                                          child: CustomImageView(
                                                              imagePath: ImageConstant
                                                                  .imgLinkPrimarycontainer)))
                                                ])),
                                        SizedBox(height: 23.v),
                                        Opacity(
                                            opacity: 0.4,
                                            child: SizedBox(
                                                width: 292.h,
                                                child: Text(
                                                    "msg_carrie_s_philosophy".tr,
                                                    maxLines: 20,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: CustomTextStyles
                                                        .bodyMediumBlack90013_1
                                                        .copyWith(height: 1.69))))
                                      ])))
                            ]))
                  ]),
                ))));
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
        title: AppbarTitle(
            text: "lbl_about_carrie".tr, margin: EdgeInsets.only(left: 22.h)),
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
