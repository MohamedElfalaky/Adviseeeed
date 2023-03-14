import 'package:flutter/material.dart';
import 'package:nasooh/Presentation/widgets/MyButton.dart';
import 'package:nasooh/Presentation/widgets/shared.dart';
import 'package:nasooh/app/Style/Icons.dart';
import '../../../../../app/constants.dart';
import '../../../../../app/utils/myApplication.dart';
import 'package:pinput/pinput.dart';
import 'package:lottie/lottie.dart';

class RegistrationStage3 extends StatefulWidget {
  const RegistrationStage3({Key? key}) : super(key: key);

  @override
  State<RegistrationStage3> createState() => _RegistrationStage3State();
}

class _RegistrationStage3State extends State<RegistrationStage3> {
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
            title: const Text("المعلومات الشخصية"),
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
