import 'package:football_app/widgets/custom_icon_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:football_app/widgets/custom_elevated_button.dart';
import 'widgets/inlive_item_widget.dart';
import 'package:football_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:football_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class GreenInLiveScreen extends StatelessWidget {
  GreenInLiveScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnError,
          child: SingleChildScrollView(
              child: Column(children: [
            _buildFortySix(context),
            SizedBox(height: 11.v),
            _buildLive(context),
            SizedBox(height: 11.v),
            _buildPlayingNow(context)
          ]))),
      // bottomNavigationBar: Padding(
      //   padding: EdgeInsets.symmetric(horizontal: 4.h),
      //   child: _buildBottomBar(context),
      // ),
    );
  }

  /// Section Widget
  Widget _buildFortySix(BuildContext context) {
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

  /// Section Widget
  Widget _buildLive(BuildContext context) {
    return SizedBox(
        height: 301.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle1826301x430,
              height: 301.v,
              width: 430.h,
              radius: BorderRadius.circular(5.h),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.only(left: 20.h, right: 14.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      CustomElevatedButton(
                          width: 39.h,
                          text: "Live",
                          buttonStyle: CustomButtonStyles.fillRed),
                      CustomElevatedButton(
                          height: 22.v,
                          width: 54.h,
                          text: "20k",
                          margin:
                              EdgeInsets.only(left: 5.h, top: 4.v, bottom: 4.v),
                          leftIcon: Container(
                              margin: EdgeInsets.only(right: 5.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgFrame,
                                  height: 11.adaptSize,
                                  width: 11.adaptSize)),
                          buttonStyle: CustomButtonStyles.fillBlack,
                          buttonTextStyle:
                              CustomTextStyles.labelMediumOnPrimaryContainer),
                      Spacer(),
                      OutlineGradientButton(
                          padding: EdgeInsets.only(
                              left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
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
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgFrameGray50)))
                    ]),
                    SizedBox(height: 211.v),
                    SizedBox(
                        height: 12.v,
                        width: 388.h,
                        child:
                            Stack(alignment: Alignment.centerLeft, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgGroup1171276809,
                              height: 1.v,
                              width: 388.h,
                              alignment: Alignment.center),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  height: 12.v,
                                  width: 6.h,
                                  margin: EdgeInsets.only(left: 59.h),
                                  decoration: BoxDecoration(
                                      color: appTheme.red80001,
                                      borderRadius:
                                          BorderRadius.circular(6.h))))
                        ])),
                    SizedBox(height: 4.v),
                    Padding(
                        padding: EdgeInsets.only(right: 6.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  width: 35.h,
                                  margin: EdgeInsets.only(top: 1.v),
                                  padding: EdgeInsets.symmetric(vertical: 2.v),
                                  decoration: AppDecoration.fillGray50.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder5),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: 3.adaptSize,
                                            width: 3.adaptSize,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 3.v),
                                            decoration: BoxDecoration(
                                                color: appTheme.red80001,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        1.h))),
                                        Text("Live ",
                                            style: CustomTextStyles
                                                .poppinsPrimaryContainer)
                                      ])),
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgFrameOnprimarycontainer,
                                  height: 18.adaptSize,
                                  width: 18.adaptSize)
                            ]))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildPlayingNow(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 20.v),
        decoration: AppDecoration.fillErrorContainer,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 16.h, right: 71.h),
              child: Row(children: [
                CustomIconButton(
                    height: 45.adaptSize,
                    width: 45.adaptSize,
                    padding: EdgeInsets.all(7.h),
                    decoration: IconButtonStyleHelper.fillOnPrimaryContainer,
                    child: CustomImageView(
                        imagePath: ImageConstant.imgGroup1171276811)),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(left: 15.h, top: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("UEFA championship League, Final",
                                  style: theme.textTheme.titleSmall),
                              Text("championship League",
                                  style: CustomTextStyles
                                      .bodySmallOnPrimaryContainer)
                            ])))
              ])),
          SizedBox(height: 19.v),
          Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 1.v);
                  },
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return InliveItemWidget();
                  })),
          SizedBox(height: 14.v)
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Navigates back to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
