class Movie {
  final String title;
  final String genre;
  final String imgPoster;
  final String overview;
  final double rating;
  final int year;
  final int minute;
  final List<Cast> casts;

  Movie({
    this.title,
    this.genre,
    this.imgPoster,
    this.overview,
    this.rating,
    this.year,
    this.minute,
    this.casts,
  });
}

class Cast {
  final String name;
  final String image;

  Cast({this.name, this.image});
}

var popularMovie = [
  Movie(
    title: "Mulan",
    genre: "Action",
    imgPoster: "assets/images/mulan-poster.jpg",
    minute: 180,
    rating: 8.1,
    year: 2020,
    overview:
        "To save her ailing father from serving in the Imperial Army, a fearless young woman disguises herself as a man to battle northern invaders in China.",
    casts: [
      Cast(name: "Donnie Yen", image: "assets/cast/donnie-yen.jpg"),
      Cast(name: "Gong Li", image: "assets/cast/gong-li.jpg"),
      Cast(name: "Jet Li", image: "assets/cast/jet-li.jpg"),
      Cast(name: "Liu Yifei", image: "assets/cast/liu-yifei.jpg"),
      Cast(name: "Tzi Ma", image: "assets/cast/tzi-ma.jpg"),
      Cast(name: "Yoson An", image: "assets/cast/yoson-an.jpg"),
    ],
  ),
  Movie(
    title: "Avenger : End Game",
    genre: "Action",
    imgPoster: "assets/images/avenger-endgame-poster.jpg",
    minute: 180,
    rating: 8.1,
    year: 2019,
    overview:
        "Adrift in space with no food or water, Tony Stark sends a message to Pepper Potts as his oxygen supply starts to dwindle. Meanwhile, the remaining Avengers -- Thor, Black Widow, Captain America and Bruce Banner -- must figure out a way to bring back their vanquished allies for an epic showdown with Thanos -- the evil demigod who decimated the planet and the universe.",
    casts: [],
  ),
  Movie(
    title: "Captain Marvel",
    genre: "Action",
    imgPoster: "assets/images/captain-marvel-poster.jpg",
    minute: 180,
    rating: 8.1,
    year: 2019,
    overview:
        "Captain Marvel is an extraterrestrial Kree warrior who finds herself caught in the middle of an intergalactic battle between her people and the Skrulls. Living on Earth in 1995, she keeps having recurring memories of another life as U.S. Air Force pilot Carol Danvers. With help from Nick Fury, Captain Marvel tries to uncover the secrets of her past while harnessing her special superpowers to end the war with the evil Skrulls.",
    casts: [],
  ),
  Movie(
    title: "Iron Man",
    genre: "Action",
    imgPoster: "assets/images/iron-man-poster.jpg",
    minute: 180,
    rating: 8.1,
    year: 2019,
    overview:
        "A billionaire industrialist and genius inventor, Tony Stark (Robert Downey Jr.), is conducting weapons tests overseas, but terrorists kidnap him to force him to build a devastating weapon. Instead, he builds an armored suit and upends his captors. Returning to America, Stark refines the suit and uses it to combat crime and terrorism.",
    casts: [],
  ),
];

