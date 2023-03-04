import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class delilcePage extends StatelessWidget {
  const delilcePage({super.key});

  int get index => 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFfC4C4C4),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'NewBag',
          style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 40).r,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50).r,
                bottomRight: Radius.circular(50).r,
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: size.width * 1,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: size.width * 0.8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFfC4C4C4),
                        ),
                        child: Image.asset(
                          "images/bag_3.png",
                          fit: BoxFit.cover,
                          height: size.width * 0.75,
                          width: size.width * 0.75,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15).r,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Price:2554 TK",
                        style: TextStyle(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 2.h,
                            width: 2.w,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                          ),
                          Container(
                            height: 2.h,
                            width: 2.w,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                          ),
                          Container(
                            height: 2.h,
                            width: 2.w,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
