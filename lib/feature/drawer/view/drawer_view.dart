import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:timework/components/custom_text.dart';
import 'package:timework/core/theme/theme.dart';
import 'package:timework/feature/record-In/view/record_in_view.dart';
import 'package:timework/feature/record-Out/view/record_out_view.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 150.h,
            decoration: const BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: ClipOval(
                      child: SvgPicture.asset(
                        'assets/images/logo/logo.svg',
                        width: 70.w,
                        height: 70.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Gap(10),
                  const CustomText(
                    text: 'Kim Kim',
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  const Gap(5),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(10.0).r,
              children: [
                const CustomText(
                  text: 'หน้าหลัก',
                  color: Color(0xFF0069A7),
                  fontWeight: FontWeight.bold,
                ),
                ListTile(
                  dense: true,
                  leading: const Icon(Icons.home, color: Color(0xFF06A6F1)),
                  title: const CustomText(
                    text: 'หน้าหลัก',
                    color: Color(0xFF0069A7),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  dense: true,
                  leading:
                      const Icon(Icons.login_rounded, color: Color(0xFF06A6F1)),
                  title: const CustomText(
                    text: 'บันทึกเข้า',
                    color: Color(0xFF0069A7),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RecordInView(),
                    ),
                  ),
                ),
                ListTile(
                  dense: true,
                  leading: const Icon(Icons.logout_outlined,
                      color: Color(0xFF06A6F1)),
                  title: const CustomText(
                    text: 'บันทึกออก',
                    color: Color(0xFF0069A7),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RecordOutView(),
                    ),
                  ),
                ),
                ListTile(
                  dense: true,
                  leading: const Icon(Icons.calendar_month_outlined,
                      color: Color(0xFF06A6F1)),
                  title: const CustomText(
                    text: 'ปฏิทินกิจกรรม',
                    color: Color(0xFF0069A7),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  dense: true,
                  leading: const Icon(Icons.add_alert_rounded,
                      color: Color(0xFF06A6F1)),
                  title: const CustomText(
                    text: 'เเจ้งเตือน',
                    color: Color(0xFF0069A7),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  onTap: () => Navigator.pop(context),
                ),
                const CustomText(
                  text: 'อื่นๆ',
                  color: Color(0xFF0069A7),
                  fontWeight: FontWeight.bold,
                ),
                ListTile(
                  dense: true,
                  leading:
                      const Icon(Icons.email_rounded, color: Color(0xFF06A6F1)),
                  title: const CustomText(
                    text: 'เพิ่มบันทึกการลา',
                    color: Color(0xFF0069A7),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  dense: true,
                  leading: const Icon(Icons.timelapse_rounded,
                      color: Color(0xFF06A6F1)),
                  title: const CustomText(
                    text: 'ขอการทำงานล่วงมา',
                    color: Color(0xFF0069A7),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  dense: true,
                  leading: const Icon(Icons.access_time_filled_rounded,
                      color: Color(0xFF06A6F1)),
                  title: const CustomText(
                    text: 'เพิ่มบันทึกปรับปรุงเวลา',
                    color: Color(0xFF0069A7),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  dense: true,
                  leading: const Icon(Icons.library_books_sharp,
                      color: Color(0xFF06A6F1)),
                  title: const CustomText(
                    text: 'ประวัติการขออนุมัติ',
                    color: Color(0xFF0069A7),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  dense: true,
                  leading: const Icon(Icons.history_outlined,
                      color: Color(0xFF06A6F1)),
                  title: const CustomText(
                    text: 'ประวัติการทำงาน',
                    color: Color(0xFF0069A7),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  onTap: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
