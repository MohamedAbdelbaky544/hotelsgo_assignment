import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Stars extends StatelessWidget {
  const Stars({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 45.h,
            width: 50.w,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.yellow.shade700),
            ),
            child: Center(
              child: Icon(
                CupertinoIcons.star_fill,
                color: Colors.yellow.shade700,
                size: 14.h,
              ),
            ),
          ),
          Container(
            height: 45.h,
            width: 50.w,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.yellow.shade700),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 2; i++)
                  Icon(
                    CupertinoIcons.star_fill,
                    color: Colors.yellow.shade700,
                    size: 14.h,
                  ),
              ],
            ),
          ),
          Container(
            height: 45.h,
            width: 50.w,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.yellow.shade700),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  CupertinoIcons.star_fill,
                  color: Colors.yellow.shade700,
                  size: 14.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 2; i++)
                      Icon(
                        CupertinoIcons.star_fill,
                        color: Colors.yellow.shade700,
                        size: 14.h,
                      ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 45.h,
            width: 50.w,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.yellow.shade700),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 2; i++)
                      Icon(
                        CupertinoIcons.star_fill,
                        color: Colors.yellow.shade700,
                        size: 14.h,
                      ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 2; i++)
                      Icon(
                        CupertinoIcons.star_fill,
                        color: Colors.yellow.shade700,
                        size: 14.h,
                      ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 45.h,
            width: 50.w,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.yellow.shade700),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 2; i++)
                      Icon(
                        CupertinoIcons.star_fill,
                        color: Colors.yellow.shade700,
                        size: 14.h,
                      ),
                  ],
                ),
                Icon(
                  CupertinoIcons.star_fill,
                  color: Colors.yellow.shade700,
                  size: 14.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 2; i++)
                      Icon(
                        CupertinoIcons.star_fill,
                        color: Colors.yellow.shade700,
                        size: 14.h,
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
