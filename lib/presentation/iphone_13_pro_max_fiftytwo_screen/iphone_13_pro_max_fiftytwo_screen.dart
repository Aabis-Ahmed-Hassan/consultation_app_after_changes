import 'models/iphone_13_pro_max_fiftytwo_model.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/core/utils/validation_functions.dart';
import 'package:arslan_s_application28/widgets/custom_elevated_button.dart';
import 'package:arslan_s_application28/widgets/custom_icon_button.dart';
import 'package:arslan_s_application28/widgets/custom_text_form_field.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_13_pro_max_fiftytwo_provider.dart';

class Iphone13ProMaxFiftytwoScreen extends StatefulWidget {
  const Iphone13ProMaxFiftytwoScreen({Key? key}) : super(key: key);

  @override
  Iphone13ProMaxFiftytwoScreenState createState() =>
      Iphone13ProMaxFiftytwoScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone13ProMaxFiftytwoProvider(),
        child: Iphone13ProMaxFiftytwoScreen());
  }
}

// ignore_for_file: must_be_immutable
class Iphone13ProMaxFiftytwoScreenState
    extends State<Iphone13ProMaxFiftytwoScreen> {
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
                                      child: Text("msg_edit_profile_info".tr,
                                          style: CustomTextStyles
                                              .bodyMediumTeal40015))),
                              SizedBox(height: 15.v),
                              Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: appTheme.gray10002,
                                          width: 1.h),
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder130),
                                  child: Container(
                                      height: 260.adaptSize,
                                      width: 260.adaptSize,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 21.h, vertical: 15.v),
                                      decoration: AppDecoration.outlineGray10002
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder130),
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 19.v),
                                                    decoration: AppDecoration
                                                        .outlineGray100
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .circleBorder108),
                                                    child: DottedBorder(
                                                        color: appTheme.teal400,
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 3.h,
                                                                top: 3.v,
                                                                right: 3.h,
                                                                bottom: 3.v),
                                                        strokeWidth: 3.h,
                                                        radius:
                                                            Radius.circular(87),
                                                        borderType:
                                                            BorderType.RRect,
                                                        dashPattern: [26, 26],
                                                        child: Container(
                                                            padding:
                                                                EdgeInsets.all(2.h),
                                                            decoration: AppDecoration.outlineTeal400.copyWith(borderRadius: BorderRadiusStyle.circleBorder87),
                                                            child: Container(height: 170.adaptSize, width: 170.adaptSize, padding: EdgeInsets.symmetric(horizontal: 8.h), decoration: AppDecoration.fillBlueGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder87), child: CustomImageView(imagePath: ImageConstant.imgUnsplashWnolnjo7ts8170x153, height: 170.v, width: 153.h, radius: BorderRadius.circular(85.h), alignment: Alignment.center)))))),
                                            CustomIconButton(
                                                height: 54.adaptSize,
                                                width: 54.adaptSize,
                                                padding: EdgeInsets.all(17.h),
                                                decoration: IconButtonStyleHelper
                                                    .outlineOnPrimaryContainer,
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgTelevision))
                                          ]))),
                              SizedBox(height: 43.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 22.h),
                                  child: Selector<
                                          Iphone13ProMaxFiftytwoProvider,
                                          TextEditingController?>(
                                      selector: (context, provider) =>
                                          provider.nameController,
                                      builder:
                                          (context, nameController, child) {
                                        return CustomTextFormField(
                                            controller: nameController,
                                            hintText: "lbl_name".tr,
                                            prefix: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    30.h, 22.v, 16.h, 22.v),
                                                child: CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgGroup,
                                                    height: 12.v,
                                                    width: 11.h)),
                                            prefixConstraints:
                                                BoxConstraints(maxHeight: 56.v),
                                            validator: (value) {
                                              if (!isText(value)) {
                                                return "err_msg_please_enter_valid_text"
                                                    .tr;
                                              }
                                              return null;
                                            });
                                      })),
                              SizedBox(height: 22.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 22.h),
                                  child: Selector<
                                          Iphone13ProMaxFiftytwoProvider,
                                          TextEditingController?>(
                                      selector: (context, provider) =>
                                          provider.emailController,
                                      builder:
                                          (context, emailController, child) {
                                        return CustomTextFormField(
                                            controller: emailController,
                                            hintText: "lbl_email".tr,
                                            textInputAction:
                                                TextInputAction.done,
                                            textInputType:
                                                TextInputType.emailAddress,
                                            prefix: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    30.h, 22.v, 13.h, 21.v),
                                                child: CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgLock,
                                                    height: 12.v,
                                                    width: 17.h)),
                                            prefixConstraints:
                                                BoxConstraints(maxHeight: 56.v),
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidEmail(value,
                                                      isRequired: true))) {
                                                return "err_msg_please_enter_valid_email"
                                                    .tr;
                                              }
                                              return null;
                                            });
                                      })),
                              SizedBox(height: 5.v)
                            ]))))),
            bottomNavigationBar: _buildSaveChanges(context)));
  }

  /// Section Widget
  Widget _buildSaveChanges(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_save_changes".tr,
        margin: EdgeInsets.only(left: 44.h, right: 44.h, bottom: 54.v));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
