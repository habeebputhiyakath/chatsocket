import 'package:chatsocket/controller/login_provider.dart';
import 'package:chatsocket/view/login.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Socket.IO',
      debugShowCheckedModeBanner: false,
     
      home: ChangeNotifierProvider(
        create: (context) => LoginProvider(),
        child: const LoginScreen(),
      ),
    );
  }
}
