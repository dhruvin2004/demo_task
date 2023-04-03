import 'package:demo_task/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  HomeController homeController = HomeController();

  @override
  void initState() {
    super.initState();
    homeController.manageData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GetBuilder(
          init: HomeController()..manageData(),
          builder: (HomeController controller) {
            return Column(
              children: [
                Container(
                  height: Get.height * 0.1,
                  color: Colors.green,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.tempList.length,
                    itemBuilder: (context, index) {
                      return Container(
                      height: 50,
                      color: Colors.white,
                      margin: const EdgeInsets.all(5.0),
                      alignment: Alignment.center,
                      child: Text(controller.tempList[index]),
                    );
                    },
                  ),
                )
              ],
            );
          }),
    );
  }
}
