import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:timework/components/custom_button.dart';
import 'package:timework/components/custom_text.dart';
import 'package:timework/components/custom_text_form_field.dart';
import 'package:timework/core/theme/theme.dart';
import 'package:timework/feature/home/view/home_view.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    final usernamecontroller = TextEditingController();
    final passwordcontroller = TextEditingController();
    return SizedBox(
      width: 300.w,
      child: Card(
        color: white,
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const CustomText(
                text: 'Enter your Login',
                fontSize: 18,
                color: text800,
                fontWeight: FontWeight.bold,
              ),
              const Gap(15),
              CustomTextFormField(
                headTitle: 'Username',
                controller: usernamecontroller,
                isPassword: false,
                hintText: 'Username',
              ),
              const Gap(15),
              CustomTextFormField(
                  headTitle: 'Password',
                  controller: passwordcontroller,
                  isPassword: true,
                  hintText: 'Password'),
              const Gap(15),
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                    onPressed: () {
                      if (usernamecontroller.text == 'test' &&
                          passwordcontroller.text == 'test') {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeView(),
                          ),
                          (_) => false,
                        );
                      }
                    },
                    child: const CustomText(
                      text: 'เชื่อมต่อด้วยรหัสผู้ใช้',
                      color: white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                    onPressed: () {},
                    child: const CustomText(
                      text: 'สเเกน QR',
                      color: white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
