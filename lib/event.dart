class Event {
  final String name, description, place, hostNick, time, category;
  final int id, participantsLimit, currentParticipansNumber;
  final List<String> participantsNicks, images;

  Event({
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
    id: 1,
    category: "прогулка",
    time: "завтра в 18:00",
    hostNick: "rovniy_pacan",
    description: simpleText,
    participantsLimit: 32,
    currentParticipansNumber: 26,
    images: [
      // "assets/event_images/5_km_downtown_run.jpeg",
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
];
// Будет только один профиль - профиль Васи Задова

String simpleText = "Каждый из нас понимает очевидную вещь: постоянное"
    "информационно-пропагандистское обеспечение нашей деятельности создаёт "
    "предпосылки для соответствующих условий активизации.";
