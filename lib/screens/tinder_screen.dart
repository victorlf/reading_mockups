import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TinderScreen extends StatelessWidget {
  const TinderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEB5B6E),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new_sharp, size: 24.0),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Container(
              height: 50.0,
              width: 200.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo_tinder.png'),
                      fit: BoxFit.fill)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: const Text.rich(
                TextSpan(
                  text:
                      'By tapping Create Account or Sign In, you agree to our ',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                  ),
                  children: [
                    TextSpan(
                      text: 'Terms. ',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                    TextSpan(text: 'Learn how we process your data in our '),
                    TextSpan(
                      text: 'Privacy Policy ',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: 'and '),
                    TextSpan(
                      text: 'Cookies Policy',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: '.'),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            HomeScreenButton(text: 'APPLE', icon: FontAwesomeIcons.apple),
            const SizedBox(
              height: 10.0,
            ),
            HomeScreenButton(text: 'FACEBOOK', icon: Icons.facebook),
            const SizedBox(
              height: 10.0,
            ),
            HomeScreenButton(text: 'PHONE NUMBER', icon: Icons.sms),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Trouble Signing in?',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreenButton extends StatelessWidget {
  final String text;
  final IconData icon;
  const HomeScreenButton({Key? key, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: MaterialButton(
        height: 50.0,
        minWidth: double.infinity,
        onPressed: () {},
        shape: RoundedRectangleBorder(
            side: const BorderSide(width: 2.0, color: Colors.white),
            borderRadius: BorderRadius.circular(20.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              size: 24.0,
            ),
            Text(
              'SIGN IN WITH $text',
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              width: 24,
            ),
          ],
        ),
      ),
    );
  }
}
