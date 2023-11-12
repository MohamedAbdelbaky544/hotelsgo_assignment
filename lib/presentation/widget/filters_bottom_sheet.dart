import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotelsgo_assignment/presentation/widget/stars.dart';

class FiltersBottomSheet extends StatefulWidget {
  const FiltersBottomSheet({super.key});

  @override
  State<FiltersBottomSheet> createState() => _FiltersBottomSheetState();
}

class _FiltersBottomSheetState extends State<FiltersBottomSheet> {
  double _value = 100;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      height: MediaQuery.sizeOf(context).height * 0.95,
      child: Column(
        children: [
          SizedBox(
            height: 60.h,
            width: double.infinity,
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    child: Text(
                      "Reset",
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Text(
                    "Filters",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 20.sp,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        CupertinoIcons.xmark,
                        color: Colors.black,
                        size: 20.w,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "PRICE PER NIGHT",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 18.sp,
                  ),
                ),
                Container(
                  height: 40.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black54,
                    ),
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: Center(
                    child: Text(
                      "${_value.ceil().toString()} \$",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
            ),
            child: Column(
              children: [
                Slider(
                  min: 20,
                  max: 540,
                  value: _value,
                  thumbColor: Colors.white,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$ 20",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 14.sp,
                        ),
                      ),
                      Text(
                        " \$ 540",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                "RATING",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const RateContainer(
                  text: '0+',
                  color: Colors.red,
                ),
                RateContainer(
                  text: '7+',
                  color: Colors.orange.shade400,
                ),
                const RateContainer(
                  text: '7.5+',
                  color: Colors.green,
                ),
                RateContainer(
                  text: '8+',
                  color: Colors.green.shade700,
                ),
                RateContainer(
                  text: '8.5+',
                  color: Colors.green.shade800,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                "Hotel Class",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                ),
              ),
            ),
          ),
          const Stars(),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                "DISTANCE FROM",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Divider(
              thickness: 1,
              indent: 16.w,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Location",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "City Center",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    )
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Card(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              child: ElevatedButton(
                style: ButtonStyle(
                    fixedSize:
                        MaterialStateProperty.all<Size>(Size(300.w, 35.h)),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue)),
                onPressed: () {},
                child: Text(
                  'Show Result',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RateContainer extends StatelessWidget {
  const RateContainer({super.key, required this.text, required this.color});
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      width: 40.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        color: color,
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}
