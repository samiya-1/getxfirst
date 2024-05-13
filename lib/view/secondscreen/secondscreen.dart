import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxfirst/controller/homescreencontroller.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  HomeScreenController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(controller.myNumber.value.toString())),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      controller.decrementMyNumber();
                    },
                    child: Text("-")),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      controller.incrementMyNumber();
                    },
                    child: Text("+")),
              ],
            ),
            Text("Second screen"),
            ElevatedButton(
                onPressed: () {
                  Get.changeTheme(ThemeData.dark());
                  // Get.back();
                },
                child: Text("homeScreen"))
          ],
        ),
      ),
    );
  }
}
