import 'package:get/get.dart';
import '../models/person_model.dart';

class PersonController extends GetxController {
  List<Person> persons = [];

  @override
  void onInit() {
    super.onInit();
    getAllUsers();
  }


  String displayName(String id) {
    final person = persons.firstWhereOrNull((p) => p.id == id);
    return person?.firstName ?? 'User not found';
  }


  // TOO DO HERE : DISPLAY THE




  void getAllUsers() {
    final data = [
      {
        "_id": "1",
        "first_name": "Kimmie",
        "last_name": "Vinkemulder",
        "email": "kimmievinkemulder@geckologic.com",
      },
      {
        "_id": "2",
        "first_name": "Frederic",
        "last_name": "Stark",
        "email": "fredericstark@geckologic.com",
      },
      {
        "_id": "3",
        "first_name": "Lauren",
        "last_name": "Marchan",
        "email": "laurenmarchan@geckologic.com",
      },
      {
        "_id": "4",
        "first_name": "Kisha",
        "last_name": "Hatfield",
        "email": "kishahatfield@geckologic.com",
      },
      {
        "_id": "5",
        "first_name": "Aileen",
        "last_name": "Choy",
        "email": "aileenchoy@geckologic.com",
      },


      {
        "_id": "6",
        "first_name": "Naba",
        "last_name": "AbdulRhman",
        "email": "naba@geckologic.com",
      },

      {
        "_id": "7",
        "first_name": "rana",
        "last_name": "ali",
        "email": "rana@geckologic.com",
      },


      {

        "_id": "8",
        "first_name": "Renad",
        "last_name": "Yasser",
        "email": "Renad@geckologic.com",

      },


      {

        "_id": "9",
        "first_name": "Lujain",
        "last_name": "Bougs",
        "email": "LOLO@geckologic.com",

      },


    ];

    persons = data.map((p) => Person.fromJson(p)).toList();
    update();
  }
}
