import 'package:flutter/material.dart';
import 'package:football_app/core/app_export.dart';

// ignore: must_be_immutable
class HomeoneItemWidget extends StatelessWidget {
  const HomeoneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Tomorrow",
                  style: theme.textTheme.labelLarge,
                ),
                Spacer(
                  flex: 53,
                ),
                Text(
                  "Game 23 of 45".toUpperCase(),
                  style: theme.textTheme.labelMedium,
                ),
                Spacer(
                  flex: 46,
                ),
                Text(
                  "start at 04:00 PM",
                  style: theme.textTheme.labelMedium,
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 10.v,
                  bottom: 7.v,
                ),
                child: Text(
                  "fc copenhagen",
                  style: theme.textTheme.labelSmall,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgManchesterCityFcBadge,
                height: 30.adaptSize,
                width: 30.adaptSize,
                margin: EdgeInsets.only(left: 11.h),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 9.v,
                  bottom: 8.v,
                ),
                child: Text(
                  "VS",
                  style: CustomTextStyles.labelSmallBlack900,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgFcCopenhagenLogo,
                height: 30.adaptSize,
                width: 30.adaptSize,
                margin: EdgeInsets.only(left: 16.h),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  top: 10.v,
                  bottom: 7.v,
                ),
                child: Text(
                  "fc copenhagen",
                  style: theme.textTheme.labelSmall,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 10.v,
                  bottom: 7.v,
                ),
                child: Text(
                  "fc copenhagen",
                  style: theme.textTheme.labelSmall,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgManchesterCityFcBadge,
                height: 30.adaptSize,
                width: 30.adaptSize,
                margin: EdgeInsets.only(left: 11.h),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 9.v,
                  bottom: 8.v,
                ),
                child: Text(
                  "VS",
                  style: CustomTextStyles.labelSmallBlack900,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgFcCopenhagenLogo,
                height: 30.adaptSize,
                width: 30.adaptSize,
                margin: EdgeInsets.only(left: 16.h),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  top: 10.v,
                  bottom: 7.v,
                ),
                child: Text(
                  "fc copenhagen",
                  style: theme.textTheme.labelSmall,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
