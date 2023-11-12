import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotelsgo_assignment/presentation/widget/filters_bottom_sheet.dart';
import 'package:hotelsgo_assignment/presentation/widget/sort_bottom_sheet.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: SizedBox(
          width: 350.w,
          height: 60.h,
          child: Card(
            elevation: 10.h,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) => const FiltersBottomSheet()),
                  child: Row(
                    children: [
                      const Icon(
                        CupertinoIcons.line_horizontal_3_decrease,
                        color: Colors.lightBlueAccent,
                      ),
                      Text(
                        "Filters",
                        style: TextStyle(
                          color: Colors.lightBlueAccent,
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) => const SortBottomSheet()),
                  child: Row(
                    children: [
                      const Icon(
                        CupertinoIcons.sort_down,
                        color: Colors.lightBlueAccent,
                      ),
                      Text(
                        "Sort",
                        style: TextStyle(
                          color: Colors.lightBlueAccent,
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
