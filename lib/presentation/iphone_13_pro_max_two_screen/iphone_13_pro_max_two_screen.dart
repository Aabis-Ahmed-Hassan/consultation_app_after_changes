import '../iphone_13_pro_max_two_screen/widgets/dynamicview_item_widget.dart';
import '../iphone_13_pro_max_two_screen/widgets/pexelskassandr_item_widget.dart';
import 'models/dynamicview_item_model.dart';
import 'models/iphone_13_pro_max_two_model.dart';
import 'models/pexelskassandr_item_model.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/widgets/app_bar/appbar_image.dart';
import 'package:arslan_s_application28/widgets/app_bar/appbar_leading_image.dart';
import 'package:arslan_s_application28/widgets/app_bar/custom_app_bar.dart';
import 'package:arslan_s_application28/widgets/custom_floating_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'provider/iphone_13_pro_max_two_provider.dart';

class Iphone13ProMaxTwoScreen extends StatefulWidget {
  const Iphone13ProMaxTwoScreen({Key? key}) : super(key: key);

  @override
  Iphone13ProMaxTwoScreenState createState() => Iphone13ProMaxTwoScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone13ProMaxTwoProvider(),
        child: Iphone13ProMaxTwoScreen());
  }
}

class Iphone13ProMaxTwoScreenState extends State<Iphone13ProMaxTwoScreen> {
  @override
  void initState() {
    super.initState();
  }
  int current = 0;
  @override
  Widget build(BuildContext context) {

    final PageController _pageController = PageController();
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,


            body: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 27.v),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(Icons.arrow_back_ios,color: Colors.grey,),

                              CircleAvatar(
                                radius: MediaQuery.of(context).size.width/15,
                                backgroundImage: AssetImage(ImageConstant.imgPlay41x41),
                              ),
                            ],
                          ),
                        ),



                        /*   CustomImageView(
                            imagePath: ImageConstant.imgStatusBar1,
                            height: 15.v,
                            width: 383.h,
                            alignment: Alignment.center),*/
                        SizedBox(height: 28.v),
                        Container(
                            height: 60.v,
                            width: 200.h,
                            margin: EdgeInsets.only(left: 37.h),
                            child: Stack(alignment: Alignment.topLeft, children: [
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text("lbl_free_webinars".tr,
                                      style: theme.textTheme.headlineMedium)),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: Text("msg_free_live_webinars".tr,
                                          style: CustomTextStyles
                                              .bodyMediumTeal40015)))
                            ])),
                        SizedBox(height: 36.v),
                        Padding(
                            padding: EdgeInsets.only(left: 38.h),
                            child: Text("msg_coming_up_this_week".tr,
                                style: theme.textTheme.bodyLarge)),
                        SizedBox(height: 17.v),
                Container(
                  height: 378.v,
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (int index) {
                      setState(() {
                        current = index;
                        print(current);
                      });
                    },
                    children: [
                      _buildPexelsKassandr(context),
                      _buildPexelsKassandr(context),
                      _buildPexelsKassandr(context),
                    ],
                  ),
                ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) {
                      return Container(
                        width: current == index ?20.0:10,
                        height: 10.0,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),

                          color: current == index ? Colors.blue : Colors.grey,
                        ),
                      );
                    }),
                  ),

                        SizedBox(height: 27.v),
                       /* Consumer<Iphone13ProMaxTwoProvider>(
                            builder: (context, provider, child) {
                          return Container(
                              height: 3.v,
                              margin: EdgeInsets.only(left: 182.h),
                              child: AnimatedSmoothIndicator(
                                  activeIndex: provider.sliderIndex,
                                  count: provider.iphone13ProMaxTwoModelObj
                                      .pexelskassandrItemList.length,
                                  axisDirection: Axis.horizontal,
                                  effect: ScrollingDotsEffect(
                                      spacing: 6,
                                      activeDotColor: theme.colorScheme.primary,
                                      dotColor: appTheme.blueGray100,
                                      dotHeight: 3.v,
                                      dotWidth: 13.h)));
                        }),*/

                        _buildLastWeekSWebinar(context),
                        SizedBox(height: 20.v),
                        _buildDynamicView(context),


                      ])),
            ),
            floatingActionButton: _buildFloatingActionButton(context)));
  }



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
  Widget _buildPexelsKassandr(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 37.h),
        child: Consumer<Iphone13ProMaxTwoProvider>(
            builder: (context, provider, child) {
          return CarouselSlider.builder(
              options: CarouselOptions(
                  height: 346.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    provider.sliderIndex = index;
                  }),
              itemCount: provider
                  .iphone13ProMaxTwoModelObj.pexelskassandrItemList.length,
              itemBuilder: (context, index, realIndex) {
                PexelskassandrItemModel model = provider
                    .iphone13ProMaxTwoModelObj.pexelskassandrItemList[index];
                return PexelskassandrItemWidget(model);
              });
        }));
  }

  /// Section Widget
  Widget _buildLastWeekSWebinar(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 38.h, right: 42.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("msg_last_week_s_webinar".tr,
                      style: theme.textTheme.bodyLarge),

                  Padding(
                      padding: EdgeInsets.only(top: 7.v, bottom: 2.v),
                      child: Text("lbl_view_all".tr,
                          style: CustomTextStyles.labelMediumPrimaryContainer)),
              /*    CustomImageView(
                      imagePath: ImageConstant.imgVectorPrimarycontainer,
                      height: 4.v,
                      width: 2.h,
                      margin:
                          EdgeInsets.only(left: 4.h, top: 14.v, bottom: 8.v))*/
                ])));
  }

  /// Section Widget
  Widget _buildDynamicView(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 119.v,
            child: Consumer<Iphone13ProMaxTwoProvider>(
                builder: (context, provider, child) {
              return ListView.separated(
                  padding: EdgeInsets.only(left: 38.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 12.h);
                  },
                  itemCount: provider
                      .iphone13ProMaxTwoModelObj.dynamicviewItemList.length,
                  itemBuilder: (context, index) {
                    DynamicviewItemModel model = provider
                        .iphone13ProMaxTwoModelObj.dynamicviewItemList[index];
                    return DynamicviewItemWidget(model);
                  });
            })));
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
        height: 54,
        width: 54,
        backgroundColor: theme.colorScheme.primary,
        child: CustomImageView(
          color: Colors.white,
            imagePath: ImageConstant.imgUserOnprimarycontainer,
            height: 27.0.v,
            width: 27.0.h));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
