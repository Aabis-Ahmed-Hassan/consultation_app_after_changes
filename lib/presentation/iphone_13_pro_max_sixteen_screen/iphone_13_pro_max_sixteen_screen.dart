import 'models/iphone_13_pro_max_sixteen_model.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/core/utils/validation_functions.dart';
import 'package:arslan_s_application28/widgets/custom_elevated_button.dart';
import 'package:arslan_s_application28/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_13_pro_max_sixteen_provider.dart';

class Iphone13ProMaxSixteenScreen extends StatefulWidget {
  const Iphone13ProMaxSixteenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone13ProMaxSixteenScreenState createState() =>
      Iphone13ProMaxSixteenScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Iphone13ProMaxSixteenProvider(),
      child: Iphone13ProMaxSixteenScreen(),
    );
  }
}

class Iphone13ProMaxSixteenScreenState
    extends State<Iphone13ProMaxSixteenScreen> {
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
        body: Container(
          height: double.infinity,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 21.h,
            vertical: 66.v,
          ),
          child: Column(

            children: [
              Image.asset("assets/images/crop_three.png",scale: 1,fit: BoxFit.fill,),

              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: _buildForgotPasswordSection(context),
              ),

              Padding(
                padding: EdgeInsets.only(
                  left: 28.h,
                  right: 18.h,

                ),
                child: Selector<Iphone13ProMaxSixteenProvider,
                    TextEditingController?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.emailController,
                  builder: (context, emailController, child) {
                    return CustomTextFormField(
                      controller: emailController,
                      hintText: "lbl_email".tr,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.emailAddress,
                      prefix: Container(
                        margin:
                            EdgeInsets.fromLTRB(30.h, 22.v, 13.h, 21.v),
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
                        if (value == null ||
                            (!isValidEmail(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_email".tr;
                        }
                        return null;
                      },
                    );
                  },
                ),
              ),
              Spacer(),
              CustomElevatedButton(
                text: "lbl_send_reset_link".tr,
                margin: EdgeInsets.only(
                  left: 28.h,
                  right: 18.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildForgotPasswordSection(BuildContext context) {
    return SizedBox(

      child: Stack(
        alignment: Alignment.centerLeft,
        children: [

          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 38.h,
                right: 54.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [


                  Text(
                    "msg_forgot_password".tr,
                    style: CustomTextStyles.headlineLargeBold,
                  ),
                  Container(
                    width: 241.h,
                    margin: EdgeInsets.only(
                      left: 25.h,
                      right: 16.h,
                    ),
                    child: Text(
                      "msg_enter_phone_number".tr,
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
