
import 'package:ecommerce_project/authentication/widget_Tree.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            bottomNavigationBarTheme:
                const BottomNavigationBarThemeData(backgroundColor: Colors.red),
            appBarTheme:
                 const AppBarTheme(backgroundColor: Color(0xFF00B212D)),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF00B212D)),
            ),
          ),
          home: const WidgetTree()),
      designSize: const Size(1080, 2340),
    );
  }
}
