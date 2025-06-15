import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:knitting_teaching_app/core/utils/app_constants.dart';

class Lesson1 extends StatefulWidget {
  const Lesson1({super.key});

  @override
  State<Lesson1> createState() => _Lesson1State();
}

class _Lesson1State extends State<Lesson1> {
  final _selectedAnswer = "".obs;

  Widget _buildOptionButton(String text, {required bool isCorrect}) {
    return Obx(() => GestureDetector(
        onTap: () {
          _selectedAnswer.value = text;
          if (isCorrect) {
            Get.snackbar(
              "إجابة صحيحة",
              "أحسنت! قدماء المصريين هم أول من وضعوا أسس فن التريكو",
              backgroundColor: Color(0xCC4CAF50),
              colorText: Colors.white,
              snackStyle: SnackStyle.FLOATING,
              snackPosition: SnackPosition.BOTTOM,
            );
          }
        },
        child: Container(
          width: 120.w,
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
          decoration: BoxDecoration(
            color: _selectedAnswer.value == text
                ? (isCorrect ? Color(0xCC4CAF50) : Color(0x33F44336))
                : AppConstants.backgroundColor,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              color: _selectedAnswer.value == text
                  ? (isCorrect ? Colors.green : Colors.red)
                  : AppConstants.greenColor,
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 14.sp,
              fontFamily: "TajwalMedium",
              color: AppConstants.textColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ));
  }


  Widget _buildTextBox({required String title, required String content}) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20.h),
      padding: EdgeInsets.all(15.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16.sp,
              fontFamily: "TajwalBold",
              color: AppConstants.pinkColor,
            ),
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
          ),

          SizedBox(
            height: 10.h
          ),

          Text(
            content,
            style: TextStyle(
              fontSize: 14.sp,
              fontFamily: "TajwalMedium",
              color: AppConstants.textColor,
            ),
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppConstants.backgroundColor,
        appBar: AppBar(
          automaticallyImplyLeading: true,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios),
          ),
          backgroundColor: AppConstants.greenColor,
          toolbarHeight: 80.h,
          title: Text(
            "الدرس الأول",
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
                _buildTextBox(
                  title: "أهداف الدرس",
                  content:
                      "التعريف بفن التريكو.\nشرح تاريخ فن التريكو.\nالتعريف بأنواع التريكو اليدوي.",
                ),
                _buildTextBox(
                  title: "التريكو 'Knitting' :",
                  content:
                      "قماش يتكون من وحدة رئيسية وهي الغرزة التي تتجمع فيما بينها لتكوين مساحة القماش، ويتم تقسيم أقمشة التريكو إلى تريكو لحمة (weft knitting) وتريكو السداء (warp knitting).",
                ),
                _buildTextBox(
                  title: "شرح تاريخ فن التريكو :",
                  content: '''
عرف فن التريكو منذ زمن بعيد جدًا فإن القوم الذي عاشوا في عصور ما قبل التاريخ كانوا يصطادون الأسماك، وعلى ذلك، فقد استعملوا شباكًا مصنوعة بطريقة التريكو، وكانوا يستعملون في حبك هذه الشباك أعوادًا ناعمة من الخشب، أو أحجارًا ملساء، أو عظامًا مصقولة، ويبدو أنه لا يوجد اتفاق عام على مصدر التريكو، ولكن الأرجح أن قدماء المصريين هم أول من وضعوا أسس هذا الفن، وذلك طبقًا لما أعلنه العالم شمبرلين في مراجعه بالإضافة إلى ما وجد من منتجات في مقابر قدماء المصريين، وهي موجودة بالمتحف المصري بالقاهرة.
عثر على أقدم أقمشة التريكو في أحد المقابر المصرية القديمة وهي عبارة عن زوج من الجوارب القصيرة المصنوعة من خيوط صوفية رفيعة وترجع غالبًا إلى القرن الرابع قبل الميلاد.
انتقل فن التريكو من مصر إلى الرومان، حيث يؤكد البعض أن ملابس الجنود الرومان كانت مصنوعة من التريكو ثم انتقل من الرومان إلى باقي أنحاء قبل العالم على مر العصور، ومن نماذج التريكو التي عثر عليها قديمًا قطعة صغيرة من الصوف مصنوعة بطريقة التريكو، يرجع تاريخها إلى عام 200م بالقرب من نهر الفرات، وكذلك مركوب أحمر من التريكو يرجع تاريخه إلى العرب في حوالي عام ٣٥٠م تقريبًا، وهو الآن معروض بمتحف فيكتوريا والبرت بلندن، كما عثر بالفسطاط على بعض الأقمشة العربية المنسوجة بطريقة التريكو وقد استخدمت في صناعتها خيوط الحرير الدقيقة.
إلا أنه في أوروبا الغربية لم تزدهر فنون التريكو بشكل واضح إلا منذ بداية القرن الخامس عشر الميلادي ثم انتشرت بعد ذلك صناعة التريكو اليدوي بشكل سريع في كل أنحاء أوربا خلال فترة قصيرة. وكانت إبر التريكو تصنع من العظم أو الخشب وبذلك كانت تنتج عراوي سميكة ثم تطورت بعد ذلك لتصنع من الصلب فأصبحت تعطي إنتاجًا من قماش أكثر كثافة في العراوي وبدرجة انتظام أعلى.
''',
                ),
                _buildTextBox(
                  title: "ومن أنواع التريكو اليدوي:",
                  content: "تريكو الإبر.\nتريكو النول.\nتريكو الذراع.",
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 20.h, bottom: 30.h),
                  padding: EdgeInsets.all(15.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x26000000),
                        blurRadius: 10,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Text(
                        "سؤال : من أول من وضع أساس فن التريكو ؟",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: "TajwalBold",
                          color: AppConstants.pinkColor,
                        ),
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(height: 20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildOptionButton("قدماء المصريين", isCorrect: true),
                          _buildOptionButton("الرومان", isCorrect: false),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Obx(() => Text(
                            _selectedAnswer.value.isEmpty
                                ? "اختر الإجابة الصحيحة"
                                : _selectedAnswer.value == "قدماء المصريين"
                                    ? "✓ الجواب الصحيح: قدماء المصريين"
                                    : "✗ الجواب خاطئ، الصحيح هو: قدماء المصريين",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: "TajwalMedium",
                              color: _selectedAnswer.value == "قدماء المصريين"
                                  ? Colors.green
                                  : _selectedAnswer.value.isEmpty
                                      ? AppConstants.textColor
                                      : Colors.red,
                            ),
                          )),
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
