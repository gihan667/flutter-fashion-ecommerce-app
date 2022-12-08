import 'package:fashion_app/components/rounded_button.dart';
import 'package:fashion_app/constants.dart';
import 'package:fashion_app/size_config.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/welcome.png',
            height: SizeConfig.getScreenPropotionHeight(465),
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
                vertical: 40.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Find The\nBest Collections',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kTextColorDark,
                      fontSize: 42.0,
                    ),
                  ),
                  const Text(
                    'Get your dream item easily with FashionHub and get other intersting offer',
                    style: TextStyle(
                      color: kTextColorLight,
                      fontSize: 15.0,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: RoundedButton(
                          onTap: () {},
                          text: 'Sign Up',
                          outline: true,
                          color: kTextColorDark,
                        ),
                      ),
                      const SizedBox(
                        width: kDefaultPadding / 2,
                      ),
                      Expanded(
                        child: RoundedButton(
                          onTap: () {},
                          text: 'Sign In',
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
