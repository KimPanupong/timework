import 'package:flutter/material.dart';
import 'package:timework/components/custom_appbar.dart';
import 'package:timework/feature/record-In/widget/record_in_body.dart';

class RecordInView extends StatelessWidget {
  const RecordInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'บันทึกเข้า',
      ),
      body: RecordInBody(),
    );
  }
}
