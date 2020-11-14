import 'package:flutter/material.dart';

class Profile {
  final String nickname, name, description, image, place, password;
  final int id, age;
  final List<String> subscribers, subscriptions;
  Profile(
      {this.id,
      this.nickname,
      this.name,
      this.description,
      this.image,
      this.age,
      this.place,
      this.subscribers,
      this.subscriptions,
      this.password = "qwerty"});
}

// Будет только один профиль - профиль Васи Задова
List<Profile> profiles = [
  Profile(
      id: 2,
      nickname: 'vasia_zadov',
      description: simpleText,
      image: "assets/guest_images/guest1.jpg",
      age: 14,
      name: "Василевс Задовcкий",
      place: "Москва",
      subscribers: [
        'Mamin_sympotaga',
        'Papin_robotyaga',
        'razvod_debilov',
        'zagon_baranov'
      ],
      subscriptions: [
        'ulov_nalimov'
      ]),
];

String simpleText = "Описание пользователя какой он хороший человек";

Profile myprofile = Profile(
    id: 1,
    nickname: 'Eva',
    description: mysimpleText,
    image: "assets/guest_images/guest2.jpg",
    age: 25,
    name: "Ева Абрикосова",
    place: "Москва",
    subscribers: [
      'Mamin_sympotaga',
      'Papin_robotyaga',
      'razvod_debilov',
      'zagon_baranov'
    ],
    subscriptions: ['olga_ananasova'],
    password: "mama");

String mysimpleText = "Каждый делает то что";
