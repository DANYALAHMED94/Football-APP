import 'package:football_app/widgets/app_bar/custom_app_bar.dart';
import 'package:football_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:football_app/widgets/custom_icon_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'widgets/notification_item_widget.dart';
import 'package:football_app/widgets/custom_bottom_bar.dart';
import 'package:football_app/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:football_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class GreenNotificationScreen extends StatelessWidget {
  GreenNotificationScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: _buildAppBar(context),
      body: Container(
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildAppBar(context),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 16.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text("Notification",
                          style: theme.textTheme.titleMedium)),
                  // SizedBox(height: 10.v),
                  _buildNotification(context)
                ],
              ),
            )
          ],
        ),
      ),
      // floatingActionButton: CustomFloatingButton(
      //   height: 55,
      //   width: 55,
      //   decoration: FloatingButtonStyleHelper.gradientGreenToGreen,
      //   child: CustomImageView(
      //       imagePath: ImageConstant.imgGroup1171276792Onprimarycontainer,
      //       height: 27.5.v,
      //       width: 27.5.h),
      // ),
      // floatingActionButtonLocation:
      //     FloatingActionButtonLocation.centerDocked,
    );
  }

  /// Section Widget
  // PreferredSizeWidget _buildAppBar(BuildContext context) {
  //   return CustomAppBar(
  //       leadingWidth: double.maxFinite,
  //       leading: AppbarLeadingIconbutton(
  //           imagePath: ImageConstant.imgFrame1442,
  //           margin: EdgeInsets.fromLTRB(24.h, 54.v, 376.h, 25.v),
  //           onTap: () {
  //             onTapIconButton(context);
  //           }),
  //       styleType: Style.bgFill);
  // }

  /// Section Widget
  Widget _buildNotification(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 12.v);
        },
        itemCount: 7,
        itemBuilder: (context, index) {
          return NotificationItemWidget();
        });
  }

  Widget _buildAppBar(BuildContext context) {
    return Container(
      height: 120.v,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.green90001,
        borderRadius: BorderRadius.only(
          // topLeft: Radius.circular(10.h),
          // topRight: Radius.circular(10.h),
          bottomLeft: Radius.circular(5.h),
          bottomRight: Radius.circular(5.h),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 17.h,
          // vertical: 64.v,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            OutlineGradientButton(
              padding:
                  EdgeInsets.only(left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
              strokeWidth: 1.h,
              gradient: LinearGradient(
                  begin: Alignment(-0.14, -0.12),
                  end: Alignment(0.67, 0.61),
                  colors: [
                    theme.colorScheme.onPrimaryContainer,
                    theme.colorScheme.onPrimaryContainer
                  ]),
              corners: Corners(
                  topLeft: Radius.circular(3),
                  topRight: Radius.circular(3),
                  bottomLeft: Radius.circular(3),
                  bottomRight: Radius.circular(3)),
              child: CustomIconButton(
                height: 30.adaptSize,
                width: 30.adaptSize,
                padding: EdgeInsets.all(4.h),
                onTap: () {
                  onTapBtnArrowLeft(context);
                },
                child: CustomImageView(imagePath: ImageConstant.imgArrowLeft),
              ),
            ),
          ],
        ),
      ),
    );
    // Container(
    //   width: double.maxFinite,
    //   padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 25.v),
    //   decoration: AppDecoration.fillGreen
    //       .copyWith(borderRadius: BorderRadiusStyle.customBorderTL10),
    //   child: Column(
    //     mainAxisSize: MainAxisSize.min,
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       SizedBox(height: 29.v),
    //       OutlineGradientButton(
    //         padding:
    //             EdgeInsets.only(left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
    //         strokeWidth: 1.h,
    //         gradient: LinearGradient(
    //             begin: Alignment(-0.14, -0.12),
    //             end: Alignment(0.67, 0.61),
    //             colors: [
    //               theme.colorScheme.onPrimaryContainer,
    //               theme.colorScheme.onPrimaryContainer
    //             ]),
    //         corners: Corners(
    //             topLeft: Radius.circular(3),
    //             topRight: Radius.circular(3),
    //             bottomLeft: Radius.circular(3),
    //             bottomRight: Radius.circular(3)),
    //         child: CustomIconButton(
    //           height: 30.adaptSize,
    //           width: 30.adaptSize,
    //           padding: EdgeInsets.all(4.h),
    //           onTap: () {
    //             onTapBtnArrowLeft(context);
    //           },
    //           child: CustomImageView(imagePath: ImageConstant.imgArrowLeft),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }

  onTapBtnArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Navigates back to the previous screen.
  onTapIconButton(BuildContext context) {
    Navigator.pop(context);
  }
}
