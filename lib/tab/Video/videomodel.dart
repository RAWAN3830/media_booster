class VideoModel{
  final String? title;
  final String? video;
  final String? poster;

  VideoModel({
    required this.title,
    required this.poster,
    required this.video
});
}

List<VideoModel> Videomodel = [
  VideoModel(
      title: '# popular',
      poster: 'assets/images/dua1.jpg',
      video: 'assets/video/v2.mp4'),

  VideoModel(
      title: '# punjabi-hit',
      poster:  'assets/images/ap3.jpg',
      video: 'assets/video/v2.mp4'),

  VideoModel(
      title: '#adity gadhvi',
      poster: 'assets/images/adity.jpg',
      video: 'assets/video/v3.mp4'),

  VideoModel(
      title: '# old',
      poster: 'assets/images/playList2.png',
      video: 'assets/video/v2.mp4'),

  VideoModel(
      title: '# pop song',
      poster:  'assets/images/music3.png',
      video: 'assets/video/v3.mp4'),

  VideoModel(
      title: '# romantic',
      poster:  'assets/images/playList4.png',
      video: 'assets/video/v1.mp4'),


  VideoModel(
      title: '# Hindi',
      poster: 'assets/images/arijit.jpeg',
      video: 'assets/video/v2.mp4'),

  VideoModel(
      title: '# drake',
      poster: 'assets/images/drake.webp',
      video: 'assets/video/v2.mp4'),

  VideoModel(
      title: '# pop song',
      poster:  'assets/images/music3.png',
      video: 'assets/video/v3.mp4'),

];
