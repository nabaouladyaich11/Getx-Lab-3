import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/home_controller.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller =Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        // GetBuilder way => rebuild

        // child: GetBuilder<HomeController>(
        //   init: HomeController(),
        //   builder: (controller) {
        //     return Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: <Widget>[
        //         const Text('You have pushed the button this many times:'),
        //         Text(
        //           '${controller.counter}',
        //           style: Theme.of(context).textTheme.headlineMedium,
        //         ),
        //         ElevatedButton(
        //           onPressed: () {
        //             controller.incrementCounter();
        //           },
        //           child: const Text('+'),
        //         ),
        //         SizedBox(height: 10,),
        //         ElevatedButton(
        //           onPressed: () {
        //             controller.dencrementCounter();
        //           },
        //           child: const Text('-'),
        //         )
        //       ],
        //     );
        //   },
        // ),

        // GetX WAY => stream

        //  child: GetX<HomeController>(
        //   init: HomeController(),
        //   builder: (controller) {
        //     return Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: <Widget>[
        //         const Text('You have pushed the button this many times:'),
        //         Text(
        //           '${controller.counter}',
        //           style: Theme.of(context).textTheme.headlineMedium,
        //         ),
        //         ElevatedButton(
        //           onPressed: () {
        //             controller.incrementCounter();
        //           },
        //           child: const Text('+'),
        //         ),
        //         SizedBox(height: 10,),
        //         ElevatedButton(
        //           onPressed: () {
        //             controller.dencrementCounter();
        //           },
        //           child: const Text('-'),
        //         )
        //       ],
        //     );
        //   },
        // ),

        // Obx WAY
        child: Obx(() => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '${controller.counter}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
              onPressed: () {
                controller.incrementCounter();
              },
              child: const Text('+'),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {
                controller.decremntCounter();
              },
              child: const Text('-'),
            )
          ],
        )),

      ),
    );
  }
}