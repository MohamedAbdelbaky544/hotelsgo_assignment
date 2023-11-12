import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class MapContainer extends StatelessWidget {
  const MapContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.h,
      color: Colors.transparent,
      child: Center(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 200.w,
                height: 60.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  'assets/image/map.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 30.h,
                width: 60.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: Colors.blue,
                ),
                child: Center(
                  child: Text(
                    "Map",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
