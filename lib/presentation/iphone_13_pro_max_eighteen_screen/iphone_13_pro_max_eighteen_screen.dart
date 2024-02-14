import 'models/iphone_13_pro_max_eighteen_model.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/widgets/custom_elevated_button.dart';
import 'package:arslan_s_application28/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_13_pro_max_eighteen_provider.dart';

class Iphone13ProMaxEighteenScreen extends StatefulWidget {
  const Iphone13ProMaxEighteenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone13ProMaxEighteenScreenState createState() =>
      Iphone13ProMaxEighteenScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Iphone13ProMaxEighteenProvider(),
      child: Iphone13ProMaxEighteenScreen(),
    );
  }
}

class Iphone13ProMaxEighteenScreenState
    extends State<Iphone13ProMaxEighteenScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 21.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Image.asset("assets/images/crop_five.png",scale: 1,fit: BoxFit.cover,)),
              SizedBox(height: 9.v),
              _buildEnterOtp(context),
              SizedBox(height: 41.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.h),
                child: Selector<Iphone13ProMaxEighteenProvider,
                    TextEditingController?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.otpController,
                  builder: (context, otpController, child) {
                    return CustomPinCodeTextField(
                      context: context,
                      controller: otpController,
                      onChanged: (value) {
                        otpController?.text = value;
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 39.v),
              Padding(
                padding: EdgeInsets.only(left: 152.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgInbox,
                      height: 21.v,
                      width: 20.h,
                      margin: EdgeInsets.only(bottom: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "lbl_00_42".tr,
                        style: CustomTextStyles.bodyMediumBlack900,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 53.v),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "lbl_resend_code".tr,
                  style: CustomTextStyles.titleMediumTeal400.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              SizedBox(height: 70.v),
              CustomElevatedButton(
                text: "msg_complete_registration".tr,
                margin: EdgeInsets.only(
                  left: 28.h,
                  right: 18.h,
                ),
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEnterOtp(BuildContext context) {
    return Container(

      margin: EdgeInsets.only(left: 11.h),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [

          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 61.h,
                right: 85.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "lbl_enter_otp".tr,
                    style: CustomTextStyles.headlineLargeBold,
                  ),
                  SizedBox(height: 3.v),
                  SizedBox(
                    width: 228.h,
                    child: Text(
                      "msg_you_will_receive".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyLargeTeal400.copyWith(
                        height: 1.76,
                      ),
                    ),
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
