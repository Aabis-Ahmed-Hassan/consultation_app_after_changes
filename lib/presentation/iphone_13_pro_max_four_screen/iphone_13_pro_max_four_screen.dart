import '../iphone_13_pro_max_four_screen/widgets/userprofilesection_item_widget.dart';
import 'models/iphone_13_pro_max_four_model.dart';
import 'models/userprofilesection_item_model.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/widgets/app_bar/appbar_image.dart';
import 'package:arslan_s_application28/widgets/app_bar/appbar_leading_image.dart';
import 'package:arslan_s_application28/widgets/app_bar/custom_app_bar.dart';
import 'package:arslan_s_application28/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'provider/iphone_13_pro_max_four_provider.dart';

class Iphone13ProMaxFourScreen extends StatefulWidget {
  const Iphone13ProMaxFourScreen({Key? key}) : super(key: key);

  @override
  Iphone13ProMaxFourScreenState createState() =>
      Iphone13ProMaxFourScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone13ProMaxFourProvider(),
        child: Iphone13ProMaxFourScreen());
  }
}

class Iphone13ProMaxFourScreenState extends State<Iphone13ProMaxFourScreen> {
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
                          margin: EdgeInsets.only(left: 1.h)),
                      Spacer(),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("msg_teacher_training".tr,
                              style: CustomTextStyles.bodyMediumTeal40015)),
                      SizedBox(height: 13.v),
                      _buildTeacherTrainingSection(context),
                      SizedBox(height: 15.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("msg_pe_teaching_fundamental2".tr,
                              style: CustomTextStyles.headlineSmallBold)),
                      SizedBox(height: 19.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl_description".tr,
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 5.v),
                      Container(
                          width: 339.h,
                          margin: EdgeInsets.only(left: 16.h),
                          child: ReadMoreText("msg_lorem_ipsum_dolor3".tr,
                              trimLines: 3,
                              colorClickableText: appTheme.teal400,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: "lbl_read_more".tr,
                              moreStyle: CustomTextStyles.bodyMediumBlack90013_1
                                  .copyWith(height: 1.69),
                              lessStyle: CustomTextStyles.bodyMediumBlack90013_1
                                  .copyWith(height: 1.69))),
                      SizedBox(height: 18.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl_lessons".tr,
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 9.v),
                      _buildUserProfileSection(context),
                      SizedBox(height: 31.v)
                    ])),
            bottomNavigationBar: _buildScheduleACallButton(context)));
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
  Widget _buildTeacherTrainingSection(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15.h),
            decoration: AppDecoration.fillPrimary
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                color: appTheme.green300,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.roundedBorder8),
                child: Container(
                    height: 199.v,
                    width: 353.h,
                    decoration: AppDecoration.fillGreen300.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8),
                    child: Stack(alignment: Alignment.topRight, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgUnion,
                          height: 155.v,
                          width: 353.h,
                          alignment: Alignment.topCenter),
                      CustomImageView(
                          imagePath: ImageConstant.imgSettings,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(top: 34.v, right: 24.h)),
                      CustomImageView(
                          imagePath: ImageConstant.img78597961,
                          height: 192.v,
                          width: 129.h,
                          radius: BorderRadius.circular(10.h),
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 15.h)),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding:
                                  EdgeInsets.only(left: 161.h, right: 40.h),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("msg_pe_teaching_fundamental".tr,
                                        style: CustomTextStyles
                                            .titleLargeOnPrimaryContainer),
                                    SizedBox(height: 18.v),
                                    Text("lbl_by_carrie_flint".tr,
                                        style: CustomTextStyles
                                            .bodyLargeOnPrimaryContainer)
                                  ])))
                    ])))));
  }

  /// Section Widget
  Widget _buildUserProfileSection(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: Consumer<Iphone13ProMaxFourProvider>(
                builder: (context, provider, child) {
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 16.v);
                  },
                  itemCount: provider.iphone13ProMaxFourModelObj
                      .userprofilesectionItemList.length,
                  itemBuilder: (context, index) {
                    UserprofilesectionItemModel model = provider
                        .iphone13ProMaxFourModelObj
                        .userprofilesectionItemList[index];
                    return UserprofilesectionItemWidget(model);
                  });
            })));
  }

  /// Section Widget
  Widget _buildScheduleACallButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_schedule_a_call".tr,
        margin: EdgeInsets.only(left: 44.h, right: 44.h, bottom: 28.v));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
