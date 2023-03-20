import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nasooh/Presentation/screens/AuthenticationScreens/LoginScreen/loginscreen.dart';
import 'package:nasooh/Presentation/widgets/MyButton.dart';
import 'package:nasooh/app/Style/Icons.dart';
import 'package:nasooh/app/constants.dart';
import 'package:nasooh/app/utils/lang/language_constants.dart';
import 'package:nasooh/app/utils/myApplication.dart';

class OnBoarding extends StatelessWidget {
  OnBoarding();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      }, // hide keyboard on tap anywhere

      child: Stack(
        children: [
          Center(
            child: Image.asset(
              onBoardingPNGbk,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Scaffold(
              backgroundColor: Colors.transparent,
              body: Container(
                  height: MyApplication.hightClc(context, 812),
                  // معدتش هتحتاجها الكونتينر بقى لعمل مارجن ف الاول بس لتخطيط الصفحة
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                  child: Column(
                    // shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(
                        height: 80,
                      ),
                      Center(
                        child: SvgPicture.asset(logoo),
                      ),
                      const SizedBox(
                        height: 34,
                      ),
                      SizedBox(
                          height: 150,
                          child: SvgPicture.asset(
                            onBoardingg,
                            color: Colors.amber,
                          )),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 25),
                        child: Text(
                          getTranslated(context,
                              "تبغى نصيحة ممتازة من شخص فاهم بمجاله بسعر أنت تحدده ويرد عليك بسرعة؟")!,
                          style: Constants.headerNavigationFont,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 25),
                        child: Text(
                          getTranslated(context,
                              "تطبيق نصوح يساعدك في الحصول على إجابة وافية لكل سؤال")!,
                          style: Constants.subtitleFont1,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      SizedBox(
                        height: 48,
                        child: MyButton(
                          txt: "ابدأ الآن",
                          isBold: true,
                          onPressedHandler: () {
                            MyApplication.navigateToReplace(
                                context, const LoginScreen());
                          },
                        ),
                      )
                    ],
                  ))),
        ],
      ),
    );
  }
}
