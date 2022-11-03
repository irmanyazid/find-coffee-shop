class CoffeePlace {
  String name;
  String city;
  double rating;
  String price;
  String food;
  String time;
  String imageAsset;
  String imagePhoto1;
  String imagePhoto2;
  String imagePhoto3;
  String location;
  String phone;

  CoffeePlace({
    required this.name,
    required this.city,
    required this.rating,
    required this.price,
    required this.food,
    required this.time,
    required this.imageAsset,
    required this.imagePhoto1,
    required this.imagePhoto2,
    required this.imagePhoto3,
    required this.location,
    required this.phone,
  });
}

var coffeePlaceList = [
  CoffeePlace(
    name: 'Third Wave Coffee',
    city: 'Bogor',
    rating: 5.0,
    price: 'Rp 18.000 - \nRp 45.000',
    food: 'American, Eropa Food',
    time: '10.00 - \n21.000',
    imageAsset: 'assets/image_destination6.png',
    imagePhoto1: 'assets/TW1.png',
    imagePhoto2: 'assets/TW2.png',
    imagePhoto3: 'assets/TW3.png',
    location: 'Jl.Prof.DR.H.Andi Hakim Nasoetion No.1 \nTegallega, Bogor',
    phone: '+628158156506',
  ),
  CoffeePlace(
    name: 'Baked & Brewed Coffee',
    city: 'Bogor',
    rating: 4.5,
    price: 'Rp 15.000 - \nRp 40.000',
    food: 'Asian Food',
    time: '08.00 - \n22.000',
    imageAsset: 'assets/image_destination1.png',
    imagePhoto1: 'assets/BBC1.png',
    imagePhoto2: 'assets/BBC2.png',
    imagePhoto3: 'assets/BBC3.png',
    location: 'Jalan Salak No.6 \nBabakan, Bogor',
    phone: '+628998580303',
  ),
  CoffeePlace(
    name: 'Popolo Coffee',
    city: 'Bogor',
    rating: 4.5,
    price: 'Rp 13.000 - \nRp 50.000',
    food: 'Asian Food',
    time: '10.00 - \n22.000',
    imageAsset: 'assets/image_destination5.png',
    imagePhoto1: 'assets/P1.png',
    imagePhoto2: 'assets/P2.png',
    imagePhoto3: 'assets/P3.png',
    location: 'Jln. Loader No. 9, \nBogor',
    phone: '+62811110225',
  ),
  CoffeePlace(
    name: 'Dailydose Coffee',
    city: 'Bogor',
    rating: 4.5,
    price: 'Rp 15.000 - \nRp 40.000',
    food: 'Asian, Eropa Food',
    time: '10.00 - \n22.000',
    imageAsset: 'assets/image_destination3.png',
    imagePhoto1: 'assets/DDC1.png',
    imagePhoto2: 'assets/DDC2.png',
    imagePhoto3: 'assets/DDC3.png',
    location: 'Jl.Pandu Raya 141a, \nBogor',
    phone: '+6285925120268',
  ),
  CoffeePlace(
    name: 'Raindear Coffee',
    city: 'Bogor',
    rating: 4.0,
    price: 'Rp 20.000 - \nRp 50.000',
    food: 'Asian, American Food',
    time: '11.00 - \n21.000',
    imageAsset: 'assets/image_destination2.png',
    imagePhoto1: 'assets/RC1.png',
    imagePhoto2: 'assets/RC2.png',
    imagePhoto3: 'assets/RC3.png',
    location: 'Jl.BinaMarga I No.7, \nBaranangsiang, Bogor',
    phone: '+6282111789089',
  ),
  CoffeePlace(
    name: 'Awal Mula Coffee',
    city: 'Bogor',
    rating: 3.5,
    price: 'Rp 12.000 - \nRp 40.000',
    food: 'Asian Food',
    time: '09.00 - \n21.000',
    imageAsset: 'assets/image_destination4.png',
    imagePhoto1: 'assets/aw1.png',
    imagePhoto2: 'assets/aw2.png',
    imagePhoto3: 'assets/aw3.png',
    location: 'Jl.Binamarga II No.5A \nBaranangsiang, Bogor',
    phone: '+6281808031088',
  ),
];
