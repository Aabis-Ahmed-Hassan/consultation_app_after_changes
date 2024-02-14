import '../iphone_13_pro_max_five_screen/widgets/widget_item_widget.dart';
import 'models/iphone_13_pro_max_five_model.dart';
import 'models/widget_item_model.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/widgets/app_bar/appbar_image.dart';
import 'package:arslan_s_application28/widgets/app_bar/appbar_leading_image.dart';
import 'package:arslan_s_application28/widgets/app_bar/appbar_subtitle.dart';
import 'package:arslan_s_application28/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:readmore/readmore.dart';
import 'provider/iphone_13_pro_max_five_provider.dart';

class Iphone13ProMaxFiveScreen extends StatefulWidget {
  const Iphone13ProMaxFiveScreen({Key? key}) : super(key: key);

  @override
  Iphone13ProMaxFiveScreenState createState() =>
      Iphone13ProMaxFiveScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone13ProMaxFiveProvider(),
        child: Iphone13ProMaxFiveScreen());
  }
}

class Iphone13ProMaxFiveScreenState extends State<Iphone13ProMaxFiveScreen> {
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
                      padding: EdgeInsets.symmetric(vertical: 30.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 38.h),
                                child: Text("lbl_tip_of_the_week".tr,
                                    style:
                                        CustomTextStyles.bodyMediumTeal40015)),
                            SizedBox(height: 21.v),
                            Padding(
                                padding: EdgeInsets.only(left: 38.h),
                                child: Text("lbl_categories".tr,
                                    style: theme.textTheme.bodyLarge)),
                            SizedBox(height: 11.v),
                            _buildWidget(context),
                            SizedBox(height: 40.v),
                            _buildPexelsKassandr(context),
                            SizedBox(height: 30.v),
                            Padding(
                                padding: EdgeInsets.only(left: 50.h),
                                child: Text("msg_pe_teaching_fundamental2".tr,
                                    style: CustomTextStyles.headlineSmallBold)),
                            SizedBox(height: 19.v),
                            Padding(
                                padding: EdgeInsets.only(left: 50.h),
                                child: Text("lbl_description".tr,
                                    style: theme.textTheme.bodyLarge)),
                            SizedBox(height: 5.v),
                            Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                    width: 339.h,
                                    child: ReadMoreText(
                                        "msg_lorem_ipsum_dolor3".tr,
                                        trimLines: 3,
                                        colorClickableText: appTheme.teal400,
                                        trimMode: TrimMode.Line,
                                        trimCollapsedText: "lbl_read_more".tr,
                                        moreStyle: CustomTextStyles
                                            .bodyMediumBlack90013_1
                                            .copyWith(height: 1.69),
                                        lessStyle: CustomTextStyles
                                            .bodyMediumBlack90013_1
                                            .copyWith(height: 1.69)))),
                            SizedBox(height: 5.v)
                          ]))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 70.v,
        leadingWidth: 45.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 38.h, top: 18.v, bottom: 12.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarSubtitle(
              text: "lbl_5".tr,
              margin: EdgeInsets.only(left: 37.h, bottom: 28.v)),
          Container(
              margin: EdgeInsets.only(left: 11.h, top: 4.v, right: 37.h),
              decoration: AppDecoration.fillBlueGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
              child: AppbarImage(imagePath: ImageConstant.imgPlay41x41))
        ]);
  }

  /// Section Widget
  Widget _buildWidget(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 37.v,
            child: Consumer<Iphone13ProMaxFiveProvider>(
                builder: (context, provider, child) {
              return ListView.separated(
                  padding: EdgeInsets.only(left: 38.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 8.h);
                  },
                  itemCount:
                      provider.iphone13ProMaxFiveModelObj.widgetItemList.length,
                  itemBuilder: (context, index) {
                    WidgetItemModel model = provider
                        .iphone13ProMaxFiveModelObj.widgetItemList[index];
                    return WidgetItemWidget(model);
                  });
            })));
  }

  /// Section Widget
  Widget _buildPexelsKassandr(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 37.h),
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: fs.Svg(ImageConstant.imgGroup298),
                    fit: BoxFit.cover)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                  height: 245.v,
                  width: 321.h,
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgPexelsKassandr,
                        height: 245.v,
                        width: 321.h,
                        radius: BorderRadius.circular(15.h),
                        alignment: Alignment.center),
                    CustomImageView(
                        imagePath: ImageConstant.imgPexelsImageHunter13738219,
                        height: 245.v,
                        width: 321.h,
                        radius: BorderRadius.circular(15.h),
                        alignment: Alignment.center)
                  ])),
              SizedBox(height: 34.v),
              Opacity(
                  opacity: 0.4,
                  child: Padding(
                      padding: EdgeInsets.only(left: 13.h),
                      child: Text("lbl_feb_12_2022".tr,
                          style: CustomTextStyles.bodyMediumBlack90013_1))),
              SizedBox(height: 16.v)
            ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
