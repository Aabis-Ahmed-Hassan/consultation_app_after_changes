import '../iphone_13_pro_max_sixtynine_screen/widgets/chipview_item_widget.dart';
import 'models/chipview_item_model.dart';
import 'models/iphone_13_pro_max_sixtynine_model.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:arslan_s_application28/widgets/app_bar/appbar_image.dart';
import 'package:arslan_s_application28/widgets/app_bar/appbar_leading_image.dart';
import 'package:arslan_s_application28/widgets/app_bar/custom_app_bar.dart';
import 'package:arslan_s_application28/widgets/custom_elevated_button.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_13_pro_max_sixtynine_provider.dart';

class Iphone13ProMaxSixtynineScreen extends StatefulWidget {
  const Iphone13ProMaxSixtynineScreen({Key? key}) : super(key: key);

  @override
  Iphone13ProMaxSixtynineScreenState createState() =>
      Iphone13ProMaxSixtynineScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone13ProMaxSixtynineProvider(),
        child: Iphone13ProMaxSixtynineScreen());
  }
}

class Iphone13ProMaxSixtynineScreenState
    extends State<Iphone13ProMaxSixtynineScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

            body: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,

                  width: double.maxFinite,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height/90,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.arrow_back_ios,color: Colors.grey,),
                          onPressed: () {
                            // Implement your back button functionality here
                          },
                        ),
                        CircleAvatar(
                          radius: MediaQuery.of(context).size.width/15,
                          backgroundImage: AssetImage(ImageConstant.imgPlay41x41),
                        ),
                      ],
                                      ),
                    ),

                    /*    CustomImageView(
                            imagePath: ImageConstant.imgStatusBar1,
                            height: 15.v,
                            width: 383.h),*/

                        Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text("lbl_select_date".tr,
                                style: CustomTextStyles.bodyMediumTeal40015)),
                        Padding(
                            padding: EdgeInsets.only(left: 15.h),
                            child: Text("msg_schedule_appointment".tr,
                                style: theme.textTheme.headlineMedium)),
                        SizedBox(height: 11.v),
                        _buildCalendar(context),
                        SizedBox(height: 30.v),
                        Padding(
                            padding: EdgeInsets.only(left: 15.h),
                            child: Text("lbl_time".tr,
                                style: theme.textTheme.bodyLarge)),
                        SizedBox(height: 10.v),
                        _buildChipView(context),

                      ])),
            ),
            bottomNavigationBar: _buildFixSchedule(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 45.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 38.h, top: 30.v, bottom: 13.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          Container(
              margin: EdgeInsets.symmetric(horizontal: 37.h),
              decoration: AppDecoration.fillBlueGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
              child: AppbarImage(imagePath: ImageConstant.imgPlay41x41,))
        ]);
  }

  /// Section Widget
  Widget _buildCalendar(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Consumer<Iphone13ProMaxSixtynineProvider>(
            builder: (context, provider, child) {
          return SizedBox(
              height: 373.v,
              width: 353.h,
              child: CalendarDatePicker2(
                  config: CalendarDatePicker2Config(
                      calendarType: CalendarDatePicker2Type.single,
                      firstDate: DateTime(DateTime.now().year - 5),
                      lastDate: DateTime(DateTime.now().year + 5),
                      selectedDayHighlightColor: Color(0XFF70BEB0),
                      firstDayOfWeek: 0,
                      selectedDayTextStyle: TextStyle(
                          color: Color(0XFFFFFFFF),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600),
                      dayTextStyle: TextStyle(
                          color: appTheme.black900.withOpacity(0.49),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400),
                      disabledDayTextStyle: TextStyle(
                          color: appTheme.black900.withOpacity(0.49),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400),
                      dayBorderRadius: BorderRadius.circular(20.5.h)),
                  value: provider.selectedDatesFromCalendar1 ?? [],
                  onValueChanged: (dates) {
                    provider.selectedDatesFromCalendar1 = dates;
                  }));
        }));
  }

  /// Section Widget
  Widget _buildChipView(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Consumer<Iphone13ProMaxSixtynineProvider>(
            builder: (context, provider, child) {
          return Wrap(
              runSpacing: 9.v,
              spacing: 9.h,
              children: List<Widget>.generate(
                  provider.iphone13ProMaxSixtynineModelObj.chipviewItemList
                      .length, (index) {
                ChipviewItemModel model = provider
                    .iphone13ProMaxSixtynineModelObj.chipviewItemList[index];
                return ChipviewItemWidget(model, onSelectedChipView1: (value) {
                  provider.onSelectedChipView1(index, value);
                });
              }));
        }));
  }

  /// Section Widget
  Widget _buildFixSchedule(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_fix_schedule".tr,
        margin: EdgeInsets.only(left: 44.h, right: 44.h, bottom: 38.v));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
