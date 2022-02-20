import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reading_mockups/screens/tinder_screen.dart';

const primaryColor = Color(0xFF5D5BE1);

class MoneyScreen extends StatelessWidget {
  const MoneyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final buttonMinWidth = screenWidth < 500.0 ? double.infinity : 500.0;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 100.0,
                width: 150.0,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/logo_money.png'),
                  fit: BoxFit.fill,
                )),
              ),
              const SizedBox(height: 40.0),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const Text(
                  'Get your Money Under Control',
                  style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Manage your expenses. Seamlessly.',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 60.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: MaterialButton(
                  height: 50.0,
                  minWidth: buttonMinWidth,
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TinderScreen())),
                  color: primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  child: const Text(
                    'Sign Up with Email ID',
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: MaterialButton(
                  height: 50.0,
                  minWidth: buttonMinWidth,
                  onPressed: () {},
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset('assets/images/google_logo.svg'),
                      const SizedBox(
                        width: 10.0,
                      ),
                      const Text(
                        ' Sign Up with Google',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
              const Text.rich(
                TextSpan(
                  text: 'Already have an account? ',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                  ),
                  children: [
                    TextSpan(
                      text: 'Si',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationThickness: 5.0,
                      ),
                    ),
                    TextSpan(text: 'g'),
                    TextSpan(
                      text: 'n In',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationThickness: 5.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
