import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SortBottomSheet extends StatefulWidget {
  const SortBottomSheet({super.key});

  @override
  State<SortBottomSheet> createState() => _SortBottomSheetState();
}

class _SortBottomSheetState extends State<SortBottomSheet> {
  List<ItemSortModel> listOfSort = [
    ItemSortModel(sort: "Our recommedations", isSelected: true),
    ItemSortModel(sort: "Rate & Recommeded", isSelected: false),
    ItemSortModel(sort: "Price & Recommeded", isSelected: false),
    ItemSortModel(sort: "Distance & Recommeded", isSelected: false),
    ItemSortModel(sort: "Rating Only", isSelected: false),
    ItemSortModel(sort: "Price Only", isSelected: false),
    ItemSortModel(sort: "Distance Only", isSelected: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      height: MediaQuery.sizeOf(context).height * 0.9,
      child: Column(
        children: [
          SizedBox(
            height: 60.h,
            width: double.infinity,
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "Sorts",
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
                      child: const Icon(
                        CupertinoIcons.xmark,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                    ),
                    child: ListTile(
                      onTap: () {
                        for (int i = 0; i < listOfSort.length; i++) {
                          if (listOfSort[i].isSelected == true) {
                            listOfSort[i].isSelected = false;
                          }
                        }
                        setState(() {
                          listOfSort[index].isSelected = true;
                        });
                      },
                      leading: Text(
                        listOfSort[index].sort,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                        ),
                      ),
                      trailing: listOfSort[index].isSelected
                          ? const Icon(
                              Icons.done,
                              color: Colors.blue,
                            )
                          : const SizedBox.shrink(),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: double.infinity,
                    child: Divider(
                      thickness: 1,
                      indent: 16.w,
                    ),
                  );
                },
                itemCount: listOfSort.length),
          )
        ],
      ),
    );
  }
}

class ItemSortModel {
  ItemSortModel({required this.sort, required this.isSelected});
  final String sort;
  bool isSelected;
}
