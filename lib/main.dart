import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';
import 'package:food_recipe_app/screens/onboarding_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.top]).then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var screenSize = MediaQuery.of(context).size;
    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return ScreenUtilInit(
      designSize: const Size(372, 812),
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: OnboardingPage(),
        );
      },
    );
  }
}
