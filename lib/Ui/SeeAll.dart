import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../constines/Colors.dart';
import '../models/Product.dart';
import 'DetalcePage.dart';

class SeeAllPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFfC4C4C4),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Products List',
          style: TextStyle(color: AppColors.ContinerAndTextBottonColor),
        ),
      ),
      body: Center(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.6,
            mainAxisSpacing: 10,
          ),
          itemCount: MyProduct().GridMap.length,
          itemBuilder: (
            _,
            index,
          ) {
            return Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10).r,
              child: InkWell(
                onTap: () => Get.to(() => delilcePage()),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(7.r),
                        ),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Padding(
                                      padding: const EdgeInsets.all(5).r,
                                      child: Image.asset(MyProduct()
                                          .GridMap
                                          .elementAt(index)["img"])),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    MyProduct()
                                        .GridMap
                                        .elementAt(index)["name"],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.ContinerAndTextBottonColor,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(7.r),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0).r,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Price :${MyProduct().GridMap.elementAt(index)["price"]}",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text("Details",
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ],
                                    ),
                                  )))
                        ],
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.ContinerAndTextBottonColor,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(6.r),
                            bottomRight: Radius.circular(6.r),
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(3).r,
                            child: Text(
                              "Off :${MyProduct().GridMap.elementAt(index)["off"]}",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
