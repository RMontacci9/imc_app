import 'package:flutter/cupertino.dart';
import 'package:imc_app/ui/ios/pages/home_page.dart';

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'IMC',
      home: HomePage(),
    );
  }
}
