import 'package:flutter/material.dart';
import 'package:the_complete_app_by_appbrewery/flash_chat/components/rounded_button.dart';
import 'package:the_complete_app_by_appbrewery/flash_chat/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:the_complete_app_by_appbrewery/flash_chat/screens/chat_screen.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class FlashChatLoginScreen extends StatefulWidget {
  static const String flashChatLoginScreenID = 'FlashChatLoginScreen';
  @override
  _FlashChatLoginScreenState createState() => _FlashChatLoginScreenState();
}

class _FlashChatLoginScreenState extends State<FlashChatLoginScreen> {
  bool showSpinner = false;
  String email = "";
  String password = "";
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                child: Hero(
                  tag: 'flashChatLogo',
                  child: Container(
                    height: 200.0,
                    child: Image.asset('images/FlashChatLogo.png'),
                  ),
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
                buttonTitle: 'Log In',
                buttonColor: Colors.lightBlueAccent,
                onPressed: () async {
                  setState(() {
                    showSpinner = true;
                  });
                  try {
                    final signInResult = await _auth.signInWithEmailAndPassword(
                        email: email, password: password);
                    final User loggedInUSer = signInResult.user;
                    if (loggedInUSer != null) {
                      Navigator.pushNamed(
                          context, FlashChatChatScreen.flashChatChatScreenID);
                      setState(() {
                        showSpinner = false;
                      });
                    }
                  } catch (e) {
                    print(e);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
