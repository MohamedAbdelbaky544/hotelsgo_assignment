import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotelsgo_assignment/domain/entity/hotel.dart';
import 'package:shimmer/shimmer.dart';

class SingleItemHotel extends StatelessWidget {
  const SingleItemHotel({super.key, required this.hotel});
  final Hotel hotel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 330.w,
      height: 400.h,
      child: Card(
        elevation: 10,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 150.h,
                  width: 330.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.r),
                      topRight: Radius.circular(10.r),
                    ),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Image.network(
                    hotel.image,
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      } else {
                        return Shimmer.fromColors(
                          baseColor: Colors.grey[300]!,
                          highlightColor: Colors.grey[100]!,
                          child: Container(
                            color: Colors.white,
                          ),
                        );
                      }
                    },
                    errorBuilder: (context, error, stackTrace) {
                      return Image.asset('assets/image/hotelsgo_cover.jpg');
                    },
                  ),
                ),
                //this will be clickable to add it to some were like wishlist
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 20.r,
                      backgroundColor: Colors.black38,
                      child: const Icon(
                        CupertinoIcons.heart,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
              child: Row(
                children: [
                  for (int i = 0; i < hotel.starts; i++)
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      child: Icon(
                        CupertinoIcons.star_fill,
                        color: Colors.grey[700],
                        size: 15,
                      ),
                    ),
                  Text(
                    "Hotel",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 18.sp,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: SizedBox(
                width: 300.w,
                child: Text(
                  hotel.name,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20.sp,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 50.w,
                    height: 25.h,
                    decoration: BoxDecoration(
                      color: Colors.green[800],
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Center(
                      child: Text(
                        hotel.reviewScore.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    hotel.review,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 14.sp,
                    ),
                  ),
                  SizedBox(
                    width: 170.w,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.location_on_sharp,
                          color: Colors.black,
                          size: 15,
                        ),
                        SizedBox(
                          width: 150.w,
                          child: Text(
                            hotel.address,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 6.h),
              child: Container(
                width: 300.w,
                height: 100.h,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade400,
                  ),
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " Our lowest price ",
                            style: TextStyle(
                              backgroundColor: Colors.lightBlue.shade100,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                            ),
                          ),
                          Text(
                            "\$ ${hotel.price.toString()}",
                            style: TextStyle(
                              color: Colors.green[800],
                              fontWeight: FontWeight.w900,
                              fontSize: 22.sp,
                            ),
                          ),
                          Text(
                            "renaissance",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 18.sp,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "View Deal",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 20.sp,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Text(
                  "More prices",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
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
