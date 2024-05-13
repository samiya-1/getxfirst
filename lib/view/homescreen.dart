import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxfirst/controller/homescreencontroller.dart';
import 'package:getxfirst/view/secondscreen/secondscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //object created to homescreencontroller class
  HomeScreenController controller = Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            GetBuilder<HomeScreenController>(
              builder: (_) => Text(controller.numb.toString()),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      controller.decrementnumb();
                    },
                    child: Text("-")),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      controller.incrementnumb();
                    },
                    child: Text("+")),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => SecondScreen());
                },
                child: Text("SecondScreen"))
          ],
        ),
      ),
    );
  }
}
