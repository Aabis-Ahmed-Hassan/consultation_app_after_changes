
import 'package:flutter/material.dart';

import '../components/my_app_bar.dart';
import '../components/my_button.dart';
import '../constants/app_texts.dart';
import '../constants/default_padding.dart';

class Screen_Twenty_Seven extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: MyAppBar(
        imageAddress: 'assets/icons/icon_1.png',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * MyPadding.scaffoldBodyPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.02,
            ),
            const Text('Schedule A Call with Carrie',
                style: AppTexts.MyNormalText),
            const Text('Meet Carrie!', style: AppTexts.MyHeadingText),
            SizedBox(
              height: height * 0.025,
            ),
            const Text(
              'For Teachers, Parents & School',
              style: AppTexts.MySubHeadingText,
            ),
            SizedBox(
              height: height * 0.0125,
            ),
            const Text(
                "Schedule a Zoom call for questions and \nconcerns : \n* Lesson Plans\n* Class Management\n* IEPs\n* Advocacy",
                style: AppTexts.MyParagraphText),
            Spacer(),
            MyButton(
              title: 'Schedule A Call',
            ),
            SizedBox(
              height: height * 0.25,
            ),
          ],
        ),
      ),
    );
  }
}
