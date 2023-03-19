import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nasooh/Presentation/widgets/MyButton.dart';
import 'package:nasooh/Presentation/widgets/MyButtonOutlined.dart';
import 'package:nasooh/Presentation/widgets/shared.dart';
import 'package:nasooh/app/Style/Icons.dart';
import '../../../../../app/constants.dart';
import '../../../../../app/utils/myApplication.dart';

class RegistrationStage7 extends StatefulWidget {
  const RegistrationStage7({Key? key}) : super(key: key);

  @override
  State<RegistrationStage7> createState() => _RegistrationStage7State();
}

class _RegistrationStage7State extends State<RegistrationStage7> {
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
                child: Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsetsDirectional.only(end: 8.0),
                        child: MyButton(
                          isBold: true,
                          txt: "إتمام التسجيل",
                          onPressedHandler: () {},
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: MyButtonOutlined(
                        isBold: false,
                        txt: "تخطي",
                        onPressedHandler: () {},
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 8,
                ),
                child: Text(
                  "خطوة 7 من 7",
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
          title: const Text("معلومات إضافية"),
          leading: const myBackButton(),
        ),
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
                    child: DropDownTextField(
                      searchDecoration: InputDecoration(
                          hintText: "ابحث هنا...",
                          hintStyle: TextStyle(
                            fontFamily: Constants.mainFont,
                            fontSize: 14,
                            color: Constants.fontHintColor,
                          )),
                      listTextStyle: Constants.secondaryTitleRegularFont,
                      textStyle: Constants.secondaryTitleRegularFont,
                      enableSearch: true,
                      initialValue: "خالد",
                      dropDownList: [
                        DropDownValueModel(name: "محمد", value: "سعودي"),
                        DropDownValueModel(name: "احمد", value: "سعودي"),
                        DropDownValueModel(name: "خالد", value: "سعودي"),
                      ],
                      textFieldDecoration:
                          Constants.setRegistrationTextInputDecoration(
                              hintText: "بلد الإقامة...",
                              prefixIcon: SvgPicture.asset(
                                ipanIcon,
                                height: 24,
                              )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: DropDownTextField(
                      searchDecoration: InputDecoration(
                          hintText: "ابحث هنا...",
                          hintStyle: TextStyle(
                            fontFamily: Constants.mainFont,
                            fontSize: 14,
                            color: Constants.fontHintColor,
                          )),
                      listTextStyle: Constants.secondaryTitleRegularFont,
                      textStyle: Constants.secondaryTitleRegularFont,
                      enableSearch: true,
                      initialValue: "خالد",
                      dropDownList: [
                        DropDownValueModel(name: "محمد", value: "سعودي"),
                        DropDownValueModel(name: "احمد", value: "سعودي"),
                        DropDownValueModel(name: "خالد", value: "سعودي"),
                      ],
                      textFieldDecoration:
                          Constants.setRegistrationTextInputDecoration(
                              hintText: "مدينة الإقامة...",
                              prefixIcon: SvgPicture.asset(
                                ipanIcon,
                                height: 24,
                              )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: DropDownTextField(
                      searchDecoration: InputDecoration(
                          hintText: "ابحث هنا...",
                          hintStyle: TextStyle(
                            fontFamily: Constants.mainFont,
                            fontSize: 14,
                            color: Constants.fontHintColor,
                          )),
                      listTextStyle: Constants.secondaryTitleRegularFont,
                      textStyle: Constants.secondaryTitleRegularFont,
                      enableSearch: true,
                      initialValue: "خالد",
                      dropDownList: [
                        DropDownValueModel(name: "محمد", value: "سعودي"),
                        DropDownValueModel(name: "احمد", value: "سعودي"),
                        DropDownValueModel(name: "خالد", value: "سعودي"),
                      ],
                      textFieldDecoration:
                          Constants.setRegistrationTextInputDecoration(
                              hintText: "الجنسية...",
                              prefixIcon: SvgPicture.asset(
                                ipanIcon,
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

/////////////// returns
}