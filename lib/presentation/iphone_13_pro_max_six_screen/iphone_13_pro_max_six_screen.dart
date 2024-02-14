import '../iphone_13_pro_max_six_screen/widgets/userprofile_item_widget.dart';
import 'models/iphone_13_pro_max_six_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/widgets/app_bar/appbar_image.dart';
import 'package:arslan_s_application28/widgets/app_bar/appbar_leading_image.dart';
import 'package:arslan_s_application28/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_13_pro_max_six_provider.dart';

class Iphone13ProMaxSixScreen extends StatefulWidget {
  const Iphone13ProMaxSixScreen({Key? key}) : super(key: key);

  @override
  Iphone13ProMaxSixScreenState createState() => Iphone13ProMaxSixScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone13ProMaxSixProvider(),
        child: Iphone13ProMaxSixScreen());
  }
}

class Iphone13ProMaxSixScreenState extends State<Iphone13ProMaxSixScreen> {
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
                          horizontal: 37.h, vertical: 28.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: Text("msg_personalised_pe".tr,
                                    style:
                                        CustomTextStyles.bodyMediumTeal40015)),
                            Text("lbl_modalities".tr,
                                style: theme.textTheme.headlineMedium),
                            SizedBox(height: 31.v),
                            _buildUserProfile(context)
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
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Consumer<Iphone13ProMaxSixProvider>(
            builder: (context, provider, child) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 22.v);
              },
              itemCount:
                  provider.iphone13ProMaxSixModelObj.userprofileItemList.length,
              itemBuilder: (context, index) {
                UserprofileItemModel model = provider
                    .iphone13ProMaxSixModelObj.userprofileItemList[index];
                return UserprofileItemWidget(model);
              });
        }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
