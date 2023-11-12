import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoading extends StatelessWidget {
  const ShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 330.w,
      height: 400.h,
      child: Card(
        elevation: 10,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
        child: Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150.h,
                width: 330.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.r),
                    topRight: Radius.circular(10.r),
                  ),
                  color: Colors.white,
                ),
                clipBehavior: Clip.antiAlias,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
                child: Container(
                  height: 20.h,
                  width: 150.w,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  clipBehavior: Clip.antiAlias,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
                child: Container(
                  height: 14.h,
                  width: 250.w,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  clipBehavior: Clip.antiAlias,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Container(
                  height: 14.h,
                  width: 250.w,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  clipBehavior: Clip.antiAlias,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 14.w),
                child: Center(
                  child: Container(
                    height: 100.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Colors.white,
                    ),
                    clipBehavior: Clip.antiAlias,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 14.h,
                    width: 60.w,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    clipBehavior: Clip.antiAlias,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
