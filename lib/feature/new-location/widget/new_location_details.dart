import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:timework/components/custom_button.dart';
import 'package:timework/components/custom_text.dart';
import 'package:timework/core/theme/theme.dart';
import 'package:timework/feature/home/widget/icon_text.dart';

class NewLocationDetails extends StatelessWidget {
  const NewLocationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0).r,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(5),
            const CustomText(
              text: 'TEST Co.,Ltd',
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
                        icon: Icons.login_outlined,
                        child: CustomText(
                          text: 'กำลังบันทึกเข้า',
                          color: Color(0xFF02598A),
                          fontSize: 14,
                        ),
                      ),
                      Gap(5),
                      IconText(
                        icon: Icons.near_me,
                        child: Expanded(
                          child: CustomText(
                            text: '18.035817248949137, 103.08212721855998',
                            color: Color(0xFF02598A),
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Gap(5),
                      IconText(
                        icon: Icons.access_time_filled_rounded,
                        child: CustomText(
                          text: '11/07/2024  08:00:00',
                          color: Color(0xFF02598A),
                          fontSize: 14,
                        ),
                      ),
                      Gap(5),
                      IconText(
                        icon: Icons.library_books_sharp,
                        child: CustomText(
                          text: '08: 00 - 17.00',
                          color: Color(0xFF02598A),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  onPressed: () {},
                  child: const CustomText(
                    text: 'บันทึก',
                    color: white,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
