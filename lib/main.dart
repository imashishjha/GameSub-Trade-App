

import 'package:amazon_clone_updated/Common/Widgets/bottom_bar.dart';
import 'package:amazon_clone_updated/constant/global_variable.dart';
import 'package:amazon_clone_updated/features/admin/screens/admin_scree.dart';
import 'package:amazon_clone_updated/features/auth/screens/auth_screens.dart';
import 'package:amazon_clone_updated/features/auth/services/auth_service.dart';
import 'package:amazon_clone_updated/provider/user_provider.dart';
import 'package:amazon_clone_updated/routers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService=AuthService();
  @override
  void initState() {
     
    super.initState();
    authService.getUserData(context);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GameSub Trade',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
         colorScheme: const ColorScheme.light(
          primary: GlobalVariables.secondaryColor,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black)
        )
      ),


      onGenerateRoute: (settings)=>generateRoute(settings),
      home: Provider.of<UserProvider>(context).user.token.isNotEmpty
          ? Provider.of<UserProvider>(context).user.type == 'user'
              ? const BottomBar()
              : const AdminScreen()
          : const AuthScreen(),
    );
  }
}
