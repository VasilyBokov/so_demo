import 'package:so_demo/profile.dart';

class Event {
  final String name, description, place, hostNick, time, category;
  final int id, participantsLimit, currentParticipansNumber;
  final List<String> participantsNicks, images;
  final bool withfoto; // есть ли фото
  // Тут возникает проблема с инициализацией
  // нужно подумать, как добавлять профиль хозяина как сущность
  //final Profile hostprofile; // профиль хозяина

  Event({
    this.withfoto,
    //this.hostprofile = const [],
    this.name,
    this.category, // для отображения категории мероприятия
    this.description,
    this.place,
    this.time,
    this.id,
    this.participantsNicks,
    this.images,
    this.hostNick,
    this.participantsLimit,
    this.currentParticipansNumber,
  });
}

List<Event> events = [
  Event(
    withfoto: true,
    //hostprofile: profiles[0],
    id: 1,
    category: "прогулка",
    time: "завтра в 18:00",
    hostNick: "rovniy_pacan",
    description: simpleText,
    participantsLimit: 32,
    currentParticipansNumber: 26,
    images: [
      "assets/event_images/cooking_1.jpeg",
      "assets/event_images/cooking_2.jpeg",
      "assets/event_images/cooking_3.jpeg",
    ],
    name: "Распитие алкоголя в подвале",
    place: "КиЛ",
    participantsNicks: [
      'Mamin_sympotaga',
      'Papin_robotyaga',
      'razvod_debilov',
      'zagon_baranov'
    ],
  ),
  Event(
    withfoto: true,
    //hostprofile: profiles[0],
    id: 2,
    category: "спорт",
    time: "сегодня в 12:00",
    hostNick: "@mutniy_typ",
    description: simpleText,
    participantsLimit: 10,
    currentParticipansNumber: 6,
    images: [
      "assets/event_images/5_km_downtown_run.jpeg",
      "assets/event_images/cooking_1.jpeg",
      "assets/event_images/cooking_2.jpeg",
      "assets/event_images/cooking_3.jpeg",
    ],
    name: "Танцы в косерватории имени Ленина",
    place: "Консерватория имени Ленина",
    participantsNicks: [
      'Mamin_sympotaga',
      'Papin_robotyaga',
      'razvod_debilov',
      'zagon_baranov'
    ],
  ),
  Event(
    withfoto: true,
    //hostprofile: profiles[0],
    id: 3,
    category: "пати",
    time: "завтра в 12:00",
    hostNick: "@mutniy_typ",
    description: simpleText,
    participantsLimit: 10,
    currentParticipansNumber: 6,
    images: [
      "assets/guest_images/guest1.jpg",
      "assets/guest_images/guest2.jpg",
      "assets/guest_images/guest3.jpg",
      "assets/guest_images/guest5.jpg",
    ],
    name: "Пати полным ходом",
    place: "У Децла дома",
    participantsNicks: [
      'Mamin_sympotaga',
      'Papin_robotyaga',
      'razvod_debilov',
      'zagon_baranov'
    ],
  ),
  Event(
    withfoto: false,
    //hostprofile: profiles[0],
    id: 4,
    category: "спорт",
    time: "сегодня в 12:00",
    hostNick: "@mutniy_typ",
    description: simpleText,
    participantsLimit: 10,
    currentParticipansNumber: 6,
    images: [
      "assets/guest_images/guest1.jpg",
      "assets/guest_images/guest2.jpg",
      "assets/guest_images/guest3.jpg",
      "assets/guest_images/guest5.jpg",
    ],
    name: "Хуячим на дачу",
    place: "Моя дача в Домодедово",
    participantsNicks: [
      'Mamin_sympotaga',
      'Papin_robotyaga',
      'razvod_debilov',
      'zagon_baranov'
    ],
  ),
];
// Будет только один профиль - профиль Васи Задова

String simpleText = "Каждый из нас понимает очевидную вещь: постоянное"
    "информационно-пропагандистское обеспечение нашей деятельности создаёт "
    "предпосылки для соответствующих условий активизации.";
