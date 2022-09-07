import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/screens/quiz/quiz_screen.dart';
import 'package:websafe_svg/websafe_svg.dart';
import '../../constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        // WebsafeSvg.asset("assets/icons/bgimg.svg", fit: BoxFit.contain),

        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal:
                    kDefaultPadding), //using defaultpadding values from constants.dart
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(flex: 2), //it will take 2/6 specs
                Text(
                  "Lets play quiz",
                  style: GoogleFonts.caveat(
                    textStyle: Theme.of(context).textTheme.headline2!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                Image.asset(
                  "assets/icons/quiz.gif",
                  height: 125.0,
                  width: 125.0,
                ),
                Text(
                  "Enter your informations below",
                  style: GoogleFonts.caveat(
                    textStyle: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(), //it will take 1/6 specs
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xff8a0cf8),
                    hintText: "Full Name",
                    hintStyle: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'Raleway',
                        color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                  ),
                ),
                Spacer(), //it will take 1/6 specs
                InkWell(
                  onTap: () => Get.to(QuizScreen()),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                    decoration: BoxDecoration(
                      gradient: kPrimaryGradient,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Text(
                      "Lets Start Quiz",
                      style: GoogleFonts.caveat(
                        textStyle: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Spacer(flex: 2), //it will take 2/6 specs
              ],
            ),
          ),
        )
      ]),
    );
  }
}
