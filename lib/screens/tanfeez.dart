import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:knitting_teaching_app/core/utils/app_constants.dart';

class Tanfeez extends StatelessWidget {
  const Tanfeez({super.key});

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
            "القائم بالتنفيذ",
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
            padding: EdgeInsets.all(15.w),
            child: Column(
              children: [
                
                SizedBox(
                    height: 80.h,
                ),
            
                Container(
                  padding: EdgeInsets.all(15.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        "إعداد",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: "TajwalBold",
                          color: AppConstants.pinkColor,
                        ),
                      ),
                    
                      SizedBox(
                        height: 10.h,
                      ),
                    
                      RichText(
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right, // Center alignment
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: "TajwalMedium",
                            color: AppConstants.textColor,
                            height: 2.0, // Increased line spacing (2x font size)
                          ),
                          children: const [
                            TextSpan(
                              text: "أ/ أفنان بسام البسيمي\n",
                              style: TextStyle(fontWeight: FontWeight.bold), // Bold for name
                            ),
                            TextSpan(text: "محاضر بكلية التربية\n"),
                            TextSpan(text: "جامعة القصيم\n"),
                            TextSpan(
                              text: "البريد الاكتروني : ",
                            ),
                            TextSpan(
                              text: "141146@qu.edu.sa",
                              style: TextStyle(
                                decorationThickness: 2.85,
                                decorationColor: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    
                      SizedBox(
                        height: 25.h,
                      ),
                    
                      Text(
                        "إشراف",
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontFamily: "TajwalBold",
                          color: AppConstants.pinkColor,
                        ),
                      ),
                    
                      SizedBox(
                        height: 10.h,
                      ),
                    
                      RichText(
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right, // Center alignment
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: "TajwalMedium",
                            color: AppConstants.textColor,
                            height: 2.0, // Increased line spacing (2x font size)
                          ),
                          children: const [
                            TextSpan(
                              text: "د/ رجاء مصطفي محمد حسن\n",
                              style: TextStyle(fontWeight: FontWeight.bold), // Bold for name
                            ),
                            TextSpan(text: "أستاذ مشارك الملابس والنسيج\n"),
                            TextSpan(text: "كلية الفنون والتصاميم – جامعة القصيم                         \n"),
                            TextSpan(
                              text: "البريد الاكتروني : ",
                            ),
                            TextSpan(
                              text: "Ra.Hassan@qu.edu.sa",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
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