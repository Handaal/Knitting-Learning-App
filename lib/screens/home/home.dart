import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:knitting_teaching_app/core/routes/app_routes.dart';
import 'package:knitting_teaching_app/core/utils/app_constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppConstants.backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
          
              Stack(
                children: [

                  Container(
                    height: 190.h,
                    color: AppConstants.greenColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Padding(
                          padding: EdgeInsets.only(bottom: 70.h, right: 20.w),
                          child: Text(
                            "مرحبا بكم في تطبيق\nتريكو النول",
                            style: TextStyle(
                              fontSize: 19.sp,
                              fontFamily: "TajwalBold",
                              color: AppConstants.whiteColor
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(bottom: 70.h, left: 20.w),
                          child: Container(
                            height: 80.h,
                            width: 110.w,
                            decoration: BoxDecoration(
                              color: AppConstants.whiteColor,
                              borderRadius: BorderRadius.circular(100.w),
                              border: Border.all(
                                color: Colors.grey,

                              ),
                              image: DecorationImage(
                                image: AssetImage("assets/images/knitting.png"),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(top: 130.h),
                      child: Container(
                        width: 360.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.w),
                            topRight: Radius.circular(30.w)
                          ),
                          color: AppConstants.backgroundColor
                        ),
                        child: Column(
                          children: [

                            SizedBox(
                              height: 30.h,
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 170.w),
                              child: Text(
                                "موضوعات التعلم",
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.bold,
                                  color: AppConstants.pinkColor,
                                  fontFamily: "TajwalBold"
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 10.h,
                            ),

                            Padding(
                              padding: EdgeInsets.all(16.w),
                              child: GestureDetector(
                                onTap: () {
                                  Get.toNamed(AppRoutes.lesson1);
                                },
                                child: Container(
                                  height: 65.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x26000000),
                                        blurRadius: 10,
                                        spreadRadius: 2,
                                      ),
                                    ],
                                  ),
                              
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                              
                                      Padding(
                                        padding: EdgeInsets.only(right: 10.w),
                                        child: Row(
                                          children: [
                                            Text(
                                              "الدرس الأول:",
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                color: AppConstants.textColor,
                                                fontFamily: "TajwalBold"
                                              ),
                                            ),
                              
                                            Text(
                                              " التعريف بفن التريكو",
                                              style: TextStyle(
                                                fontSize: 13.sp,
                                                color: AppConstants.text2Color,
                                                fontFamily: "TajwalBold"
                                              ),
                              
                                            ),
                                          ],
                                        ),
                                      ),
                              
                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w),
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          size: 18.w,
                                          color: AppConstants.greenColor,
                                        ),
                                      )
                              
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.w),
                              child: GestureDetector(
                                onTap: () {
                                  Get.toNamed(AppRoutes.lesson2);
                                },
                                child: Container(
                                  height: 65.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x26000000),
                                        blurRadius: 10,
                                        spreadRadius: 2,
                                      ),
                                    ],
                                  ),
                              
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                              
                                      Padding(
                                        padding: EdgeInsets.only(right: 10.w),
                                        child: Row(
                                          children: [
                                            Text(
                                              "الدرس الثاني:",
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                color: AppConstants.textColor,
                                                fontFamily: "TajwalBold"
                                              ),
                                            ),
                              
                                            Text(
                                              " الأدوات والخامات المستخدمة",
                                              style: TextStyle(
                                                fontSize: 13.sp,
                                                color: AppConstants.text2Color,
                                                fontFamily: "TajwalBold"
                                              ),
                                            
                                            ),
                                          ],
                                        ),
                                      ),
                              
                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w),
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          size: 18.w,
                                          color: AppConstants.greenColor,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),


                            Padding(
                              padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.w),
                              child: GestureDetector(
                                onTap: () {
                                  Get.toNamed(AppRoutes.lesson3);
                                },
                                child: Container(
                                  height: 65.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x26000000),
                                        blurRadius: 10,
                                        spreadRadius: 2,
                                      ),
                                    ],
                                  ),
                              
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                              
                                      Padding(
                                        padding: EdgeInsets.only(right: 10.w),
                                        child: Row(
                                          children: [
                                            Text(
                                              "الدرس الثالث:",
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                color: AppConstants.textColor,
                                                fontFamily: "TajwalBold"
                                              ),
                                            ),
                              
                                            Text(
                                              " تريكو النول",
                                              style: TextStyle(
                                                fontSize: 13.sp,
                                                color: AppConstants.text2Color,
                                                fontFamily: "TajwalBold"
                                              ),
                                            
                                            ),
                                          ],
                                        ),
                                      ),
                              
                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w),
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          size: 18.w,
                                          color: AppConstants.greenColor,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.w),
                              child: GestureDetector(
                                onTap: () {
                                  Get.toNamed(AppRoutes.lesson4);
                                },
                                child: Container(
                                  height: 65.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x26000000),
                                        blurRadius: 10,
                                        spreadRadius: 2,
                                      ),
                                    ],
                                  ),
                                
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                
                                      Padding(
                                        padding: EdgeInsets.only(right: 10.w),
                                        child: Row(
                                          children: [
                                            Text(
                                              "الدرس الرابع:",
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                color: AppConstants.textColor,
                                                fontFamily: "TajwalBold"
                                              ),
                                            ),
                                
                                            Text(
                                              " تريكو الذراع",
                                              style: TextStyle(
                                                fontSize: 13.sp,
                                                color: AppConstants.text2Color,
                                                fontFamily: "TajwalBold"
                                              ),
                                            
                                            ),
                                          ],
                                        ),
                                      ),
                                
                                      
                                
                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w),
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          size: 18.w,
                                          color: AppConstants.greenColor,
                                        ),
                                      )
                                
                                    ],
                                  ),
                                ),
                              ),
                            ),
                    
                            Padding(
                              padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.w),
                              child: GestureDetector(
                                onTap: () {
                                  Get.toNamed(AppRoutes.lesson5);
                                },
                                child: Container(
                                  height: 65.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x26000000),
                                        blurRadius: 10,
                                        spreadRadius: 2,
                                      ),
                                    ],
                                  ),
                                
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                
                                      Padding(
                                        padding: EdgeInsets.only(right: 10.w),
                                        child: Row(
                                          children: [
                                            Text(
                                              "الدرس الخامس:",
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                color: AppConstants.textColor,
                                                fontFamily: "TajwalBold"
                                              ),
                                            ),
                                
                                            Text(
                                              " المكملات الملبسية",
                                              style: TextStyle(
                                                fontSize: 13.sp,
                                                color: AppConstants.text2Color,
                                                fontFamily: "TajwalBold"
                                              ),
                                            
                                            ),
                                          ],
                                        ),
                                      ),
                                
                                      
                                
                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w),
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          size: 18.w,
                                          color: AppConstants.greenColor,
                                        ),
                                      )
                                
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.w),
                              child: GestureDetector(
                                onTap: () {
                                  Get.toNamed(AppRoutes.namazeg);
                                },
                                child: Container(
                                  height: 65.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x26000000),
                                        blurRadius: 10,
                                        spreadRadius: 2,
                                      ),
                                    ],
                                  ),
                                
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                              
                                      Padding(
                                        padding: EdgeInsets.only(right: 10.w),
                                        child: Text(
                                          "نماذج لعمل مشاريع صغيرة",
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            color: AppConstants.textColor,
                                            fontFamily: "TajwalBold"
                                          ),
                                        ),
                                      ),
                                
                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w),
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          size: 18.w,
                                          color: AppConstants.greenColor,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                    
                            Padding(
                              padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.w),
                              child: GestureDetector(
                                onTap: () {
                                  Get.toNamed(AppRoutes.questions);
                                },
                                child: Container(
                                  height: 65.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x26000000),
                                        blurRadius: 10,
                                        spreadRadius: 2,
                                      ),
                                    ],
                                  ),
                                
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      
                                      Padding(
                                        padding: EdgeInsets.only(right: 10.w),
                                        child: Text(
                                          "الأسئلة الشائعة",
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            color: AppConstants.textColor,
                                            fontFamily: "TajwalBold"
                                          ),
                                        ),
                                      ),
                                
                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w),
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          size: 18.w,
                                          color: AppConstants.greenColor,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 20.h,
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}