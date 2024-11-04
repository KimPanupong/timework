import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:timework/core/theme/theme.dart';
import 'package:timework/feature/new-location/widget/add_new_location.dart';
import 'package:timework/feature/new-location/widget/new_location_details.dart';

class NewLocationBody extends StatefulHookConsumerWidget {
  const NewLocationBody({
    super.key,
  });

  @override
  ConsumerState<NewLocationBody> createState() => _NewLocationBodyState();
}

class _NewLocationBodyState extends ConsumerState<NewLocationBody>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Padding(
        padding: const EdgeInsets.only(right: 10.0, left: 10.0, bottom: 10.0).r,
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 200.h,
              child: Card(
                elevation: 3,
                color: white,
                child: Image.asset(
                  'assets/images/logo/test.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Gap(15),
            SizedBox(
              height: 40.h,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      15,
                    ).r,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: const Offset(0, 1),
                      ),
                    ]),
                child: TabBar(
                  controller: _tabController,
                  dividerColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorPadding: const EdgeInsets.all(4),
                  indicator: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(
                      15,
                    ).r,
                  ),
                  labelColor: Colors.white,
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14.sp,
                  ),
                  unselectedLabelColor: black,
                  tabs: const [
                    Tab(
                      text: 'รูปประกอบ',
                    ),
                    Tab(
                      text: 'รายละเอียด',
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  AddNewLocation(),
                  NewLocationDetails(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
