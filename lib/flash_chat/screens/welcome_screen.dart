import 'package:flutter/material.dart';
import 'package:the_complete_app_by_appbrewery/flash_chat/screens/login_screen.dart';
import 'package:the_complete_app_by_appbrewery/flash_chat/screens/registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:the_complete_app_by_appbrewery/flash_chat/components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String flashChatWelcomeScreenID = 'FlashChatWelcomeScreen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);
    controller.forward();
    controller.addListener(
      () {
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'flashChatLogo',
                  child: Container(
                    child: Image.asset('images/FlashChatLogo.png'),
                    height: 60.0,
                  ),
                ),
                TypewriterAnimatedTextKit(
                  text: ['Flash Chat'],
                  totalRepeatCount: 1000,
                  speed: Duration(milliseconds: 150),
                  textStyle: TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.black54),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              buttonTitle: 'Log In',
              buttonColor: Colors.lightBlueAccent,
              onPressed: () {
                //Go to login screen.
                Navigator.pushNamed(
                    context, FlashChatLoginScreen.flashChatLoginScreenID);
              },
            ),
            RoundedButton(
              buttonTitle: 'Register',
              buttonColor: Colors.blueAccent,
              onPressed: () {
                //Go to registration screen.
                Navigator.pushNamed(context,
                    FlashChatRegistrationScreen.flashChatRegistrationScreenID);
              },
            ),
          ],
        ),
      ),
    );
  }
}
