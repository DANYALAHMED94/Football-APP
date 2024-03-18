import 'package:flutter/material.dart';
import '../presentation/green_splash_screen/green_splash_screen.dart';
import '../presentation/green_in_live_2_screen/green_in_live_2_screen.dart';
import '../presentation/green_home_screen/green_home_screen.dart';
import '../presentation/green_in_live_screen/green_in_live_screen.dart';
import '../presentation/green_notification_screen/green_notification_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String greenSplashScreen = '/green_splash_screen';

  static const String greenLiveTabsScreenPage = '/green_live_tabs_screen_page';

  static const String greenInLive2Screen = '/green_in_live_2_screen';

  static const String greenHomeScreen = '/green_home_screen';

  static const String greenInLiveScreen = '/green_in_live_screen';

  static const String greenNotificationScreen = '/green_notification_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    greenSplashScreen: (context) => GreenSplashScreen(),
    greenInLive2Screen: (context) => GreenInLive2Screen(),
    greenHomeScreen: (context) => GreenHomeScreen(),
    greenInLiveScreen: (context) => GreenInLiveScreen(),
    greenNotificationScreen: (context) => GreenNotificationScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
