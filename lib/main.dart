import 'package:arslan_s_application28/presentation/iphone_13_pro_max_fifty_screen/iphone_13_pro_max_fifty_screen.dart';
import 'package:arslan_s_application28/screens_section/screen_2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Example'),
      ),
      body: Center(
        child: Text('Home Page'),
      ),
      drawer: MyDrawer(),
    );
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Drawer(
      backgroundColor: Color(0xffE5F1EA),
      width: double.infinity,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width / 1.3,
            child: DrawerHeader(
              decoration: BoxDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 13,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.05, vertical: height * 0.02),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/my_image_1.png'),
                            radius: width * 0.065,
                          ),
                          SizedBox(
                            width: width * 0.025,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Micheal Oliver',
                                style: TextStyle(
                                  color: Color(0xff163B61),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.006,
                              ),
                              Text(
                                'Los Angeles, USA',
                                style: TextStyle(
                                  color: Color(0xff408FAD),
                                  fontSize: 11,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    //using row widget so we can add some horizontal space
                    child: Row(
                      children: [
                        SizedBox(
                          width: width * 0.2,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.close,
                              color: Color(0xff3A4276),
                              size: 28,
                            ))
                      ],
                    ),
                  )
                ],
              ),
              //drawer header
              // child: Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     CircleAvatar(
              //       radius: 30,
              //       backgroundImage: AssetImage('path_to_your_image'), // Provide your image path here
              //     ),
              //     SizedBox(height: 10),
              //     Text(
              //       'John Doe', // Replace with your user name
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontSize: 18,
              //       ),
              //     ),
              //     Text(
              //       'john@example.com', // Replace with your email
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontSize: 14,
              //       ),
              //     ),
              //   ],
              // ),
            ),
          ),
          SizedBox(
            height: height * 0.065,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Home',
                    style: TextStyle(
                        color: Color(0xff163B61),
                        fontSize: 19,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins'),
                  ), //   Text(
                  //     '- ',
                  //     style: TextStyle(
                  //       fontSize: 50,
                  //       color: Color(0xff6FB489),
                  //     ),
                  //   ),
                  //   Text(
                  //     'Home',
                  //     style: TextStyle(
                  //         color: Color(0xff163B61),
                  //         fontSize: 19,
                  //         fontWeight: FontWeight.w700,
                  //         fontFamily: 'Poppins'),
                  //   ),
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Profile',
                  style: TextStyle(
                      color: Color(0xff0F1D56),
                      fontWeight: FontWeight.w400,
                      fontSize: 19,
                      fontFamily: 'Poppins'),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Settings',
                    style: TextStyle(
                        color: Color(0xff0F1D56),
                        fontWeight: FontWeight.w400,
                        fontSize: 19,
                        fontFamily: 'Poppins'),
                  )),
              SizedBox(
                height: height * 0.03,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Screen_Two()));
                  },
                  child: Text(
                    'FAQs',
                    style: TextStyle(
                        color: Color(0xff0F1D56),
                        fontWeight: FontWeight.w400,
                        fontSize: 19,
                        fontFamily: 'Poppins'),
                  )),
              SizedBox(
                height: height * 0.03,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Iphone13ProMaxFiftyScreen()));
                },
                child: Text(
                  'Share with Friends',
                  style: TextStyle(
                      color: Color(0xff0F1D56),
                      fontWeight: FontWeight.w400,
                      fontSize: 19,
                      fontFamily: 'Poppins'),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'More About Carie',
                  style: TextStyle(
                      color: Color(0xff0F1D56),
                      fontWeight: FontWeight.w400,
                      fontSize: 19,
                      fontFamily: 'Poppins'),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.power_settings_new_outlined,
                    color: Color(0xff70BEB0),
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: Color(0xff163B61),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.12,
              ),
              Text(
                'Version 2.0.1',
                style: TextStyle(
                    color: Color(0xff408FAD),
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    fontFamily: 'Poppins'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
