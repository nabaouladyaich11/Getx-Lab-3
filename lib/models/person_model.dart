class Person {
  final String id;
  final String firstName;
  final String lastName;
  final String email;

  Person({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
  });

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      id: json['_id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
    );
  }
}
