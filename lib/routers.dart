

import 'package:amazon_clone_updated/Common/Widgets/bottom_bar.dart';
import 'package:amazon_clone_updated/Home/screens/home_screens.dart';
import 'package:amazon_clone_updated/features/admin/screens/add_product.dart';
import 'package:amazon_clone_updated/features/auth/screens/auth_screens.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings){
  switch(routeSettings.name){
    case AuthScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (_)=>const AuthScreen(),
      );

      case HomeScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (_)=>const HomeScreen(),
      );

      case BottomBar.routeName:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (_)=>const BottomBar(),
      );
      case AddProductScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (_)=>const AddProductScreen(),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_)=>const Scaffold(
          body: Center(
            child: Text("Screen Doesn't Exist"),
          ),
        ),
      );
  }
}