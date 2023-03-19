import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nasooh/Presentation/widgets/MyButton.dart';
import 'package:nasooh/Presentation/widgets/shared.dart';
import 'package:nasooh/app/Style/Icons.dart';
import '../../../../../app/constants.dart';
import '../../../../../app/utils/myApplication.dart';

class RegistrationStage4 extends StatefulWidget {
  const RegistrationStage4({Key? key}) : super(key: key);

  @override
  State<RegistrationStage4> createState() => _RegistrationStage4State();
}

class _RegistrationStage4State extends State<RegistrationStage4> {
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
                  "خطوة 4 من 7",
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
            title: const Text("معلومات التخصص"),
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
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: TextFormField(
                      maxLength: 33,
                      decoration: Constants.setRegistrationTextInputDecoration(
                          hintText:
                              "الوصف المختصر | مثال: خبير في البرمجة والتصميم",
                          prefixIcon: SvgPicture.asset(
                            wasfIcon,
                            height: 24,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: TextFormField(
                      maxLength: 770,
                      maxLines: 6,
                      decoration: Constants.setRegistrationTextInputDecoration(
                          isParagraph: true,
                          hintText: "نبذة تعريفية...",
                          prefixIcon: SvgPicture.asset(
                            nabzaIcon,
                            height: 24,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 24,
                    ),
                    child: TextFormField(
                      decoration: Constants.setRegistrationTextInputDecoration(
                          hintText: "سنوات الخبرة...",
                          prefixIcon: SvgPicture.asset(
                            khebraIcon,
                            height: 24,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: TextFormField(
                      maxLength: 10,
                      decoration: Constants.setRegistrationTextInputDecoration(
                          hintText: "الشهادات والإنجازات...",
                          suffixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8),
                            child: SvgPicture.asset(
                              certIcaddCertIconon,
                            ),
                          ),
                          prefixIcon: SvgPicture.asset(
                            certIcon,
                            height: 24,
                          )),
                    ),
                  ),
                  Wrap(
                    children: [
                      certificates(),
                      certificates(),
                      certificates(),
                      certificates(),
                      certificates(),
                      certificates(),
                      certificates(),
                      certificates(),
                      certificates(),
                      certificates(),
                      certificates(),
                      certificates(),
                      certificates(),
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }

/////////////// returns
  Container certificates() {
    return Container(
      margin: const EdgeInsetsDirectional.only(end: 4, bottom: 4),
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
      decoration: BoxDecoration(
          color: const Color(0XFFEEEEEE),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "عضو نقابة",
            style: TextStyle(fontFamily: Constants.mainFont, fontSize: 10),
          ),
          const SizedBox(
            width: 8,
          ),
          Container(
            height: 14,
            width: 14,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: const Color(0XFF5C5E6B))),
            child: const Center(
              child: Icon(
                Icons.close_outlined,
                size: 12,
                color: Color(0XFF5C5E6B),
              ),
            ),
          )
        ],
      ),
    );
  }
}
