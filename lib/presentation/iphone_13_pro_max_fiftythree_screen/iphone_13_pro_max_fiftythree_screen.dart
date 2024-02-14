import 'models/iphone_13_pro_max_fiftythree_model.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/core/utils/validation_functions.dart';
import 'package:arslan_s_application28/widgets/custom_text_form_field.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_13_pro_max_fiftythree_provider.dart';

class Iphone13ProMaxFiftythreeScreen extends StatefulWidget {
  const Iphone13ProMaxFiftythreeScreen({Key? key}) : super(key: key);

  @override
  Iphone13ProMaxFiftythreeScreenState createState() =>
      Iphone13ProMaxFiftythreeScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone13ProMaxFiftythreeProvider(),
        child: Iphone13ProMaxFiftythreeScreen());
  }
}

// ignore_for_file: must_be_immutable
class Iphone13ProMaxFiftythreeScreenState
    extends State<Iphone13ProMaxFiftythreeScreen> {
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
                              SizedBox(height: 44.v),
                              CustomImageView(
                                  imagePath: ImageConstant.imgArrowLeft,
                                  height: 14.v,
                                  width: 7.h,
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(left: 16.h),
                                  onTap: () {
                                    onTapImgArrowLeft(context);
                                  }),
                              SizedBox(height: 41.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 16.h),
                                      child: Text("lbl_profile".tr,
                                          style: CustomTextStyles
                                              .bodyMediumTeal40015))),
                              SizedBox(height: 22.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 124.h),
                                  child: DottedBorder(
                                      color: appTheme.teal400,
                                      padding: EdgeInsets.only(
                                          left: 3.h,
                                          top: 3.v,
                                          right: 3.h,
                                          bottom: 3.v),
                                      strokeWidth: 3.h,
                                      radius: Radius.circular(64),
                                      borderType: BorderType.RRect,
                                      dashPattern: [20, 20],
                                      child: Container(
                                          padding: EdgeInsets.all(1.h),
                                          decoration: AppDecoration.outlineTeal
                                              .copyWith(
                                                  borderRadius: BorderRadiusStyle
                                                      .roundedBorder64),
                                          child: Container(
                                              height: 126.adaptSize,
                                              width: 126.adaptSize,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 6.h),
                                              decoration: AppDecoration.fillBlueGray.copyWith(
                                                  borderRadius: BorderRadiusStyle
                                                      .roundedBorder64),
                                              child: CustomImageView(
                                                  imagePath: ImageConstant.imgUnsplashWnolnjo7ts8,
                                                  height: 126.v,
                                                  width: 113.h,
                                                  radius: BorderRadius.circular(63.h),
                                                  alignment: Alignment.center))))),
                              SizedBox(height: 24.v),
                              Text("lbl_michael_oliver".tr,
                                  style: CustomTextStyles
                                      .titleLargePrimaryContainerBold),
                              Text("msg_los_angeles_usa".tr,
                                  style: CustomTextStyles.bodyMediumTeal400),
                              SizedBox(height: 46.v),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 16.h, right: 15.h),
                                  child: Selector<
                                          Iphone13ProMaxFiftythreeProvider,
                                          TextEditingController?>(
                                      selector: (context, provider) =>
                                          provider.profileInfoController,
                                      builder: (context, profileInfoController,
                                          child) {
                                        return CustomTextFormField(
                                            controller: profileInfoController,
                                            hintText: "lbl_profile_info".tr,
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 25.h,
                                                    vertical: 21.v));
                                      })),
                              SizedBox(height: 17.v),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 16.h, right: 15.h),
                                  child: Selector<
                                          Iphone13ProMaxFiftythreeProvider,
                                          TextEditingController?>(
                                      selector: (context, provider) =>
                                          provider.passwordController,
                                      builder:
                                          (context, passwordController, child) {
                                        return CustomTextFormField(
                                            controller: passwordController,
                                            hintText: "lbl_change_password".tr,
                                            textInputType:
                                                TextInputType.visiblePassword,
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidPassword(value,
                                                      isRequired: true))) {
                                                return "err_msg_please_enter_valid_password"
                                                    .tr;
                                              }
                                              return null;
                                            },
                                            obscureText: true,
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 25.h,
                                                    vertical: 21.v));
                                      })),
                              SizedBox(height: 17.v),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 16.h, right: 15.h),
                                  child: Selector<
                                          Iphone13ProMaxFiftythreeProvider,
                                          TextEditingController?>(
                                      selector: (context, provider) =>
                                          provider.paymentMethodController,
                                      builder: (context,
                                          paymentMethodController, child) {
                                        return CustomTextFormField(
                                            controller: paymentMethodController,
                                            hintText: "lbl_payment_method".tr,
                                            textInputAction:
                                                TextInputAction.done,
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 25.h,
                                                    vertical: 21.v));
                                      })),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
