import 'package:flutter/material.dart';
import 'package:m6_project_1/service/log_service.dart';
import 'package:m6_project_1/service/utils_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Best'),
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            MaterialButton(
                onPressed: (){
                  // Utils.makePhoneCall('+99891');
                  Utils.launchInBrowser(Uri.parse('https://pub.dev/'));
                },
              child: const Text('Click Me'),
            )
          ],
        ),
      ),
    );
  }
}
