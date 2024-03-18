import 'dart:ui';

import 'package:football_app/widgets/custom_icon_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

import 'widgets/live_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:football_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class GreenLiveTabsScreenPage extends StatefulWidget {
  const GreenLiveTabsScreenPage({Key? key})
      : super(
          key: key,
        );

  @override
  State<GreenLiveTabsScreenPage> createState() =>
      _GreenLiveTabsScreenPageState();
}

class _GreenLiveTabsScreenPageState extends State<GreenLiveTabsScreenPage> {
  int _selectedIndex = 0;

  late List<Widget> tabs = [
    _buildWatchLive(context as BuildContext),
    _buildPopular(context as BuildContext),
    _buildStanding(context as BuildContext),
    _buildNews(context as BuildContext)
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: AppDecoration.fillOnError,
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
                        onTap: () {
                          onTapBtnArrowLeft(context);
                        },
                        child: CustomImageView(
                            imagePath: ImageConstant.imgArrowLeft),
                      ),
                    ),
                    Icon(
                      Icons.notifications,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 17.v),
            _buildView(context),
            SizedBox(height: 17.v),
            tabs[_selectedIndex],
            // _buildWatchLive(context),
          ],
        ),
      ),
    );
  }

  onTapBtnArrowLeft(BuildContext context) {
    Navigator.pop(context);
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
                    "Live",
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
                    "Popular",
                    style: _selectedIndex == 1
                        ? CustomTextStyles.labelLargeGray50_1
                        : CustomTextStyles.labelLargeBlack900_1,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _selectedIndex = 2;
                setState(() {});
              },
              child: Container(
                height: 32.v,
                width: 85.h,
                decoration: BoxDecoration(
                  color: _selectedIndex == 2
                      ? appTheme.green90001
                      : Colors.transparent,
                  borderRadius: _selectedIndex == 2
                      ? BorderRadius.circular(15.h)
                      : BorderRadius.circular(0),
                ),
                child: Center(
                  child: Text(
                    "Standing",
                    style: _selectedIndex == 2
                        ? CustomTextStyles.labelLargeGray50_1
                        : CustomTextStyles.labelLargeBlack900_1,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _selectedIndex = 3;
                setState(() {});
              },
              child: Container(
                height: 32.v,
                width: 85.h,
                decoration: BoxDecoration(
                  color: _selectedIndex == 3
                      ? appTheme.green90001
                      : Colors.transparent,
                  borderRadius: _selectedIndex == 3
                      ? BorderRadius.circular(15.h)
                      : BorderRadius.circular(0),
                ),
                child: Center(
                  child: Text(
                    "News",
                    style: _selectedIndex == 3
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

  /// Section Widget 1
  Widget _buildWatchLive(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              "Live Channels",
              style: theme.textTheme.titleMedium,
            ),
          ),
          // SizedBox(height: 18.v),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 198.v,
              crossAxisCount: 2,
              mainAxisSpacing: 15.h,
              crossAxisSpacing: 15.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index) {
              return LiveItemWidget();
            },
          ),
        ],
      ),
    );
  }

  //section popular
  Widget _buildPopular(BuildContext context) {
    return Center(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.h),
          child: Text(
            "Popular",
            style: TextStyle(fontSize: 20),
          )),
    );
  }
  // section standing

  Widget _buildStanding(BuildContext context) {
    return Center(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.h),
          child: Text(
            "Standing",
            style: TextStyle(fontSize: 20),
          )),
    );
  }

  // section News
  Widget _buildNews(BuildContext context) {
    return Center(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.h),
          child: Text(
            "News",
            style: TextStyle(fontSize: 20),
          )),
    );
  }
}
