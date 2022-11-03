import 'package:coffee_shop/theme.dart';
import 'package:flutter/material.dart';

class StartedPage extends StatelessWidget {
  const StartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset('assets/bg_kopi.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 70,
              left: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/logo.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Find Coffee Shop\nenjoy your life with\na cup of coffee',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Selalu ada cerita di setiap tegukan.\nKlik and explore!',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  width: 210,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign-up');
                    },
                    child: Text(
                      'Explore Now',
                      style: whiteTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: greenColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
