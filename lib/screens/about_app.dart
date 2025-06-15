import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:knitting_teaching_app/core/utils/app_constants.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppConstants.backgroundColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          
          backgroundColor: AppConstants.greenColor,
          toolbarHeight: 80.h,
          title: Text(
            "عن التطبيق",
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

        body: Center(
          child: Padding(
            padding: EdgeInsets.all(16.w),
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
                        "الهدف العام من التطبيق",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: "TajwalBold",
                          color: AppConstants.pinkColor,
                        ),
                      ),
                      
                      SizedBox(
                        height: 20.h,
                      ),
                      
                      Text(
                        "إنتاج مكملات ملبسية بتقنيات تريكو النول وتريكو الذراع باستخدام تطبيق ذكي.",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: "TajwalMedium",
                          color: AppConstants.textColor,
                        ),
                      ),
                      
                      Text(
                        "تدريب الحرفيات على مهارات تنفيذ تريكو النول والذراع.",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: "TajwalMedium",
                          color: AppConstants.textColor,
                        ),
                      ),
                    ],
                  ),
                ),
                      
                SizedBox(
                  height: 30.h,
                ),
                      
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
                        "الأهداف الجزئية",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: "TajwalBold",
                          color: AppConstants.pinkColor,
                        ),
                      ),
                      
                      SizedBox(
                        height: 20.h,
                      ),
                      
                      RichText(
                        textDirection: TextDirection.rtl,
                        text: TextSpan(
                          style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: "TajwalMedium",
                                color: AppConstants.textColor,
                                height: 1.2.h, // Increased line spacing (1.8x font size)
                          ),
                          children: const [
                                TextSpan(text: "١- التعرف على تريكو النول وتريكو الذراع وقيمتها الجمالية والنفعية.\n\n"),
                                TextSpan(text: "٢- التعريف بأدوات وخامات تريكو النول.\n\n"),
                                TextSpan(text: "٣- التعريف بأدوات وخامات تريكو الذراع.\n\n"),
                                TextSpan(text: "٤- التدريب على تقنيات وغرز تريكو النول لإنتاج مكملات ملبسية تدعم المشروعات الصغيرة.\n\n"),
                                TextSpan(text: "٥- التدريب على تقنيات وغرز تريكو الذراع لإنتاج مكملات ملبسية تدعم المشروعات الصغيرة."),
                          ],
                        ),
                      ),
                      
                      Padding(
                        padding: EdgeInsets.only(left: 15.w, right: 15.w),
                        child: Text(
                          "",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: "TajwalMedium",
                            color: AppConstants.textColor,
                          ),
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