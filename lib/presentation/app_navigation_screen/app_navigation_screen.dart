import 'models/app_navigation_model.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/app_navigation_provider.dart';

class AppNavigationScreen extends StatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppNavigationProvider(),
      child: AppNavigationScreen(),
    );
  }
}

class AppNavigationScreenState extends State<AppNavigationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - FiftyEight".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone13ProMaxFiftyeightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - FortySeven".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone13ProMaxFortysevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - FortyEight".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone13ProMaxFortyeightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - Fifty".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone13ProMaxFiftyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - FiftyThree".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone13ProMaxFiftythreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - FiftyTwo".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone13ProMaxFiftytwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - FiftyFour".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone13ProMaxFiftyfourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - FiftySix".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone13ProMaxFiftysixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone13ProMaxTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - Four".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone13ProMaxFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - Seven".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone13ProMaxSevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - Six".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone13ProMaxSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - Five".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone13ProMaxFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - Eight".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone13ProMaxEightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - SixtyNine".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone13ProMaxSixtynineScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - Seventy".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone13ProMaxSeventyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - SeventyOne".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone13ProMaxSeventyoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - SixtyEight".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone13ProMaxSixtyeightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - SixtyFour".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone13ProMaxSixtyfourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - Twelve".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone13ProMaxTwelveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - SeventyTwo".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone13ProMaxSeventytwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - SeventyThree".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone13ProMaxSeventythreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - SeventyFour".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone13ProMaxSeventyfourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - Sixteen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone13ProMaxSixteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - Seventeen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone13ProMaxSeventeenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - Eighteen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone13ProMaxEighteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - SixtySeven".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone13ProMaxSixtysevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - Nineteen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone13ProMaxNineteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - TwentyTwo".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone13ProMaxTwentytwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - SixtyFive".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone13ProMaxSixtyfiveScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
