import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hotelsgo_assignment/core/services/service_locator.dart';
import 'package:hotelsgo_assignment/presentation/view/home_screen.dart';
import 'package:hotelsgo_assignment/presentation/widget/no_internet.dart';

import 'presentation/controller/cubit/app_cubit.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // to make sure that all method done before run the app

  ServiceLocator().init();
  // becouse screen is design in only portrait mode
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp, // Allow only portrait mode
    DeviceOrientation.portraitDown, // Allow only portrait mode
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(sl())..getHotels(),
      child: ScreenUtilInit(
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
            home: StreamBuilder<ConnectivityResult>(
                stream: Connectivity().onConnectivityChanged,
                builder: (context, snopshot) {
                  if (snopshot.data == ConnectivityResult.none) {
                    return const NoInternetConnection();
                  } else {
                    return const HomeScreen();
                  }
                }),
          );
        },
      ),
    );
  }
}
