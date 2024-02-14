
import 'package:flutter/material.dart';

import '../constants/default_padding.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  var showImage; // this will decide that should we show image on the left side (leading) of the appbar or an icon
  var imageAddress;
  var iconName;
  var showProfileImage; // on some screens, we don't want profile image to be displayed.

  MyAppBar(
      {
      this.showImage = true,
      this.iconName,
      this.imageAddress,
      this.showProfileImage = true});

  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return AppBar(
      title: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: width * MyPadding.appBarPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            showImage
                ? Image(
                    height: height * 0.0275,
                    image: AssetImage(
                      imageAddress.toString(),
                    ),
                  )
                : Icon(
                    iconName,
                    color: const Color(
                      0xff22215B,
                    ),
                  ),
            showProfileImage
                ? const CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/image_1.png',
                    ),
                  )
                : Container(),
          ],
        ),
      ),
      centerTitle: false,
      automaticallyImplyLeading: false,
    );
  }
}
