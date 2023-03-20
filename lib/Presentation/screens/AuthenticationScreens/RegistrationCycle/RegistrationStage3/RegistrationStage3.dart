import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nasooh/Presentation/widgets/MyButton.dart';
import 'package:nasooh/Presentation/widgets/shared.dart';
import 'package:nasooh/app/Style/Icons.dart';
import '../../../../../app/constants.dart';
import '../../../../../app/utils/myApplication.dart';

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
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: 48,
                child: MyButton(
                  isBold: true,
                  txt: "التالي",
                  onPressedHandler: () {},
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 8,
                ),
                child: Text(
                  "خطوة 3 من 7",
                  style: Constants.subtitleRegularFont,
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: AppBar(
            centerTitle: false,
            leadingWidth: 70,
            title: const Text("المعلومات الشخصية"),
            leading: const myBackButton()),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          padding: EdgeInsets.only(
            top: 16,
            right: 16,
            left: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: SizedBox(
                      height: 190,
                      width: 190,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Center(
                            child: DottedBorder(
                              color: Constants.outLineColor,
                              borderType: BorderType.RRect,
                              radius: const Radius.circular(20),
                              dashPattern: const [10, 6],
                              child: Padding(
                                padding: const EdgeInsets.all(6),
                                child: Container(
                                    height: 160,
                                    width: 160,
                                    decoration: BoxDecoration(
                                        color: const Color(0XFFF8F8F9),
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    child: SvgPicture.asset(
                                      logotrans,
                                      color: Colors.transparent.withOpacity(.2),
                                    )),
                              ),
                            ),
                          ),
                          const Align(
                            alignment: Alignment.bottomRight,
                            child: CircleAvatar(
                              backgroundColor: Color(0XFF444444),
                              radius: 20,
                              child: Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 34, bottom: 24),
                    child: TextFormField(
                      decoration: Constants.setRegistrationTextInputDecoration(
                          hintText:
                              "الاسم ثلاثي باللغة العربية ..سيظهر للمستخدمين",
                          prefixIcon: SvgPicture.asset(
                            nameIcon,
                            height: 24,
                          )),
                    ),
                  ),
                  TextFormField(
                    decoration: Constants.setRegistrationTextInputDecoration(
                        hintText: "اسم المستخدم باللغة الإنجليزية...",
                        prefixIcon: SvgPicture.asset(
                          linkIcon,
                          height: 24,
                        )),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Text(
                      "سيستخدم في رابط صفحتك الشخصية: nasooh.app/ahmed",
                      style: TextStyle(
                          fontFamily: Constants.mainFont,
                          color: Color(0XFF1ABC9C),
                          fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: TextFormField(
                      decoration: Constants.setRegistrationTextInputDecoration(
                          hintText: "البريد الإلكتروني...",
                          prefixIcon: SvgPicture.asset(
                            mailLink,
                            height: 24,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: TextFormField(
                      decoration: Constants.setRegistrationTextInputDecoration(
                          hintText: "كلمة المرور...",
                          prefixIcon: SvgPicture.asset(
                            passField,
                            height: 24,
                          )),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
