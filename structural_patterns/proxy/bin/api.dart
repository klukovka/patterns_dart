import 'video.dart';

class YoutubeApi {
  final List<Video> _videos = [
    Video(
        duration: Duration(hours: 2),
        id: 1,
        name: 'Video 1',
        description: 'description 1'),
    Video(
        duration: Duration(minutes: 3),
        id: 2,
        name: 'Video 2',
        description: 'description 2'),
    Video(
        duration: Duration(minutes: 12),
        id: 3,
        name: 'Video 3',
        description: 'description 3'),
    Video(
        duration: Duration(hours: 1, minutes: 8),
        id: 4,
        name: 'Video 4',
        description: 'description 4'),
    Video(
        duration: Duration(minutes: 9),
        id: 5,
        name: 'Video 5',
        description: 'description 5'),
    Video(
        duration: Duration(minutes: 32),
        id: 6,
        name: 'Video 6',
        description: 'description 6'),
    Video(
        duration: Duration(minutes: 12, seconds: 32),
        id: 7,
        name: 'Video 7',
        description: 'description 7'),
    Video(
        duration: Duration(hours: 1, minutes: 12, seconds: 8),
        id: 8,
        name: 'Video 8',
        description: 'description 8'),
  ];

  YoutubeApi();

  List<Video> getVideos() => _videos;

  void uploadVideo(Video video) {
    final videoWithId = video.copyWith(id: _videos.length + 1);
    _videos.add(videoWithId);
  }

  Video getVideo(int id) {
    for (final video in _videos) {
      if (video.id == id) return video;
    }
    throw Exception('Video is not exists');
  }
}
