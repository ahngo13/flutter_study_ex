import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_flutter/test_controller.dart';
import 'package:hello_flutter/test_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "hello world",
            style: TextStyle(fontSize: 28),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                TestWidget(),
                TextButton(
                    onPressed: () {
                      Get.find<TestController>().increase();
                    },
                    child: Text("increase")),
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Image.network(
                    "https://i.ibb.co/CwzHq4z/trans-logo-512.png",
                    width: 81,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(labelText: "이메일"),
                ),
                TextField(
                  decoration: InputDecoration(labelText: "비밀번호"),
                  obscureText: true,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("로그인"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
