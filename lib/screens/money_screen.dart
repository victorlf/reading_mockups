import 'package:flutter/material.dart';
import 'package:reading_mockups/screens/tinder_screen.dart';

const primaryColor = Color(0xFF5D5BE1);

class MoneyScreen extends StatelessWidget {
  const MoneyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/logo_money.png'),
                  fit: BoxFit.fill,
                )),
              ),
              SizedBox(height: 40.0),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const Text(
                  'Get your Money Under Control',
                  style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Manage your expenses. Seamlessly.',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 60.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: MaterialButton(
                  height: 50.0,
                  minWidth: double.infinity,
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TinderScreen())),
                  color: primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Text(
                    'Sign Up with Email ID',
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: MaterialButton(
                  height: 50.0,
                  minWidth: double.infinity,
                  onPressed: () {},
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Text(
                    'Sign Up with Google',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Text.rich(
                TextSpan(
                  text: 'Already have an account? ',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                  ),
                  children: [
                    TextSpan(
                      text: 'Sign In',
                      style: TextStyle(decoration: TextDecoration.underline),
                    )
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
