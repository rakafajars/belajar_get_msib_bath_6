import 'package:belajar_get_msib/login_page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:'.toUpperCase()),
            Text(GetUtils.capitalize(
                    'you have pushed the button this many times:') ??
                ""),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // const snackBar = SnackBar(
          //   content: Text('Yay! A SnackBar!'),
          // );

          // // Find the ScaffoldMessenger in the widget tree
          // // and use it to show a SnackBar.
          // ScaffoldMessenger.of(context).showSnackBar(snackBar);
          // Get.snackbar(
          //   'Haloo',
          //   '',
          //   backgroundColor: Colors.red,
          //   messageText: const Text('alalaao11231'),
          //   mainButton: TextButton(
          //     onPressed: () {
          //       // Navigator.pop(context);
          //       Get.back();
          //     },
          //     child: const Text(
          //       'Close',
          //     ),
          //   ),
          // );

          // showDialog(
          //   context: context,
          //   builder: (context) => Dialog(
          //     child: Text('aaaaa'),
          //   ),
          // );

          // Get.dialog(
          //   Dialog(
          //     child: Text('haloo'),
          //   ),
          // );

          // showModalBottomSheet(
          //   context: context,
          //   builder: (context) => Container(
          //     height: 500,
          //     width: double.infinity,
          //   ),
          // );

          // Get.bottomSheet(
          //   Container(
          //     height: 500,
          //     width: double.infinity,
          //     decoration: const BoxDecoration(
          //       borderRadius: BorderRadius.only(
          //         topLeft: Radius.circular(16),
          //         topRight: Radius.circular(16),
          //       ),
          //       color: Colors.red,
          //     ),
          //   ),
          // );
          // Get.to(DetailProductPage());
          // Navigator.push(context, MaterialPageRoute(builder: (context) => DetailProductPage()));
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
