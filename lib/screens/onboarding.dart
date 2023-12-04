import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/colors.dart';
import '../widgets/buttons.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.mainBg,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        width: width,
        height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: width * .8,
              height: height * .4,
              child: SvgPicture.asset('assets/svgs/1.svg'),
            ),
            Text(
              'Hello!',
              style: TextStyle(
                color: AppColors.color,
                fontSize: width * .01 + 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Welcome to Sales TOP A Platform To Manage Real Estate Needs.',
              style: TextStyle(
                color: AppColors.color.withOpacity(.5),
                fontSize: width * .01 + 16,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: height * .02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RegularButton(
                  text: 'Sign Up',
                  onPressed: () {},
                  fontSize: width * .01 + 14,
                ),
                OutlinedRegularButton(
                  text: 'Login',
                  onPressed: () {},
                  fontSize: width * .01 + 14,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
