import 'package:football_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:football_app/core/app_export.dart';

// ignore: must_be_immutable
class InliveItemWidget extends StatelessWidget {
  const InliveItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillGreen.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.live_tv_outlined,
            color: Colors.white,
            size: 30,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 71.h,
              top: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "SERVER 1",
                  style: CustomTextStyles.labelLargeOnPrimaryContainer_2,
                ),
                Text(
                  "720p",
                  style: CustomTextStyles.bodySmallOnPrimaryContainer12,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomElevatedButton(
            width: 77.h,
            text: "Playing Now",
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 4.v,
            ),
            buttonStyle: CustomButtonStyles.fillRedTL10,
          ),
        ],
      ),
    );
  }
}
