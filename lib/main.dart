import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:football_app/bottomNavigation/bottom_navigation.dart';
import 'package:football_app/presentation/green_in_live_2_screen/green_in_live_2_screen.dart';
import 'package:football_app/presentation/green_in_live_screen/green_in_live_screen.dart';
import 'package:football_app/presentation/green_live_tabs_screen_page/green_live_tabs_screen_page.dart';
import 'package:football_app/presentation/green_notification_screen/green_notification_screen.dart';
import 'package:football_app/presentation/green_splash_screen/green_splash_screen.dart';
import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme,
          title: 'football_app',
          debugShowCheckedModeBanner: false,
          // initialRoute: AppRoutes.greenLiveTabsScreenPage,
          // routes: AppRoutes.routes,
          home: GreenSplashScreen(),
        );
      },
    );
  }
}
