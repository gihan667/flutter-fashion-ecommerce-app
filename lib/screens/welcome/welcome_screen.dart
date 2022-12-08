import 'package:fashion_app/components/rounded_button.dart';
import 'package:fashion_app/constants.dart';
import 'package:fashion_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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

          const SizedBox(
            height: 40.0,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
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

                const SizedBox(
                  height: kDefaultPadding,
                ),

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
          )
          
        ],
      ),
    );
  }
}