import 'package:football_app/bottomNavigation/bottom_navigation.dart';
import 'package:football_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:football_app/core/app_export.dart';

class GreenSplashScreen extends StatelessWidget {
  const GreenSplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 32.h,
            vertical: 166.v,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 73.v),
              CustomImageView(
                imagePath: ImageConstant.imgImage5,
                height: 365.adaptSize,
                width: 365.adaptSize,
              ),
              Spacer(),
              CustomElevatedButton(
                height: 58.v,
                text: "Get Started",
                margin: EdgeInsets.only(
                  left: 40.h,
                  right: 41.h,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => BottomNavigationScreen())));
                },
                buttonStyle: CustomButtonStyles.fillErrorContainer,
                buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainer,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
