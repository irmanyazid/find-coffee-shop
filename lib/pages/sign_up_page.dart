import 'package:coffee_shop/theme.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
          ),
          children: [
            //NOTE: TITTLE
            Container(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                'Join!\nStart your journey with us.',
                style: greenTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 50,
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(17),
              ),
              //NOTE NAMEINPUT
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Full Name',
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        TextFormField(
                          cursorColor: blackColor,
                          decoration: InputDecoration(
                            hintText: 'full name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(color: greenColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //NOTE: EMAILINPUT
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email Address',
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        TextFormField(
                          cursorColor: blackColor,
                          decoration: InputDecoration(
                            hintText: 'email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(color: greenColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //NOTE PASSWORDINPUT
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Password',
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        TextFormField(
                          cursorColor: blackColor,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(color: greenColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //NOTE: SUBMITBUTTON
                  Container(
                    width: double.infinity,
                    height: 55,
                    margin: EdgeInsets.only(top: 60),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/home-page');
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: greenColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      child: Text(
                        'Get Started',
                        style: whiteTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
