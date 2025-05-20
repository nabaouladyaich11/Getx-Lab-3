import 'package:test_app/controller/person_controller.dart';
import 'package:test_app/widgets_/person_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllUserView extends StatelessWidget {
  const AllUserView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("All Users")),
      body: GetBuilder<PersonController>(
        init: PersonController(),
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: controller.persons
                  .map((person) => PersonCard(person: person))
                  .toList(),
            ),
          );
        },
      ),
    );
  }
}

