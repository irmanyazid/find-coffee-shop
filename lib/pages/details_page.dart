import 'package:coffee_shop/models/coffee_place.dart';
import 'package:coffee_shop/theme.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final CoffeePlace place;

  const DetailsPage({Key? key, required this.place}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  bool isClicked = false;

  Future<void> _launchTel(String url) async {
    final Uri uri = Uri(scheme: "tel", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          Image.asset(
            widget.place.imageAsset,
            width: MediaQuery.of(context).size.width,
            height: 400,
            fit: BoxFit.cover,
          ),
          ListView(
            children: [
              SizedBox(
                height: 328,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  color: whiteColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    //NOTE: TITLE
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.place.name,
                                  style: blackTextStyle.copyWith(
                                    fontSize: 22,
                                    fontWeight: medium,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  widget.place.city,
                                  style: greyTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: light,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                margin: EdgeInsets.only(right: 2),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/icon_star.png',
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                widget.place.rating.toString(),
                                style: blackTextStyle.copyWith(
                                  fontWeight: medium,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    //NOTE: DETAILS
                    Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Text(
                        'Details',
                        style: regulerTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: reguler,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/icon_wallet.png',
                                  width: 32,
                                  height: 32,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  widget.place.price,
                                  style: greyTextStyle.copyWith(
                                    fontWeight: light,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/icon_food.png',
                                  width: 32,
                                  height: 32,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  widget.place.food,
                                  style: greyTextStyle.copyWith(
                                    fontWeight: light,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/icon_time.png',
                                  width: 32,
                                  height: 32,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  widget.place.time,
                                  style: greyTextStyle.copyWith(
                                    fontWeight: light,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    //NOTE: PHOTO
                    Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Text(
                        'Photo',
                        style: regulerTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: reguler,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 24),
                      height: 88,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(4),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                widget.place.imagePhoto1,
                                width: 110,
                                height: 88,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(4),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                widget.place.imagePhoto2,
                                width: 110,
                                height: 88,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(4),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                widget.place.imagePhoto3,
                                width: 110,
                                height: 88,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //NOTE: LOCATION
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Text(
                        'Location',
                        style: regulerTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: reguler,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.place.location,
                            style: greyTextStyle,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      margin: EdgeInsets.all(24),
                      child: ElevatedButton(
                        onPressed: () {
                          _launchTel(widget.place.phone);
                        },
                        child: Text(
                          'Reservation Now',
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
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 55,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/btn_back.png',
                    width: 40,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isClicked = !isClicked;
                    });
                  },
                  child: Image.asset(
                    isClicked
                        ? 'assets/btn_wishlist_active.png'
                        : 'assets/btn_wishlist.png',
                    width: 40,
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
