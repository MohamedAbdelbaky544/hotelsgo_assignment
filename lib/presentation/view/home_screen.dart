import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hotelsgo_assignment/presentation/controller/cubit/app_cubit.dart';
import 'package:hotelsgo_assignment/presentation/view/loading_home_screen.dart';

import 'package:hotelsgo_assignment/presentation/widget/bottom_home.dart';
import 'package:hotelsgo_assignment/presentation/widget/custom_appbar.dart';
import 'package:hotelsgo_assignment/presentation/widget/item_hotel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is GetHotelsSuccess) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: PreferredSize(
              preferredSize: Size(MediaQuery.sizeOf(context).width, 60.h),
              child: const CustomAppBar(),
            ),
            body: RefreshIndicator(
              onRefresh: () async {
                AppCubit.get(context).getHotels();
              },
              child: ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(
                  parent: ScrollPhysics(),
                ),
                itemCount: AppCubit.get(context).hotels.length,
                padding: EdgeInsets.only(
                    left: 10.w, right: 10.w, top: 10.h, bottom: 90.h),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: SingleItemHotel(
                      hotel: AppCubit.get(context).hotels[index],
                    ),
                  );
                },
              ),
            ),
            bottomSheet: const MapContainer(),
          );
        } else {
          return const LoadingHomeScreen();
        }
      },
    );
  }
}
