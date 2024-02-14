import 'models/iphone_13_pro_max_eight_model.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/core/utils/validation_functions.dart';
import 'package:arslan_s_application28/widgets/custom_elevated_button.dart';
import 'package:arslan_s_application28/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_13_pro_max_eight_provider.dart';
import 'package:arslan_s_application28/domain/googleauth/google_auth_helper.dart';
import 'package:arslan_s_application28/domain/facebookauth/facebook_auth_helper.dart';

class Iphone13ProMaxEightScreen extends StatefulWidget {
  const Iphone13ProMaxEightScreen({Key? key}) : super(key: key);

  @override
  Iphone13ProMaxEightScreenState createState() =>
      Iphone13ProMaxEightScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone13ProMaxEightProvider(),
        child: Iphone13ProMaxEightScreen());
  }
}

// ignore_for_file: must_be_immutable
class Iphone13ProMaxEightScreenState extends State<Iphone13ProMaxEightScreen> {
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
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 22.h, vertical: 27.v),
                            child: Column(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgStatusBar1,
                                  height: 15.v,
                                  width: 383.h),
                              SizedBox(height: 75.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 95.h),
                                      child: Text("lbl_get_started".tr,
                                          style: CustomTextStyles
                                              .headlineLargeBold))),
                              Text("msg_create_an_account".tr,
                                  style: CustomTextStyles.bodyLargeTeal400),
                              SizedBox(height: 73.v),
                              _buildEmail(context),
                              SizedBox(height: 22.v),
                              _buildPassword(context),
                              SizedBox(height: 22.v),
                              _buildConfirmpassword(context),
                              SizedBox(height: 84.v),
                              _buildSignUp(context),
                              SizedBox(height: 83.v),
                              Text("msg_use_social_login".tr,
                                  style: CustomTextStyles.bodyMediumOnPrimary),
                              SizedBox(height: 25.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 109.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgGoogle,
                                            height: 21.v,
                                            width: 20.h,
                                            onTap: () {
                                              onTapImgGoogle(context);
                                            }),
                                        Spacer(flex: 46),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgUserPrimarycontainer,
                                            height: 21.v,
                                            width: 17.h),
                                        Spacer(flex: 53),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgFacebook,
                                            height: 21.v,
                                            width: 11.h,
                                            onTap: () {
                                              onTapImgFacebook(context);
                                            })
                                      ])),
                              Spacer(),
                              SizedBox(height: 6.v),
                              Text("lbl_sign_in".tr,
                                  style: CustomTextStyles.titleMediumTeal400
                                      .copyWith(
                                          decoration: TextDecoration.underline))
                            ])))))));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.h),
        child: Selector<Iphone13ProMaxEightProvider, TextEditingController?>(
            selector: (context, provider) => provider.emailController,
            builder: (context, emailController, child) {
              return CustomTextFormField(
                  controller: emailController,
                  hintText: "lbl_email".tr,
                  textInputType: TextInputType.emailAddress,
                  prefix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 22.v, 13.h, 21.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgLock,
                          height: 12.v,
                          width: 17.h)),
                  prefixConstraints: BoxConstraints(maxHeight: 56.v),
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_email".tr;
                    }
                    return null;
                  });
            }));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.h),
        child: Consumer<Iphone13ProMaxEightProvider>(
            builder: (context, provider, child) {
          return CustomTextFormField(
              controller: provider.passwordController,
              hintText: "lbl_password".tr,
              textInputType: TextInputType.visiblePassword,
              prefix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 20.v, 15.h, 20.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgLocation,
                      height: 16.v,
                      width: 13.h)),
              prefixConstraints: BoxConstraints(maxHeight: 56.v),
              suffix: InkWell(
                  onTap: () {
                    provider.changePasswordVisibility();
                  },
                  child: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 23.v, 30.h, 22.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgObject,
                          height: 11.v,
                          width: 17.h))),
              suffixConstraints: BoxConstraints(maxHeight: 56.v),
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
              obscureText: provider.isShowPassword,
              contentPadding: EdgeInsets.symmetric(vertical: 17.v));
        }));
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.h),
        child: Consumer<Iphone13ProMaxEightProvider>(
            builder: (context, provider, child) {
          return CustomTextFormField(
              controller: provider.confirmpasswordController,
              hintText: "msg_confirm_password".tr,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              prefix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 20.v, 15.h, 20.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgLocation,
                      height: 16.v,
                      width: 13.h)),
              prefixConstraints: BoxConstraints(maxHeight: 56.v),
              suffix: InkWell(
                  onTap: () {
                    provider.changePasswordVisibility1();
                  },
                  child: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 23.v, 30.h, 22.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgObject,
                          height: 11.v,
                          width: 17.h))),
              suffixConstraints: BoxConstraints(maxHeight: 56.v),
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
              obscureText: provider.isShowPassword1,
              contentPadding: EdgeInsets.symmetric(vertical: 17.v));
        }));
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_sign_up".tr, margin: EdgeInsets.symmetric(horizontal: 22.h));
  }

  onTapImgGoogle(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  onTapImgFacebook(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }
}
