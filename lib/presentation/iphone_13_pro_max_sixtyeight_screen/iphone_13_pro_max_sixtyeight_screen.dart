import 'models/iphone_13_pro_max_sixtyeight_model.dart';
import 'package:arslan_s_application28/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_13_pro_max_sixtyeight_provider.dart';

class Iphone13ProMaxSixtyeightScreen extends StatefulWidget {
  const Iphone13ProMaxSixtyeightScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone13ProMaxSixtyeightScreenState createState() =>
      Iphone13ProMaxSixtyeightScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Iphone13ProMaxSixtyeightProvider(),
      child: Iphone13ProMaxSixtyeightScreen(),
    );
  }
}

class Iphone13ProMaxSixtyeightScreenState
    extends State<Iphone13ProMaxSixtyeightScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 22.h,
            vertical: 27.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgStatusBar1,
                height: 15.v,
                width: 383.h,
              ),
              Spacer(
                flex: 49,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage20,
                height: 101.v,
                width: 333.h,
              ),
              Spacer(
                flex: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
