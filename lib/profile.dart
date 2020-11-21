import 'package:flutter/material.dart';
import 'package:so_demo/event.dart';

class Profile {
  final String nickname, name, description, image, place, password;
  final int id, age;
  // нужно сделать список ниже не списком из строк, а списком из профилей
  // ну или как то организовать поиск среди профилей по ссылкам
  // нужно думать!
  final List<String> subscribers, subscriptions;
  final List<Event> marked;
  Profile(
      {this.id,
      this.marked = const <Event>[], // можно сюда что то добавить?
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
      marked: [events[0]],
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
      subscriptions: ['ulov_nalimov']),
  Profile(
      id: 3,
      nickname: 'rovniy_pacan',
      description: simpleText,
      image: "assets/guest_images/guest2.jpg",
      age: 14,
      name: "Хуй Длинный",
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
  Profile(
      id: 4,
      nickname: 'gnu_relsi',
      description: simpleText,
      image: "assets/guest_images/guest4.jpg",
      age: 14,
      name: "Ваш Друг",
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
    marked: [],
    nickname: 'Eva',
    description: mysimpleText,
    image: "assets/guest_images/guest3.jpg",
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
