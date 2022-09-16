import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first


class Person {
  String? email;
  String? password;
  String? userName;
  String? gender;
  String? height;
  String? weight;
  String? age;
  String? BMI;
  String? illness;
  Person({
    this.email,
    this.password,
    this.userName,
    this.gender,
    this.height,
    this.weight,
    this.age,
    this.BMI,
    this.illness,
  });

  Person copyWith({
    String? email,
    String? password,
    String? userName,
    String? gender,
    String? height,
    String? weight,
    String? age,
    String? BMI,
    String? illness,
  }) {
    return Person(
      email: email ?? this.email,
      password: password ?? this.password,
      userName: userName ?? this.userName,
      gender: gender ?? this.gender,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      age: age ?? this.age,
      BMI: BMI ?? this.BMI,
      illness: illness ?? this.illness,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'password': password,
      'userName': userName,
      'gender': gender,
      'height': height,
      'weight': weight,
      'age': age,
      'BMI': BMI,
      'illness': illness,
    };
  }

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      email: map['email'] != null ? map['email'] as String : null,
      password: map['password'] != null ? map['password'] as String : null,
      userName: map['userName'] != null ? map['userName'] as String : null,
      gender: map['gender'] != null ? map['gender'] as String : null,
      height: map['height'] != null ? map['height'] as String : null,
      weight: map['weight'] != null ? map['weight'] as String : null,
      age: map['age'] != null ? map['age'] as String : null,
      BMI: map['BMI'] != null ? map['BMI'] as String : null,
      illness: map['illness'] != null ? map['illness'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Person.fromJson(String source) => Person.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Person(email: $email, password: $password, userName: $userName, gender: $gender, height: $height, weight: $weight, age: $age, BMI: $BMI, illness: $illness)';
  }

  @override
  bool operator ==(covariant Person other) {
    if (identical(this, other)) return true;
  
    return 
      other.email == email &&
      other.password == password &&
      other.userName == userName &&
      other.gender == gender &&
      other.height == height &&
      other.weight == weight &&
      other.age == age &&
      other.BMI == BMI &&
      other.illness == illness;
  }

  @override
  int get hashCode {
    return email.hashCode ^
      password.hashCode ^
      userName.hashCode ^
      gender.hashCode ^
      height.hashCode ^
      weight.hashCode ^
      age.hashCode ^
      BMI.hashCode ^
      illness.hashCode;
  }
}
