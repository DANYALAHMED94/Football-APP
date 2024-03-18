import 'package:football_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:football_app/core/app_export.dart';

// ignore: must_be_immutable
class InlivetwoItemWidget extends StatelessWidget {
  const InlivetwoItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.fillErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: Text(
                  "Pro League",
                  style: CustomTextStyles.labelMediumOnPrimaryContainer_2,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 7.h,
                  vertical: 2.v,
                ),
                decoration: AppDecoration.fillRed.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 3.adaptSize,
                      width: 3.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 3.v),
                      decoration: BoxDecoration(
                        color:
                            theme.colorScheme.onPrimaryContainer.withOpacity(1),
                        borderRadius: BorderRadius.circular(
                          1.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "Live ",
                        style: CustomTextStyles.poppinsOnPrimaryContainer,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(
              left: 38.h,
              right: 49.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 6.v,
                    bottom: 5.v,
                  ),
                  child: Text(
                    "realmadrid",
                    style: CustomTextStyles.labelLargeOnPrimaryContainer,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRealMadridCf1,
                  height: 20.v,
                  width: 15.h,
                  margin: EdgeInsets.only(
                    left: 15.h,
                    top: 6.v,
                    bottom: 4.v,
                  ),
                ),
                Container(
                  width: 170.h,
                  margin: EdgeInsets.only(left: 19.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildZero(context),
                      CustomImageView(
                        imagePath: ImageConstant.imgRbLeipzig2014Logo,
                        height: 15.v,
                        width: 18.h,
                        margin: EdgeInsets.only(
                          left: 19.h,
                          top: 6.v,
                          bottom: 9.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 7.h,
                          top: 5.v,
                          bottom: 6.v,
                        ),
                        child: Text(
                          "west brom",
                          style: CustomTextStyles.labelLargeOnPrimaryContainer,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildZero(BuildContext context) {
    return CustomElevatedButton(
      width: 60.h,
      text: "0-0",
      buttonTextStyle: CustomTextStyles.labelLargeBlack900Medium,
    );
  }
}
