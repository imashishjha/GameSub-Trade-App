import 'package:flutter/material.dart';


String uri= 'http://192.168.0.103:3000';

class GlobalVariables{
  static const appBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 29, 201, 192),
      Color.fromARGB(255, 125, 221, 216),
    ],
    stops: [0.5, 1.0],
  );

  static const secondaryColor = Color.fromRGBO(255, 153, 0, 1);
  static const backgroundColor = Colors.white;
  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static var selectedNavBarColor = Colors.cyan[800]!;
  static const unselectedNavBarColor = Colors.black87;

  static const List<String> carouselImages = [
    'https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/clans/1541443/b28bad827bcae670cce45e1745fc43e6dc309b22.jpg',
    'https://i.ytimg.com/vi/poZt7LJQEJw/maxresdefault.jpg',
    'https://my24hrshop.com/storage/2021/11/streaming-logos-1.jpg',
  ];

  static const List<Map<String, String>> categoryImages = [
    {
      'title': 'PUBG',
      'image': 'https://is1-ssl.mzstatic.com/image/thumb/Purple128/v4/56/4c/83/564c83e1-8e02-e783-7156-096e8a1c8874/source/512x512bb.jpg',
    },
    {
      'title': 'Valorant',
      'image': 'https://yoolk.ninja/wp-content/uploads/2020/06/Games-Valorant-1024x1024.png',
    },
    {
      'title': 'Netflix',
      'image': 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Netflix_icon.svg/1200px-Netflix_icon.svg.png',
    },
    {
      'title': 'Hotstar',
      'image': 'https://lh3.googleusercontent.com/9q7hvJqLpVHYlJH-E1uKBEIf52DTbjmiCTemAFh5MyCK74jBTi3wucTdKkjTGVXC4zM',
    },
    {
      'title': 'CS:GO',
      'image': 'https://raw.githubusercontent.com/Tenrys/csgo_richpresence/master/img/csgo_icon.png',
    },

    {
      'title': 'Amazon',
      'image': 'https://extretechec.com/wp-content/uploads/2021/05/prime-video.png',
    },
    {
      'title': 'Free Fire',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb2azvMfxdlTbxWpZF1UCEcoohS5a31Azi2w&usqp=CAU',
    },
  ];
}