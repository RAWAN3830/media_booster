final List<Map<String, dynamic>> topMixes = [
  {
    "title" : "Hip Hop Mix",
    "description" : "Adity_Gadhavi,Arijit_sinh",
    "image" : "assets/images/adity.jpg",
    "color" : "#EF0CAF"
  },
  {
    "title" : "Moody Mix",
    "description" :  "Joji, The Kid LAROI, Tate McRae and more...",
    "image" : "assets/images/arijit.jpeg",
    "color" : "#FFFF00"
  },
  {
    "title" : "House Mix",
    "description" :  "Martin Garrix, The Chainsmoker and more...",
    "image" : "assets/images/drake.webp",
    "color" : "#1ED760"
  },
];

final List<Map<String, dynamic>> slider = [
  {
    "title" : "30 Fresh music for you every week ",
    "image" : "assets/images/yourDiscover.png",
  },
  {
    "title" : "New songs every friday",
    "image" : "assets/images/friday.png",
  },
];

List<Map<String, dynamic>> artists = [
  {
    'image': 'assets/images/artist1.png',
    'name' : 'Drake'
  },
  {
    'image':  'assets/images/artist2.png',
    'name': 'Taylor Swift'
  },
  {
    'image': 'assets/images/artist3.png',
    'name': 'Post Malone'
  }
];

List<String> searchList = [
  'The Kid LAROI',
  'Drake',
  'Justin Bieber',
  'Joji',
  'Hip Hop',
  'Pop',
  'Top-Hits'
];


final List<Map<String, dynamic>> playList = [
  {
    'image_1': 'assets/images/playList1.png',
    'image_2': 'assets/images/playList2.png',
    'image_3': 'assets/images/playList3.png',
    'image_4': 'assets/images/playList4.png',
    'title': 'Playlist #1'
  },
  {
    'image_1': 'assets/images/playList5.png',
    'image_2': 'assets/images/playList6.png',
    'image_3': 'assets/images/playList7.png',
    'image_4': 'assets/images/playList8.png',
    'title': 'Playlist #2'
  },
  {
    'image_1': 'assets/images/playList9.png',
    'image_2': 'assets/images/playList10.png',
    'image_3': 'assets/images/playList11.png',
    'image_4': 'assets/images/playList12.png',
    'title': 'Playlist #3'
  },
  {
    'image_1': 'assets/images/playList13.png',
    'image_2': 'assets/images/playList14.png',
    'image_3': 'assets/images/playList3.png',
    'image_4': 'assets/images/playList16.png',
    'title': 'Playlist #4'
  },
];

class AudioModel{
 final String? image;
 final String? title;
 final String? description;
  // final bool? favorite;
 final String? audio;

  AudioModel(
  {
    required this.image,
    required this.title,
    required this.description,
    // required this.favorite,
    required this.audio
}
      );
}

List<AudioModel> audiolist = [
  AudioModel(
      image: 'assets/images/ap2.webp',
      title: 'Ma Belle',
      description: 'AP Dhillon',
      // favorite: false,
      audio: 'assets/audios/m1.mp3'
  ),
  AudioModel(
      image: 'assets/images/dua3.jpg',
      title: 'Wishing Well',
      description: 'Juice WLRD',
      // favorite: false,
      audio: 'assets/audios/m2.mp3'),
  AudioModel(
      image: 'assets/images/dua1.jpg',
      title: ' First Class',
      description: 'Jack Harlow',
      // favorite: false,
      audio: 'assets/audios/m3.mp3'),
  AudioModel(
      image: 'assets/images/playList9.png',
      title: 'Unstable',
      description: 'Justin Bieber, Dua Lipa',
      // favorite: false,
      audio: 'assets/audios/m4.mp3'),
  AudioModel(
      image: 'assets/images/alen4.jpg',
      title: 'Sorry',
      description: 'Justin Bieber, The Kid LAROI',
      // favorite: false,
      audio: 'assets/audios/m5.mp3')
];

