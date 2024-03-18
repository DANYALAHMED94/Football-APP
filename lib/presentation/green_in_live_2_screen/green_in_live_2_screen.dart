import 'package:football_app/widgets/custom_icon_button.dart';
import 'package:football_app/widgets/custom_elevated_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'widgets/inlivetwo_item_widget.dart';
import 'package:football_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:football_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class GreenInLive2Screen extends StatelessWidget {
  GreenInLive2Screen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
            width: double.maxFinite,
            child: Column(children: [
              _buildThirtySix(context),
              SizedBox(height: 6.v),
              _buildLive1(context),
              SizedBox(height: 5.v),
              _buildThirtySeven(context),
              SizedBox(height: 9.v)
            ])),
        // bottomNavigationBar: Padding(
        //   padding: EdgeInsets.symmetric(horizontal: 4.h),
        //   child: _buildBottomBar(context),
        // ),
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtySix(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 18.v),
      decoration: AppDecoration.fillGreen
          .copyWith(borderRadius: BorderRadiusStyle.customBorderTL10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Padding(
          //   padding: EdgeInsets.only(top: 35.v, bottom: 6.v),
          //   child: CustomIconButton(
          //     height: 30.adaptSize,
          //     width: 30.adaptSize,
          //     onTap: () {
          //       onTapBtnIconButton(context);
          //     },
          //     child: CustomImageView(imagePath: ImageConstant.imgFrame1442),
          //   ),
          // ),
          Padding(
            padding: EdgeInsets.only(top: 35.v, bottom: 6.v),
            child: OutlineGradientButton(
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
          ),

          Padding(
            padding: EdgeInsets.only(left: 50.h, top: 52.v),
            child: Text("UEFA championship League, Final",
                style: CustomTextStyles.labelLargeGray50),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 35.v, bottom: 6.v),
            child: Icon(
              Icons.share,
              color: Colors.white,
              size: 25,
            ),
          )
        ],
      ),
    );
  }

  onTapBtnArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Section Widget
  Widget _buildLive(BuildContext context) {
    return CustomElevatedButton(
        width: 39.h, text: "Live", buttonStyle: CustomButtonStyles.fillRed);
  }

  /// Section Widget
  Widget _buildK(BuildContext context) {
    return CustomElevatedButton(
        height: 22.v,
        width: 54.h,
        text: "20k",
        margin: EdgeInsets.only(left: 5.h, top: 4.v, bottom: 4.v),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 5.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFrame,
                height: 11.adaptSize,
                width: 11.adaptSize)),
        buttonStyle: CustomButtonStyles.fillBlack,
        buttonTextStyle: CustomTextStyles.labelMediumOnPrimaryContainer);
  }

  /// Section Widget
  Widget _buildLive1(BuildContext context) {
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
                      _buildLive(context),
                      _buildK(context),
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
                        padding: EdgeInsets.only(right: 7.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: 35.h,
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
                              Spacer(),
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgFrameOnprimarycontainer,
                                  height: 18.adaptSize,
                                  width: 18.adaptSize),
                              Padding(
                                  padding: EdgeInsets.only(left: 18.h),
                                  child: Column(children: [
                                    Container(
                                        height: 3.adaptSize,
                                        width: 3.adaptSize,
                                        decoration: BoxDecoration(
                                            color: theme
                                                .colorScheme.onPrimaryContainer
                                                .withOpacity(1),
                                            borderRadius:
                                                BorderRadius.circular(1.h))),
                                    SizedBox(height: 3.v),
                                    Container(
                                        height: 3.adaptSize,
                                        width: 3.adaptSize,
                                        decoration: BoxDecoration(
                                            color: theme
                                                .colorScheme.onPrimaryContainer
                                                .withOpacity(1),
                                            borderRadius:
                                                BorderRadius.circular(1.h))),
                                    SizedBox(height: 3.v),
                                    Container(
                                        height: 3.adaptSize,
                                        width: 3.adaptSize,
                                        decoration: BoxDecoration(
                                            color: theme
                                                .colorScheme.onPrimaryContainer
                                                .withOpacity(1),
                                            borderRadius:
                                                BorderRadius.circular(1.h)))
                                  ]))
                            ]))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildThirtySeven(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 15.v),
        decoration: AppDecoration.fillGreen,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Text("Live Other Maches",
                  style: CustomTextStyles.titleMediumOnPrimaryContainer)),
          SizedBox(height: 21.v),
          Padding(
              padding: EdgeInsets.only(right: 1.h),
              child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 10.v);
                  },
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return InlivetwoItemWidget();
                  })),
          SizedBox(height: 29.v)
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Navigates back to the previous screen.
  onTapBtnIconButton(BuildContext context) {
    Navigator.pop(context);
  }
}
