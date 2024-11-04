import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:timework/components/custom_text.dart';
import 'package:timework/core/theme/theme.dart';
import 'package:timework/feature/new-location/view/new_location_view.dart';

class RecordInCoordinates extends StatelessWidget {
  const RecordInCoordinates({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0).r,
        child: Column(
          children: [
            const Row(
              children: [
                Icon(
                  Icons.pin_drop,
                  color: primaryColor,
                ),
                Gap(10),
                CustomText(
                  text: 'Mr. wathanyou',
                  color: text800,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            const Gap(5),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NewLocationView(),
                ),
              ),
              child: SizedBox(
                width: double.infinity,
                child: Card(
                  color: white,
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: Image.asset(
                        'assets/images/icons/building.png',
                        width: 40.w,
                        height: 40.h,
                        fit: BoxFit.cover,
                      ),
                      title: const CustomText(
                        text: 'เพิ่มพิกัดตำเเหน่งใหม่',
                        color: text800,
                        fontWeight: FontWeight.bold,
                      ),
                      subtitle: const Text('where are you Co.ltd.'),
                    ),
                  ),
                ),
              ),
            ),
            const Gap(10),
            const SizedBox(
              width: double.infinity,
              child: Card(
                color: white,
                elevation: 3,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                          leading: CircleAvatar(
                              child:
                                  Icon(Icons.location_on, color: primaryColor)),
                          title: CustomText(
                            text: 'Location 1',
                            color: text800,
                            fontWeight: FontWeight.bold,
                          ),
                          subtitle: Text('123 Street, City'),
                          trailing: Text('6.20 M')),
                      ListTile(
                          leading: CircleAvatar(
                              child:
                                  Icon(Icons.location_on, color: primaryColor)),
                          title: CustomText(
                            text: 'Location 2',
                            color: text800,
                            fontWeight: FontWeight.bold,
                          ),
                          subtitle: Text('456 Avenue, City'),
                          trailing: Text('6.20 M')),
                      ListTile(
                          leading: CircleAvatar(
                              child:
                                  Icon(Icons.location_on, color: primaryColor)),
                          title: CustomText(
                            text: 'Location 3',
                            color: text800,
                            fontWeight: FontWeight.bold,
                          ),
                          subtitle: Text('789 Boulevard, City'),
                          trailing: Text('6.20 M')),
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
