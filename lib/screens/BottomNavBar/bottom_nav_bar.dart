import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:knitting_teaching_app/controllers/bottom_nav_bar_controller.dart';
import 'package:knitting_teaching_app/core/utils/app_constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BottomNavController());
    
    return SafeArea(
      child: Scaffold(
        body: Obx(() => AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: Container(
            key: ValueKey<int>(controller.currentIndex.value),
            child: controller.pages[controller.currentIndex.value],
          ),
        )),
        backgroundColor: AppConstants.backgroundColor,
        bottomNavigationBar: _buildFloatingNavBar(controller),
      ),
    );
  }

  Widget _buildFloatingNavBar(BottomNavController controller) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 13.h),
      decoration: BoxDecoration(
        color: AppConstants.greenColor,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Color(0x26000000),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Obx(() => Row(
        children: [
          _buildEqualWidthNavItem(Icons.info, "عن التطبيق", 0, controller),
          _buildEqualWidthNavItem(Icons.home, "الرئيسية", 1, controller),
          _buildEqualWidthNavItem(Icons.developer_mode_rounded, "تنفيذ", 2, controller),
        ],
      )),
    );
  }

  Widget _buildEqualWidthNavItem(IconData icon, String label, int index, BottomNavController controller) {
    final isActive = controller.currentIndex.value == index;
    
    return Expanded(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        decoration: BoxDecoration(
          borderRadius: _getBorderRadius(index, 3),
          color: isActive ? Color(0x33FFFFFF) : Colors.transparent,
        ),
        child: InkWell(
          onTap: () => controller.changeTabIndex(index),
          borderRadius: _getBorderRadius(index, 3),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  size: 23.w,
                  color: isActive ? AppConstants.textColor : AppConstants.backgroundColor,
                ),
                SizedBox(height: 4.h),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'TajwalMedium',
                    color: isActive ? AppConstants.textColor : AppConstants.backgroundColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  BorderRadius _getBorderRadius(int index, int totalItems) {
    if (index == 0) {
      return const BorderRadius.horizontal(left: Radius.circular(30));
    } else if (index == totalItems - 1) {
      return const BorderRadius.horizontal(right: Radius.circular(30));
    }
    return const BorderRadius.horizontal(right: Radius.circular(30), left: Radius.circular(30));
  }
}