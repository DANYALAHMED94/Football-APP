import 'package:football_app/presentation/green_in_live_screen/green_in_live_screen.dart';
import 'package:football_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:football_app/core/app_export.dart';

// ignore: must_be_immutable
class LiveItemWidget extends StatelessWidget {
  const LiveItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 91.v,
            width: 164.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle182691x164,
                  height: 91.v,
                  width: 164.h,
                  radius: BorderRadius.circular(
                    5.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(125.h, 4.v, 4.h, 71.v),
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.fillGray50.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 3.adaptSize,
                          width: 3.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 3.v),
                          decoration: BoxDecoration(
                            color: appTheme.red80001,
                            borderRadius: BorderRadius.circular(
                              1.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text(
                            "Live ",
                            style: CustomTextStyles.poppinsPrimaryContainer,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          SizedBox(
            width: 105.h,
            child: Text(
              "Manchester city vs Fc copenhagen ",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.labelMediumGray800,
            ),
          ),
          SizedBox(height: 8.v),
          _buildWatchLive(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWatchLive(BuildContext context) {
    return CustomElevatedButton(
      height: 34.v,
      width: 164.h,
      text: "Watch live",
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: ((context) => GreenInLiveScreen())));
      },
      buttonStyle: CustomButtonStyles.fillErrorContainerTL7,
      buttonTextStyle: CustomTextStyles.labelMediumOnPrimaryContainerSemiBold,
    );
  }
}
