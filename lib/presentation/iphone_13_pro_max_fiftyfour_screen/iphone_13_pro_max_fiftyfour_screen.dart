import 'models/iphone_13_pro_max_fiftyfour_model.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/core/utils/validation_functions.dart';
import 'package:arslan_s_application28/widgets/custom_elevated_button.dart';
import 'package:arslan_s_application28/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_13_pro_max_fiftyfour_provider.dart';

class Iphone13ProMaxFiftyfourScreen extends StatefulWidget {
  const Iphone13ProMaxFiftyfourScreen({Key? key}) : super(key: key);

  @override
  Iphone13ProMaxFiftyfourScreenState createState() =>
      Iphone13ProMaxFiftyfourScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone13ProMaxFiftyfourProvider(),
        child: Iphone13ProMaxFiftyfourScreen());
  }
}

// ignore_for_file: must_be_immutable
class Iphone13ProMaxFiftyfourScreenState
    extends State<Iphone13ProMaxFiftyfourScreen> {
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
              height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 22.h, vertical: 27.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.arrow_back_ios,color: Colors.grey,),

                                  CustomImageView(
                                      imagePath: ImageConstant.imgArrowLeft,
                                      height: 14.v,
                                      width: 7.h,
                                      margin: EdgeInsets.only(left: 15.h),
                                      onTap: () {
                                        onTapImgArrowLeft(context);
                                      }),
                                  SizedBox(height: 43.v),
                                  Container(
                                      height: 63.v,
                                      width: 301.h,
                                      margin: EdgeInsets.only(left: 15.h),
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 1.h),
                                                    child: Text(
                                                        "lbl_payment_method".tr,
                                                        style: CustomTextStyles
                                                            .bodyMediumTeal40015))),
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Text(
                                                    "msg_add_payment_method".tr,
                                                    style: theme.textTheme
                                                        .headlineMedium))
                                          ])),
                                  SizedBox(height: 29.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 15.h),
                                      child: Text("msg_card_information".tr,
                                          style: theme.textTheme.bodyLarge)),
                                  SizedBox(height: 19.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 34.h),
                                      child: Text("msg_card_holder_name".tr,
                                          style: CustomTextStyles
                                              .bodySmallGreen300)),
                                  SizedBox(height: 6.v),
                                  _buildPaymentMethod(context),
                                  SizedBox(height: 20.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 34.h),
                                      child: Text("lbl_card_number".tr,
                                          style: CustomTextStyles
                                              .bodySmallGreen300)),
                                  SizedBox(height: 6.v),
                                  _buildCardNumber(context),
                                  SizedBox(height: 39.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 34.h),
                                      child: Row(children: [
                                        Padding(
                                            padding: EdgeInsets.only(top: 1.v),
                                            child: Text("lbl_expires_on".tr,
                                                style: CustomTextStyles
                                                    .bodySmallGreen300)),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 125.h),
                                            child: Text("lbl_csv".tr,
                                                style: CustomTextStyles
                                                    .bodySmallGreen300))
                                      ])),
                                  SizedBox(height: 6.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 21.h),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                _buildExpiresOn(context),
                                                _buildCsv(context)
                                              ]))),
                                  SizedBox(height: 55.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 15.h),
                                      child: Text("lbl_billing_address".tr,
                                          style: theme.textTheme.bodyLarge)),
                                  SizedBox(height: 17.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 34.h),
                                      child: Text("msg_country_or_region".tr,
                                          style: CustomTextStyles
                                              .bodySmallGreen300)),
                                  SizedBox(height: 4.v),
                                  _buildAddress(context),
                                  SizedBox(height: 5.v)
                                ]))))),
            bottomNavigationBar: _buildSavePaymentMethod(context)));
  }

  /// Section Widget
  Widget _buildPaymentMethod(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 22.h, right: 21.h),
        child:
            Selector<Iphone13ProMaxFiftyfourProvider, TextEditingController?>(
                selector: (context, provider) =>
                    provider.paymentMethodController,
                builder: (context, paymentMethodController, child) {
                  return CustomTextFormField(
                      controller: paymentMethodController,
                      hintText: "lbl_name".tr,
                      alignment: Alignment.center,
                      prefix: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 22.v, 16.h, 22.v),
                          child: CustomImageView(
                            color: Colors.grey,
                              imagePath: ImageConstant.imgGroup,
                              height: 12.v,
                              width: 11.h)),
                      prefixConstraints: BoxConstraints(maxHeight: 56.v),
                      validator: (value) {
                        if (!isText(value)) {
                          return "err_msg_please_enter_valid_text".tr;
                        }
                        return null;
                      });
                }));
  }

  /// Section Widget
  Widget _buildCardNumber(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 23.h, right: 21.h),
        child:
            Selector<Iphone13ProMaxFiftyfourProvider, TextEditingController?>(
                selector: (context, provider) => provider.cardNumberController,
                builder: (context, cardNumberController, child) {
                  return CustomTextFormField(
                      controller: cardNumberController,
                      hintText: "msg_enter_card_number".tr,
                      textInputType: TextInputType.number,
                      alignment: Alignment.center,
                      suffix: Container(
                          margin: EdgeInsets.fromLTRB(12.h, 18.v, 24.h, 18.v),
                          child: CustomImageView(

                              imagePath: ImageConstant.imgCloseAmber300,
                              height: 20.v,
                              width: 32.h)),
                      suffixConstraints: BoxConstraints(maxHeight: 56.v),
                      validator: (value) {
                        if (!isNumeric(value)) {
                          return "err_msg_please_enter_valid_number".tr;
                        }
                        return null;
                      },
                      contentPadding:
                          EdgeInsets.only(left: 30.h, top: 17.v, bottom: 17.v));
                }));
  }

  /// Section Widget
  Widget _buildExpiresOn(BuildContext context) {
    return Selector<Iphone13ProMaxFiftyfourProvider, TextEditingController?>(
        selector: (context, provider) => provider.expiresOnController,
        builder: (context, expiresOnController, child) {
          return CustomTextFormField(
              width: 164.h,
              controller: expiresOnController,
              hintText: "lbl_01_25".tr,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 30.h, vertical: 17.v));
        });
  }

  /// Section Widget
  Widget _buildCsv(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 13.h),
        child:
            Selector<Iphone13ProMaxFiftyfourProvider, TextEditingController?>(
                selector: (context, provider) => provider.csvController,
                builder: (context, csvController, child) {
                  return CustomTextFormField(
                      width: 164.h,
                      controller: csvController,
                      hintText: "lbl_043".tr,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 30.h, vertical: 17.v));
                }));
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 23.h, right: 21.h),
        child:
            Selector<Iphone13ProMaxFiftyfourProvider, TextEditingController?>(
                selector: (context, provider) => provider.addressController,
                builder: (context, addressController, child) {
                  return CustomTextFormField(
                      controller: addressController,
                      hintText: "lbl_enter_address".tr,
                      textInputAction: TextInputAction.done,
                      alignment: Alignment.center,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 30.h, vertical: 17.v));
                }));
  }

  /// Section Widget
  Widget _buildSavePaymentMethod(BuildContext context) {
    return CustomElevatedButton(
        text: "msg_save_payment_method".tr,
        margin: EdgeInsets.only(left: 44.h, right: 44.h, bottom: 54.v));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
