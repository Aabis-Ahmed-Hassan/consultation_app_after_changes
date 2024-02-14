import '../iphone_13_pro_max_seven_screen/widgets/meetingcomponent_item_widget.dart';
import 'models/iphone_13_pro_max_seven_model.dart';
import 'models/meetingcomponent_item_model.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/widgets/app_bar/appbar_image.dart';
import 'package:arslan_s_application28/widgets/app_bar/appbar_leading_image.dart';
import 'package:arslan_s_application28/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_13_pro_max_seven_provider.dart';

class Iphone13ProMaxSevenScreen extends StatefulWidget {
  const Iphone13ProMaxSevenScreen({Key? key}) : super(key: key);

  @override
  Iphone13ProMaxSevenScreenState createState() =>
      Iphone13ProMaxSevenScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone13ProMaxSevenProvider(),
        child: Iphone13ProMaxSevenScreen());
  }
}

class Iphone13ProMaxSevenScreenState extends State<Iphone13ProMaxSevenScreen> {
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
                          horizontal: 37.h, vertical: 30.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                height: 58.v,
                                width: 169.h,
                                child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                              "msg_consulting_for_schools".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumTeal40015)),
                                      Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Text("lbl_modalities".tr,
                                              style: theme
                                                  .textTheme.headlineMedium))
                                    ])),
                            SizedBox(height: 33.v),
                            _buildMeetingComponent(context)
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
  Widget _buildMeetingComponent(BuildContext context) {
    return Consumer<Iphone13ProMaxSevenProvider>(
        builder: (context, provider, child) {
      return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 224.v,
              crossAxisCount: 2,
              mainAxisSpacing: 23.h,
              crossAxisSpacing: 23.h),
          physics: NeverScrollableScrollPhysics(),
          itemCount: provider
              .iphone13ProMaxSevenModelObj.meetingcomponentItemList.length,
          itemBuilder: (context, index) {
            MeetingcomponentItemModel model = provider
                .iphone13ProMaxSevenModelObj.meetingcomponentItemList[index];
            return MeetingcomponentItemWidget(model);
          });
    });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
