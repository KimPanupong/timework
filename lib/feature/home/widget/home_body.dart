import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:timework/components/custom_button.dart';
import 'package:timework/components/custom_text.dart';
import 'package:timework/core/theme/theme.dart';
import 'package:timework/feature/home/widget/icon_text.dart';
import 'package:timework/feature/record-In/view/record_in_view.dart';
import 'package:timework/feature/record-Out/view/record_out_view.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 120.h,
          decoration: const BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(14),
              bottomRight: Radius.circular(14),
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                  color: white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    text: 'เวลาเซอร์เวอร์',
                    color: text800,
                    fontWeight: FontWeight.bold,
                  ),
                  const Gap(5),
                  const SizedBox(
                    width: double.infinity,
                    child: Card(
                      color: white,
                      elevation: 3,
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconText(
                              icon: Icons.calendar_month_sharp,
                              child: CustomText(
                                text: 'วันพุธที่ 10 กรกฎาคม  2024',
                                color: Color(0xFF02598A),
                                fontSize: 14,
                              ),
                            ),
                            Gap(5),
                            IconText(
                              icon: Icons.timer_rounded,
                              child: CustomText(
                                text: '17 นาฬิกา 00 นาที 00 วินาที',
                                color: Color(0xFF02598A),
                                fontSize: 14,
                              ),
                            ),
                            Gap(5),
                            IconText(
                              icon: Icons.book_rounded,
                              child: CustomText(
                                text: '19.00-22.00',
                                color: Color(0xFF02598A),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Gap(20),
                  const CustomText(
                    text: 'การบันทึก',
                    color: text800,
                    fontWeight: FontWeight.bold,
                  ),
                  const Gap(5),
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      color: white,
                      elevation: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: CustomIconButton(
                                icon: Icons.login_outlined,
                                iconColor: white,
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const RecordInView(),
                                  ),
                                ),
                                child: const CustomText(
                                  text: 'บันทึกเข้า',
                                  color: white,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: CustomIconButton(
                                icon: Icons.logout_outlined,
                                iconColor: white,
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const RecordOutView(),
                                  ),
                                ),
                                child: const CustomText(
                                  text: 'บันทึกออก',
                                  color: white,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Gap(20),
                  const CustomText(
                    text: 'เพิ่มเติม',
                    color: text800,
                    fontWeight: FontWeight.bold,
                  ),
                  const Gap(5),
                  const SizedBox(
                    width: double.infinity,
                    child: Card(
                      color: white,
                      elevation: 3,
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconText(
                              icon: Icons.email_rounded,
                              child: CustomText(
                                text: 'เพิ่มบันทึกการลา',
                                color: Color(0xFF02598A),
                                fontSize: 14,
                              ),
                            ),
                            Gap(5),
                            IconText(
                              icon: Icons.timelapse_rounded,
                              child: CustomText(
                                text: 'ขอการทำงานล่วงมา',
                                color: Color(0xFF02598A),
                                fontSize: 14,
                              ),
                            ),
                            Gap(5),
                            IconText(
                              icon: Icons.access_time_filled_rounded,
                              child: CustomText(
                                text: 'เพิ่มบันทึกปรับปรุงเวลา',
                                color: Color(0xFF02598A),
                                fontSize: 14,
                              ),
                            ),
                            Gap(5),
                            IconText(
                              icon: Icons.library_books_sharp,
                              child: CustomText(
                                text: 'ประวัติการขออนุมัติ',
                                color: Color(0xFF02598A),
                                fontSize: 14,
                              ),
                            ),
                            Gap(5),
                            IconText(
                              icon: Icons.history_outlined,
                              child: CustomText(
                                text: 'ประวัติการทำงาน',
                                color: Color(0xFF02598A),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
