import 'dart:convert';

class User {
  final String id;
  final String name;
  final String email;
  final String password;
  final String token;
  User({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'token': token,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['user'][0]['_id'] ?? '',
      name: map['user'][0]['userName'] ?? '',
      email: map['user'][0]['email'] ?? '',
      password: map['user'][0]['password'] ?? '',
      token: map['authToken'] ?? '',
    );
  }

  factory User.fromMapT(Map<String, dynamic> map, String tkn) {
    return User(
      id: map['user']['_id'] ?? '',
      name: map['user']['userName'] ?? '',
      email: map['user']['email'] ?? '',
      password: map['user']['password'] ?? '',
      token: tkn ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  factory User.fromJsonT(String source, String tkn) => User.fromMapT(json.decode(source), tkn);

  User copyWith({
    String? id,
    String? name,
    String? email,
    String? password,
    String? token,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      token: token ?? this.token,
    );
  }
}