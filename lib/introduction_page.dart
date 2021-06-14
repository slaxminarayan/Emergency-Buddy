import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import './authantication_wrapper.dart';

class IntroductionPage extends StatelessWidget {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Image.asset('assets/emergencybutton.png'),
        title: 'Emergency Buddy',
        body: 'Welcome to Emergency Buddy Application',
        footer: Text(
          'This application is build with the mindset to reduce the delay between Needy/Victim and Emergency Service Provider',
          style: TextStyle(
            fontSize: 16,
          ),
          textAlign: TextAlign.justify,
        ),
        decoration: const PageDecoration(
          pageColor: Colors.yellow,
        ),
      ),
      PageViewModel(
        image: Image.asset("assets/police.png"),
        title: 'Police',
        body:
            'Whenever you are in need, you can press the button and a message will be send to Police with your current location so they can reach out to you ASAP',
      ),
      PageViewModel(
        image: Image.asset("assets/wis.png"),
        title: 'Women\'s Helpline',
        body:
            'Whenever you are in need, you can press the button and a message will be send on Women Helpline Number with your current location so they can reach out to you ASAP',
      ),
      PageViewModel(
        image: Image.asset("assets/fb.png"),
        title: 'Fire Brigade',
        body:
            'Whenever you are in need, you can press the button and a message will be send to Fire Brigade with your current location so they can reach out to you ASAP',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IntroductionScreen(
          globalBackgroundColor: Colors.white,
          pages: getPages(),
          showNextButton: true,
          showSkipButton: true,
          next: Text('next'),
          skip: Text('Skip'),
          done: Text('Got it '),
          onDone: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) =>
                        AuthanticationWrapper()));
          },
        ),
      ),
    );
  }
}
