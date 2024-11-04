import 'package:flutter/material.dart';
import 'package:timework/components/custom_appbar.dart';
import 'package:timework/feature/record-Out/widget/record_out_body.dart';

class RecordOutView extends StatelessWidget {
  const RecordOutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'บันทึกออก',
      ),
      body: RecordOutBody(),
    );
  }
}
