import 'package:coffee_shop/models/coffee_place.dart';
import 'package:coffee_shop/pages/details_page.dart';
import 'package:coffee_shop/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Where to coffee today?'),
        backgroundColor: greenColor,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final CoffeePlace place = coffeePlaceList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailsPage(place: place);
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      place.imageAsset,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            place.name,
                            style: blackTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: medium,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            place.city,
                            style: greyTextStyle.copyWith(
                              fontWeight: light,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: coffeePlaceList.length,
      ),
    );
  }
}
