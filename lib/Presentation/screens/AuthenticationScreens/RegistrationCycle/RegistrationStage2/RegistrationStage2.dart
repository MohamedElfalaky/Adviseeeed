import 'package:flutter/material.dart';
import 'package:nasooh/Presentation/widgets/MyButton.dart';
import 'package:nasooh/Presentation/widgets/shared.dart';
import 'package:nasooh/app/Style/Icons.dart';
import '../../../../../app/constants.dart';
import '../../../../../app/utils/myApplication.dart';
import 'package:pinput/pinput.dart';
import 'package:lottie/lottie.dart';

class RegistrationStage2 extends StatefulWidget {
  const RegistrationStage2({Key? key}) : super(key: key);

  @override
  State<RegistrationStage2> createState() => _RegistrationStage2State();
}

class _RegistrationStage2State extends State<RegistrationStage2> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        MyApplication.dismissKeyboard(context);
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            leadingWidth: 70,
            title: const Text("إدخال رمز التحقق"),
            leading: const myBackButton()),
        body: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(
            top: 16,
            right: 16,
            left: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Padding(
                  //   padding: EdgeInsets.only(
                  //       bottom: MyApplication.hightClc(context, 88),
                  //       top: MyApplication.hightClc(context, 74)),
                  //   child: Center(
                  //       child: Text(
                  //     "إنشاء حساب جديد",
                  //     style: TextStyle(
                  //         fontFamily: Constants.mainFont, fontSize: 24),
                  //   )),
                  // ),
                  Lottie.asset(otpLotti, height: 160),
                  const Text(
                    "رمز التحقق من الجوال",
                    style:
                        TextStyle(fontFamily: Constants.mainFont, fontSize: 24),
                  ),
                  const Text(
                    "تم إرسال رمز التحقق إلى رقم جوالك",
                    style: Constants.subtitleFont1,
                  ),
                  const Text(
                    "+9664537298364",
                    style: Constants.secondaryTitleRegularFont,
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                        top: MyApplication.hightClc(context, 30),
                        bottom: MyApplication.hightClc(context, 32)),
                    child: Pinput(
                      defaultPinTheme: Constants.defaultPinTheme,
                      focusedPinTheme: Constants.focusedPinTheme,
                      onCompleted: (pin) => print(pin),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: MyButton(
                      isBold: true,
                      txt: "التالي",
                      onPressedHandler: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MyApplication.hightClc(context, 24),
                        bottom: MyApplication.hightClc(context, 50)),
                    child: Text(
                      "خطوة 2 من 7",
                      style: Constants.subtitleRegularFont,
                    ),
                  ),
                  const Text(
                    "سيتم اعادة ارسال الكود بعد 1:00",
                    style: Constants.subtitleRegularFont,
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                        top: MyApplication.hightClc(context, 40)),
                    child: const Text("لم تستلم الرمز حتى الآن",
                        style: Constants.subtitleFont1),
                  ),
                  const Text(
                    "إعادة إرسال",
                    style: Constants.mainTitleFont,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
