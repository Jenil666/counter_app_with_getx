import 'package:counter_app_with_getx/screen/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

HomeController con = Get.put(HomeController());

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Counter App"),
          actions: [
            IconButton(onPressed: () {
              con.i.value = 0;
            }, icon: Icon(Icons.refresh),
            )
          ],
        ),
        body: Center(
          child: Obx(
            () => Text("${con.i}",style: TextStyle(fontSize: 30),),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: () {
                con.i++;
              },
              child:  Text("+1"),
            ),
            FloatingActionButton(
              onPressed: () {
                con.i--;
              },
              child: Icon(Icons.exposure_minus_1),
            ),
            FloatingActionButton(
              onPressed: () {
                con.i.value=(con.i*2).toInt();
              },
              child: Text("X2"),
            ),
            FloatingActionButton(
              onPressed: () {
                con.i.value=(con.i*3).toInt();
              },
              child:  Text("X3"),
            ),
            FloatingActionButton(
              onPressed: () {
                con.i.value=(con.i*4).toInt();
              },
              child:  Text("X4"),
            ),
          ],
        ),
      ),
    );
  }
}
