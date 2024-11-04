import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:timework/components/custom_text.dart';
import 'package:timework/core/theme/theme.dart';
import 'package:timework/feature/home/widget/icon_text.dart';

class RecordOutExamineWidget extends StatelessWidget {
  const RecordOutExamineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0).r,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Mr. wathanyou',
              color: text800,
              fontWeight: FontWeight.bold,
            ),
            Gap(5),
            SizedBox(
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
                        icon: Icons.print,
                        child: CustomText(
                          text: 'where are you Co.ltd. ',
                          color: Color(0xFF02598A),
                          fontSize: 14,
                        ),
                      ),
                      Gap(5),
                      IconText(
                        icon: Icons.calendar_month,
                        child: CustomText(
                          text: 'วันพุธที่ 10 กรกฎาคม  2024 ',
                          color: Color(0xFF02598A),
                          fontSize: 14,
                        ),
                      ),
                      Gap(5),
                      IconText(
                        icon: Icons.timer_sharp,
                        child: CustomText(
                          text: '17 นาฬิกา 00 นาที 00 วินาที',
                          color: Color(0xFF02598A),
                          fontSize: 14,
                        ),
                      ),
                      Gap(5),
                      IconText(
                        icon: Icons.library_books_sharp,
                        child: CustomText(
                          text: '19.00-22.00',
                          color: Color(0xFF02598A),
                          fontSize: 14,
                        ),
                      ),
                      Gap(5),
                      IconText(
                        icon: Icons.near_me_sharp,
                        child: Expanded(
                          child: CustomText(
                            text: '18.035817248949137, 103.08212721855998',
                            color: Color(0xFF02598A),
                            fontSize: 14,
                            maxLines: null,
                          ),
                        ),
                      ),
                      Gap(5),
                      IconText(
                        icon: Icons.image_rounded,
                        child: CustomText(
                          text: 'รูปถ่าย',
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
    );
  }
}
