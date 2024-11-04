import 'package:flutter/material.dart';
import 'package:timework/components/custom_appbar.dart';
import 'package:timework/core/theme/theme.dart';
import 'package:timework/feature/drawer/view/drawer_view.dart';
import 'package:timework/feature/home/widget/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Home',
        radius: false,
      ),
      drawer: const DrawerView(),
      body: const HomeBody(),
      floatingActionButton: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 1),
              ),
            ]),
        child: ClipOval(
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.calendar_month_outlined,
                  color: primaryColor,
                ))),
      ),
    );
  }
}
