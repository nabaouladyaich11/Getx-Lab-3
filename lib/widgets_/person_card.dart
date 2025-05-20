import 'package:test_app/models/person_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/person_controller.dart';

class PersonCard extends StatelessWidget {
  const PersonCard({super.key, required this.person});

  final Person person;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<PersonController>();

    return Center(
      child: Container(
        width: 200,
        height: 100,
        decoration: const BoxDecoration(color: Colors.amber),
        alignment: Alignment.center,
        child: Text(
          controller.displayName(person.id), // ONLY  name
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
