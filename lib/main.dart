import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '/constant.dart';
import '/startup_screen.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: 'Healthy',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: BackgroundColor,
            primaryColor: Colors.teal.shade100,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: const StartupScreen(),
        );
      },
    );
  }
}
