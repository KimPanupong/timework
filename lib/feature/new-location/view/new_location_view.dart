import 'package:flutter/material.dart';
import 'package:timework/components/custom_appbar.dart';
import 'package:timework/feature/new-location/widget/new_location_body.dart';

class NewLocationView extends StatelessWidget {
  const NewLocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'เพิ่มสถานที่ในระบบ',
      ),
      body: NewLocationBody(),
    );
  }
}
