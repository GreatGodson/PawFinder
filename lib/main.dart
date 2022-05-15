import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:paw_finder/ui/screens/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (ctx, child) {
        ScreenUtil.init(ctx);
        return Theme(
          child: child!,
          data: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: const AppBarTheme(
              color: Colors.white,
            ),
          ),
        );
      },
      home: const SplashScreen(),
    );
  }
}
