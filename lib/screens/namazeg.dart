import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:knitting_teaching_app/core/utils/app_constants.dart';

class Namazeg extends StatelessWidget {
  const Namazeg({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppConstants.backgroundColor,
        appBar: AppBar(
          automaticallyImplyLeading: true,
          leading: GestureDetector(
            onTap: () => Get.back(),
            child: const Icon(Icons.arrow_back_ios),
          ),
          backgroundColor: AppConstants.greenColor,
          toolbarHeight: 80.h,
          title: Text(
            "نماذج لعمل مشاريع صغيرة",
            style: TextStyle(
              fontSize: 20.sp,
              fontFamily: "TajwalMedium",
              color: AppConstants.textColor,
            ),
          ),
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.w),
              bottomRight: Radius.circular(20.w),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "نموذج لعمل قبعة رأس بطريقة تريكو النول باستخدام ماكينة التريكو اليدوية",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: "TajwalBold",
                          color: AppConstants.pinkColor,
                        ),
                        // textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 15.h),
                      Center(
                        child: Container(
                          height: 130.h,
                          width: 200.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/namozag1.png"),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "الأدوات المستخدمة:",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: "TajwalBold",
                          color: AppConstants.pinkColor,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        "ماكينة تريكو يدوية حجم متوسط.\nخيوط صوف.\nإبرة كروشية.\nإبرة حياكة.\nمقص.",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: "TajwalMedium",
                          color: AppConstants.textColor,
                        ),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "نوع الخيوط المستخدمة:",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: "TajwalBold",
                          color: AppConstants.pinkColor,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        "٢ عدد خيوط صوف متوسطة السماكة\nبلونين مختلفين",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: "TajwalMedium",
                          color: AppConstants.textColor,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "التكلفة:",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: "TajwalBold",
                          color: AppConstants.pinkColor,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        "ماكينة التريكو 80 ريال\nخيوط الصوف 24 ريال",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: "TajwalMedium",
                          color: AppConstants.textColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  padding: EdgeInsets.all(16.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "نموذج لعمل شال بطريقة تريكو الذراع",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: "TajwalBold",
                          color: AppConstants.pinkColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 15.h),
                      Center(
                        child: Container(
                          height: 170.h,
                          width: 200.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/namozag2.jpg"),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "الأدوات المستخدمة:",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: "TajwalBold",
                          color: AppConstants.pinkColor,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        "خيوط صوف.\nمقص.",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: "TajwalMedium",
                          color: AppConstants.textColor,
                        ),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "نوع الخيوط المستخدمة:",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: "TajwalBold",
                          color: AppConstants.pinkColor,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        "١ خيط صوف سميك مقاس ٢ متر",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: "TajwalMedium",
                          color: AppConstants.textColor,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "التكلفة:",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: "TajwalBold",
                          color: AppConstants.pinkColor,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        "سعر الصوف 130 ريال",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: "TajwalMedium",
                          color: AppConstants.textColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
