import 'models/iphone_13_pro_max_fifty_model.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/core/utils/validation_functions.dart';
import 'package:arslan_s_application28/widgets/app_bar/appbar_leading_image.dart';
import 'package:arslan_s_application28/widgets/app_bar/appbar_trailing_image.dart';
import 'package:arslan_s_application28/widgets/app_bar/custom_app_bar.dart';
import 'package:arslan_s_application28/widgets/custom_elevated_button.dart';
import 'package:arslan_s_application28/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_13_pro_max_fifty_provider.dart';

class Iphone13ProMaxFiftyScreen extends StatefulWidget {
  const Iphone13ProMaxFiftyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone13ProMaxFiftyScreenState createState() =>
      Iphone13ProMaxFiftyScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Iphone13ProMaxFiftyProvider(),
      child: Iphone13ProMaxFiftyScreen(),
    );
  }
}

class Iphone13ProMaxFiftyScreenState extends State<Iphone13ProMaxFiftyScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [

                  Container(
                    height: MediaQuery.of(context).size.height/3.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/crop.png")
                      )
                    ),
                  ),

                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 44.h,
                        vertical: 32.v,
                      ),
                      child: Column(
                        children: [
                          Text(
                            "msg_share_with_a_friend".tr,
                            style: CustomTextStyles.headlineLargeBold,
                          ),
                          SizedBox(height: 3.v),
                          Text(
                            "msg_stay_connected_with".tr,
                            style: CustomTextStyles.bodyLargeTeal400,
                          ),
                          SizedBox(height: 36.v),
                          _buildClientTestimonialsSection(context),
                          SizedBox(height: 22.v),
                          _buildReviewsSection(context),
                          SizedBox(height: 22.v),
                          _buildDoctorReviewsSection(context),
                          SizedBox(height: 22.v),
                          _buildRecentOrdersSection(context),
                          SizedBox(height: 32.v),
                          _buildUserProfileSection(context),
                          SizedBox(height: 5.v),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPlaylistSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 5.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup128,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 91.v,
            width: 390.h,
            margin: EdgeInsets.only(left: 1.h),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                CustomImageView(
                  color: Colors.black,
                  imagePath: ImageConstant.imgPlay,
                  height: 85.v,
                  width: 75.h,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(right: 80.h),
                ),
                CustomImageView(
                  color: Colors.black,
                  imagePath: ImageConstant.imgThumbsUp,
                  height: 7.adaptSize,
                  width: 7.adaptSize,
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(
                    left: 143.h,
                    bottom: 4.v,
                  ),
                ),
                CustomAppBar(
                  height: 25.v,
                  leadingWidth: 427.h,
                  leading: AppbarLeadingImage(
                    imagePath: ImageConstant.imgThumbsUpPrimary,
                    margin: EdgeInsets.only(
                      left: 19.h,
                      right: 398.h,
                    ),
                  ),
                  actions: [
                    AppbarTrailingImage(
                      imagePath: ImageConstant.imgThumbsUpPrimary,
                      margin: EdgeInsets.only(
                        left: 19.h,
                        top: 8.v,
                        right: 19.h,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(
              left: 25.h,
              right: 52.h,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomImageView(
                  color: Colors.black,
                  imagePath: ImageConstant.imgPlayGray300,
                  height: 84.v,
                  width: 74.h,
                  margin: EdgeInsets.only(bottom: 53.v),
                ),
                Spacer(
                  flex: 27,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgThumbsUpTeal400,
                  height: 10.adaptSize,
                  width: 10.adaptSize,
                  margin: EdgeInsets.only(
                    top: 95.v,
                    bottom: 32.v,
                  ),
                ),
                Spacer(
                  flex: 42,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgPlayGray30061x54,
                  height: 61.v,
                  width: 54.h,
                  margin: EdgeInsets.only(top: 76.v),
                ),
                Spacer(
                  flex: 30,
                ),
                CustomImageView(
                  color: Colors.black,
                  imagePath: ImageConstant.imgRectangle1232,
                  height: 5.adaptSize,
                  width: 5.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 66.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildClientTestimonialsSection(BuildContext context) {
    return Selector<Iphone13ProMaxFiftyProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.clientTestimonialsSectionController,
      builder: (context, clientTestimonialsSectionController, child) {
        return CustomTextFormField(
          controller: clientTestimonialsSectionController,
          hintText: "lbl_name".tr,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 22.v, 16.h, 22.v),
            child: CustomImageView(
              color: Colors.grey,
              imagePath: ImageConstant.imgGroup,
              height: 12.v,
              width: 11.h,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 56.v,
          ),
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildReviewsSection(BuildContext context) {
    return Selector<Iphone13ProMaxFiftyProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.reviewsSectionController,
      builder: (context, reviewsSectionController, child) {
        return CustomTextFormField(

          controller: reviewsSectionController,
          hintText: "lbl_email".tr,
          textInputType: TextInputType.emailAddress,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 22.v, 13.h, 21.v),
            child: CustomImageView(
              color: Colors.grey,
              imagePath: ImageConstant.imgLock,
              height: 12.v,
              width: 17.h,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 56.v,
          ),
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDoctorReviewsSection(BuildContext context) {
    return Selector<Iphone13ProMaxFiftyProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.doctorReviewsSectionController,
      builder: (context, doctorReviewsSectionController, child) {
        return CustomTextFormField(
          controller: doctorReviewsSectionController,
          hintText: "lbl_website".tr,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 20.v, 13.h, 20.v),
            child: CustomImageView(
              color: Colors.grey,
              imagePath: ImageConstant.imgGlobe,
              height: 16.adaptSize,
              width: 16.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 56.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildRecentOrdersSection(BuildContext context) {
    return Selector<Iphone13ProMaxFiftyProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.recentOrdersSectionController,
      builder: (context, recentOrdersSectionController, child) {
        return CustomTextFormField(
          controller: recentOrdersSectionController,
          hintText: "lbl_linkedin".tr,
          textInputAction: TextInputAction.done,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 20.v, 13.h, 20.v),
            child: CustomImageView(
              color: Colors.grey,
              imagePath: ImageConstant.imgLink,
              height: 16.adaptSize,
              width: 16.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 56.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildUserProfileSection(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_done".tr,
    );
  }
}
