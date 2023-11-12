import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hotelsgo_assignment/presentation/widget/bottom_home.dart';
import 'package:hotelsgo_assignment/presentation/widget/custom_appbar.dart';
import 'package:hotelsgo_assignment/presentation/widget/item_hotel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.sizeOf(context).width, 60.h),
        child: const CustomAppBar(),
      ),
      body: ListView.builder(
        itemCount: 4,
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: const SingleItemHotel(),
          );
        },
      ),
      bottomSheet: const MapContainer(),
    );
  }
}
