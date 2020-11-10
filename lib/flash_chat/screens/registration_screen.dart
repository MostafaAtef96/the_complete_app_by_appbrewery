import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:the_complete_app_by_appbrewery/flash_chat/components/rounded_button.dart';
import 'package:the_complete_app_by_appbrewery/flash_chat/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:the_complete_app_by_appbrewery/flash_chat/screens/chat_screen.dart';

class FlashChatRegistrationScreen extends StatefulWidget {
  static const String flashChatRegistrationScreenID =
      'FlashChatRegistrationScreen';
  @override
  _FlashChatRegistrationScreenState createState() =>
      _FlashChatRegistrationScreenState();
}

class _FlashChatRegistrationScreenState
    extends State<FlashChatRegistrationScreen> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  String email = "";
  String password = "";
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'flashChatLogo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/FlashChatLogo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                email = value;
              },
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Enter your email'),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              obscureText: true,
              onChanged: (value) {
                password = value;
              },
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Enter your password.'),
            ),
            SizedBox(
              height: 24.0,
            ),
            RoundedButton(
              buttonTitle: 'Register',
              buttonColor: Colors.blueAccent,
              onPressed: () async {
                try {
                  final newUser = await _auth.createUserWithEmailAndPassword(
                      email: email, password: password);
                  if (newUser != null) {
                    print(newUser);
                    Navigator.pushNamed(
                        context, FlashChatChatScreen.flashChatChatScreenID);
                  }
                } catch (e) {
                  print(e);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
