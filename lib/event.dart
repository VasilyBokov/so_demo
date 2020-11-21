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
<<<<<<< HEAD
    category: "прогулка",
    time: "завтра в 18:00",
=======
>>>>>>> c3c64fed6182410a515d678f368f704d9c124a28
    hostNick: "rovniy_pacan",
    description: simpleText,
    participantsLimit: 32,
    currentParticipansNumber: 26,
    images: [
<<<<<<< HEAD
      // "assets/event_images/5_km_downtown_run.jpeg",
=======
      "assets/event_images/5_km_downtown_run.jpeg",
>>>>>>> c3c64fed6182410a515d678f368f704d9c124a28
      "assets/event_images/cooking_1.jpeg",
      "assets/event_images/cooking_2.jpeg",
      "assets/event_images/cooking_3.jpeg",
    ],
    name: "Танцы в косерватории имени Ленина",
<<<<<<< HEAD
    place: "КиЛ",
=======
    place: "Консерватория имени Ленина",
>>>>>>> c3c64fed6182410a515d678f368f704d9c124a28
    participantsNicks: [
      'Mamin_sympotaga',
      'Papin_robotyaga',
      'razvod_debilov',
      'zagon_baranov'
    ],
  ),
  Event(
<<<<<<< HEAD
    id: 2,
    category: "спорт",
    time: "сегодня в 12:00",
=======
    id: 1,
>>>>>>> c3c64fed6182410a515d678f368f704d9c124a28
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
