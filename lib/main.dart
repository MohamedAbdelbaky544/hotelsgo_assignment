import 'package:flutter/material.dart';
import 'package:hotelsgo_assignment/core/services/service_locator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotelsgo_assignment/presentation/view/home_screen.dart';

void main() {
  ServiceLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: ScreenUtil.defaultSize,
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            bottomSheetTheme: const BottomSheetThemeData(
              backgroundColor: Colors.transparent,
            ),
          ),
          home: const HomeScreen(),
        );
      },
    );
  }
}
