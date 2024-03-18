import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

import 'widgets/homeone_item_widget.dart';
import 'package:football_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:football_app/core/app_export.dart';

class GreenHomeScreen extends StatefulWidget {
  GreenHomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<GreenHomeScreen> createState() => _GreenHomeScreenState();
}

class _GreenHomeScreenState extends State<GreenHomeScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: SizeUtils.width,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: 5.v),
            child: Column(
              children: [
                Container(
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
                        Text(
                          "Mr jhon clark",
                          style: theme.textTheme.titleSmall,
                        ),
                        Icon(
                          Icons.notifications,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25.v),
                _buildVS(context),
                SizedBox(height: 15.v),
                _buildView(context),
                SizedBox(height: 0.v),
                _selectedIndex == 0
                    ? _buildHomeOne(context)
                    : _buildHomeTwo(context)
                // _buildHomeOne(context),
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: Padding(
      //   padding: EdgeInsets.symmetric(horizontal: 4.h),
      //   child: _buildBottomBar(context),
      // ),
    );
  }

  /// Section Widget
  Widget _buildVS(BuildContext context) {
    return SizedBox(
      height: 250.v,
      width: 405.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(left: 1.h),
              padding: EdgeInsets.symmetric(
                horizontal: 172.h,
                vertical: 64.v,
              ),
              decoration: AppDecoration.outlineGray3003f1.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "VS",
                    style: CustomTextStyles.labelLargeOnPrimaryContainer_1,
                  ),
                  SizedBox(height: 19.v),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.h,
                      vertical: 5.v,
                    ),
                    decoration: AppDecoration.fillGray300.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Text(
                      "0-0",
                      style: CustomTextStyles.labelLargeBlack900,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Text(
                    "01:15",
                    style: CustomTextStyles.labelLargeOnPrimaryContainerMedium,
                  ),
                  SizedBox(height: 24.v),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 249.v,
              width: 405.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPngClipartFoo,
                    height: 249.v,
                    width: 405.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 230.v,
                      width: 379.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 44.v),
                              child: Text(
                                "UEFA championship League",
                                style: theme.textTheme.titleSmall,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 5.v,
                                        bottom: 3.v,
                                      ),
                                      child: Text(
                                        "Live Match",
                                        style: theme.textTheme.titleSmall,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 13.h,
                                        vertical: 5.v,
                                      ),
                                      decoration:
                                          AppDecoration.fillGray.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder5,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 7.adaptSize,
                                            width: 7.adaptSize,
                                            margin: EdgeInsets.only(
                                              top: 6.v,
                                              bottom: 5.v,
                                            ),
                                            decoration: BoxDecoration(
                                              color: appTheme.red80001,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                3.h,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 8.h,
                                              bottom: 1.v,
                                            ),
                                            child: Text(
                                              "Live ",
                                              style: theme.textTheme.labelLarge,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 12.v),
                                Padding(
                                  padding: EdgeInsets.only(right: 6.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 159.h,
                                            margin: EdgeInsets.only(left: 7.h),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: 14.v,
                                                    bottom: 12.v,
                                                  ),
                                                  child: Text(
                                                    "manchester city",
                                                    style: CustomTextStyles
                                                        .labelLargeOnPrimaryContainer_1,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgManchesterCityFcBadge,
                                                  height: 45.adaptSize,
                                                  width: 45.adaptSize,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 125.v),
                                          Text(
                                            "Game 23 of 45",
                                            style: CustomTextStyles
                                                .labelLargeOnPrimaryContainer,
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgFcCopenhagenLogo,
                                        height: 45.adaptSize,
                                        width: 45.adaptSize,
                                        margin: EdgeInsets.only(bottom: 143.v),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15.h,
                                          top: 15.v,
                                          bottom: 155.v,
                                        ),
                                        child: Text(
                                          "fc copenhagen",
                                          style: CustomTextStyles
                                              .labelLargeOnPrimaryContainer_1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      color: appTheme.gray50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Container(
        height: 50.v,
        width: 404.h,
        padding: EdgeInsets.symmetric(vertical: 9.v),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                _selectedIndex = 0;
                setState(() {});
              },
              child: Container(
                height: 32.v,
                width: 85.h,
                decoration: BoxDecoration(
                  color: _selectedIndex == 0
                      ? appTheme.green90001
                      : Colors.transparent,
                  borderRadius: _selectedIndex == 0
                      ? BorderRadius.circular(15.h)
                      : BorderRadius.circular(0),
                ),
                child: Center(
                  child: Text(
                    "Matches",
                    style: _selectedIndex == 0
                        ? CustomTextStyles.labelLargeGray50_1
                        : CustomTextStyles.labelLargeBlack900_1,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _selectedIndex = 1;
                setState(() {});
              },
              child: Container(
                height: 32.v,
                width: 85.h,
                decoration: BoxDecoration(
                  color: _selectedIndex == 1
                      ? appTheme.green90001
                      : Colors.transparent,
                  borderRadius: _selectedIndex == 1
                      ? BorderRadius.circular(15.h)
                      : BorderRadius.circular(0),
                ),
                child: Center(
                  child: Text(
                    "News",
                    // style: CustomTextStyles.labelLargeBlack900_1,
                    style: _selectedIndex == 1
                        ? CustomTextStyles.labelLargeGray50_1
                        : CustomTextStyles.labelLargeBlack900_1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHomeOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 15.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return HomeoneItemWidget();
        },
      ),
    );
  }

// section 2

  Widget _buildHomeTwo(BuildContext context) {
    return Center(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.h),
          child: Text(
            "News",
            style: TextStyle(fontSize: 20),
          )
          // ListView.separated(
          //   physics: NeverScrollableScrollPhysics(),
          //   shrinkWrap: true,
          //   separatorBuilder: (
          //     context,
          //     index,
          //   ) {
          //     return SizedBox(
          //       height: 15.v,
          //     );
          //   },
          //   itemCount: 3,
          //   itemBuilder: (context, index) {
          //     return HomeoneItemWidget();
          //   },
          // ),
          ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
