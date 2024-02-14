import 'models/iphone_13_pro_max_seventeen_model.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/core/utils/validation_functions.dart';
import 'package:arslan_s_application28/widgets/custom_elevated_button.dart';
import 'package:arslan_s_application28/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_13_pro_max_seventeen_provider.dart';

class Iphone13ProMaxSeventeenScreen extends StatefulWidget {
  const Iphone13ProMaxSeventeenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone13ProMaxSeventeenScreenState createState() =>
      Iphone13ProMaxSeventeenScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Iphone13ProMaxSeventeenProvider(),
      child: Iphone13ProMaxSeventeenScreen(),
    );
  }
}

class Iphone13ProMaxSeventeenScreenState
    extends State<Iphone13ProMaxSeventeenScreen> {
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
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 21.h,
              vertical: 66.v,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/images/crop_three.png",scale: 1,fit: BoxFit.fill,),
           /*     SizedBox(height: 88.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgThumbsUp,
                      height: 13.adaptSize,
                      width: 13.adaptSize,
                      margin: EdgeInsets.only(
                        top: 130.v,
                        bottom: 40.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 39.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgThumbsUpTeal400,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin: EdgeInsets.only(
                                    top: 109.v,
                                    bottom: 6.v,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgGroup16391,
                                  height: 136.v,
                                  width: 112.h,
                                  margin: EdgeInsets.only(left: 8.h),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgContrastIndigo800,
                                height: 35.v,
                                width: 30.h,
                                margin: EdgeInsets.only(bottom: 13.v),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgThumbsUpPrimary,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                margin: EdgeInsets.only(
                                  left: 17.h,
                                  top: 27.v,
                                ),
                              ),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgContrastIndigo800,
                                height: 32.v,
                                width: 28.h,
                                margin: EdgeInsets.only(
                                  left: 16.h,
                                  top: 3.v,
                                  bottom: 13.v,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),*/
                SizedBox(height: 10.v),
                _buildResetPasswordSection(context),
                SizedBox(height: 48.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 29.h,
                    right: 17.h,
                  ),
                  child: Consumer<Iphone13ProMaxSeventeenProvider>(
                    builder: (context, provider, child) {
                      return CustomTextFormField(
                        controller: provider.newpasswordController,
                        hintText: "lbl_new_password".tr,
                        textInputType: TextInputType.visiblePassword,
                        prefix: Container(
                          margin:
                              EdgeInsets.fromLTRB(30.h, 20.v, 15.h, 20.v),
                          child: CustomImageView(
                            color: Colors.grey,
                            imagePath: ImageConstant.imgLocation,
                            height: 16.v,
                            width: 13.h,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: 56.v,
                        ),
                        suffix: InkWell(
                          onTap: () {
                            provider.changePasswordVisibility();
                          },
                          child: Container(
                            margin:
                                EdgeInsets.fromLTRB(30.h, 23.v, 30.h, 22.v),
                            child: CustomImageView(

                              imagePath: ImageConstant.imgObject,
                              height: 11.v,
                              width: 17.h,
                            ),
                          ),
                        ),
                        suffixConstraints: BoxConstraints(
                          maxHeight: 56.v,
                        ),
                        validator: (value) {
                          if (value == null ||
                              (!isValidPassword(value, isRequired: true))) {
                            return "err_msg_please_enter_valid_password".tr;
                          }
                          return null;
                        },
                        obscureText: provider.isShowPassword,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 17.v),
                      );
                    },
                  ),
                ),
                SizedBox(height: 22.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 29.h,
                    right: 17.h,
                  ),
                  child: Consumer<Iphone13ProMaxSeventeenProvider>(
                    builder: (context, provider, child) {
                      return CustomTextFormField(
                        controller: provider.newpasswordController1,
                        hintText: "msg_confirm_new_password".tr,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        prefix: Container(
                          margin:
                              EdgeInsets.fromLTRB(30.h, 20.v, 15.h, 20.v),
                          child: CustomImageView(
                            color: Colors.grey,
                            imagePath: ImageConstant.imgLocation,
                            height: 16.v,
                            width: 13.h,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: 56.v,
                        ),
                        suffix: InkWell(
                          onTap: () {
                            provider.changePasswordVisibility1();
                          },
                          child: Container(
                            margin:
                                EdgeInsets.fromLTRB(30.h, 23.v, 30.h, 22.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgObject,
                              height: 11.v,
                              width: 17.h,
                            ),
                          ),
                        ),
                        suffixConstraints: BoxConstraints(
                          maxHeight: 56.v,
                        ),
                        validator: (value) {
                          if (value == null ||
                              (!isValidPassword(value, isRequired: true))) {
                            return "err_msg_please_enter_valid_password".tr;
                          }
                          return null;
                        },
                        obscureText: provider.isShowPassword1,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 17.v),
                      );
                    },
                  ),
                ),
                Spacer(),
                CustomElevatedButton(
                  text: "lbl_reset_password".tr,
                  margin: EdgeInsets.only(
                    left: 28.h,
                    right: 17.h,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildResetPasswordSection(BuildContext context) {
    return SizedBox(

      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [

          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 62.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "lbl_reset_password".tr,
                    style: CustomTextStyles.headlineLargeBold,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "msg_enter_in_a_new_password".tr,
                    style: CustomTextStyles.bodyLargeTeal400,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
