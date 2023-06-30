// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class User {
  final String id;
  final String name;
  final String password;
  final String address;
  final String email;
  final String type;
  final String token;
  User({
    required this.id,
    required this.name,
    required this.password,
    required this.address,
    required this.email,
    required this.type,
    required this.token,
  });

  User copyWith({
    String? id,
    String? name,
    String? password,
    String? address,
    String? email,
    String? type,
    String? token,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      password: password ?? this.password,
      address: address ?? this.address,
      email: email ?? this.email,
      type: type ?? this.type,
      token: token ?? this.token,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'password': password,
      'address': address,
      'email': email,
      'type': type,
      'token': token,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['_id'] as String,
      name: map['name'] as String,
      password: map['password'] as String,
      address: map['address'] as String,
      email: map['email'] as String,
      type: map['type'] as String,
      token: map['token'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'User(id: $id, name: $name, password: $password, address: $address, email: $email, type: $type, token: $token)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.password == password &&
        other.address == address &&
        other.email == email &&
        other.type == type &&
        other.token == token;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        password.hashCode ^
        address.hashCode ^
        email.hashCode ^
        type.hashCode ^
        token.hashCode;
  }
}
