import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quizapp/screens/quiz/components/body.dart';
import 'package:quizapp/screens/quiz/quiz_screen.dart';
import 'package:quizapp/screens/welcome/welcome_screen.dart';
import '../../controllers/question_controller.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // SvgPicture.asset("assets/icons/bgimg.svg", fit: BoxFit.fill),
          Column(
            children: [
              Spacer(flex: 2),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(color: kSecondaryColor),
              ),
              Spacer(),
              Text(
                "${_qnController.correctAns * 10}/${_qnController.questions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: kSecondaryColor),
              ),
              Spacer(flex: 2),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // background
                  onPrimary: Colors.white,

                  // foreground
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WelcomeScreen()),
                  );
                },
                child: Text(
                  'Clear',
                  style: TextStyle(
                    fontSize: 40.0,
                    letterSpacing: 5,
                  ),
                ),
              ),
              Spacer(flex: 2),
            ],
          ),
        ],
      ),
    );
  }
}
