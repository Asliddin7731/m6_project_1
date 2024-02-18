import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

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
        width: double.infinity,
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              height: 40,
              minWidth: double.infinity,
              color: Colors.blue,
                onPressed: (){

                },
              child: const Text('str_packages').tr(),
            ),
            MaterialButton(
              height: 40,
              minWidth: double.infinity,
              color: Colors.blue,
              onPressed: (){

              },
              child: const Text('str_localization').tr(),
            ),
            MaterialButton(
              height: 40,
              minWidth: double.infinity,
              color: Colors.blue,
              onPressed: (){

              },
              child: const Text('str_local_databases').tr(),
            ),
            MaterialButton(
              height: 40,
              minWidth: double.infinity,
              color: Colors.blue,
              onPressed: (){

              },
              child: const Text('str_networking').tr(),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  minWidth: 100,
                  height: 40,
                  color: Colors.orange,
                  onPressed: (){
                    context.setLocale(const Locale('uz', 'UZ'));
                  },
                  child: const Text('Uzbek'),
                ),
                MaterialButton(
                  minWidth: 100,
                  height: 40,
                  color: Colors.red,
                  onPressed: (){
                    context.setLocale(const Locale('ru', 'RU'));
                  },
                  child: const Text('Russia'),
                ),
                MaterialButton(
                  minWidth: 100,
                  height: 40,
                  color: Colors.green,
                  onPressed: (){
                    context.setLocale(const Locale('en', 'US'));
                  },
                  child: const Text('English'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
