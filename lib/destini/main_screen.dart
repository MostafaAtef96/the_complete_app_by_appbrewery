import 'package:flutter/material.dart';
import 'package:the_complete_app_by_appbrewery/widgets/app_main_widget.dart';
import 'package:the_complete_app_by_appbrewery/destini/story_brain.dart';

class DestiniMainScreen extends StatelessWidget {
  static const String destiniHomeScreenID = 'Destini';
  @override
  Widget build(BuildContext context) {
    return AppMainWidget(
      appTitle: 'Destini',
      appWidgetTree: Scaffold(
        body: StoryPage(),
      ),
    );
  }
}

/*Step 9 - Create a new storyBrain object from the StoryBrain class.*/
StoryBrain storyBrain = StoryBrain();

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        body: Container(
          /*Step 1 - Add background.png to this Container as a background image.*/
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/DestiniBackground.png"),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
          constraints: BoxConstraints.expand(),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 12,
                  child: Center(
                    child: Text(
                      /*Step 10 - use the storyBrain to get the first story title and display it in this Text Widget.*/
                      storyBrain.getStory(),
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: FlatButton(
                    onPressed: () {
                      //Choice 1 made by user.
                      /*Step 18 - Call the nextStory() method from storyBrain and pass the number 1 as the choice made by the user.*/
                      setState(() {
                        storyBrain.nextStory(1);
                      });
                    },
                    color: Colors.red,
                    child: Text(
                      /*Step 13 - Use the storyBrain to get the text for choice 1.*/
                      storyBrain.getFirstChoice(),
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Expanded(
                  flex: 2,
                  /*Step 26 - Use a Flutter Visibility Widget to wrap this FlatButton.*/
                  /*Step 28 - Set the "visible" property of the Visibility Widget to equal the output from the buttonShouldBeVisible() method in the storyBrain.*/
                  child: Visibility(
                    visible: storyBrain.buttonShouldBeVisible(),
                    child: FlatButton(
                      onPressed: () {
                        //Choice 2 made by user.
                        /*Step 19 - Call the nextStory() method from storyBrain and pass the number 2 as the choice made by the user.*/
                        setState(() {
                          storyBrain.nextStory(2);
                        });
                      },
                      color: Colors.blue,
                      child: Text(
                        /*Step 14 - Use the storyBrain to get the text for choice 1.*/
                        storyBrain.getSecondChoice(),
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*Step 24 - Run the app and try to figure out what code you need to add to this file to make the story change when you press on the choice buttons.*/

/*
Step 29 - Run the app and test it against the Story Outline to make sure you've completed all the steps. The code for the completed app can be found here: https://github.com/londonappbrewery/destini-challenge-completed/
*/
