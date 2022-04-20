import 'video.dart';
import 'youtube_lib.dart';

class CachedYoutubeClass implements YoutubeLib {
  final YoutubeLib service;
  final List<Video> cachedVideo = [];

  CachedYoutubeClass(this.service);

  @override
  Video downloadVideo(int id) {
    if (cachedVideo.any((video) => video.id == id)) {
      print('Get video from cache');
      return cachedVideo.where((element) => element.id == id).first;
    } else {
      final video = service.downloadVideo(id);
      cachedVideo.add(video);
      return video;
    }
  }

  @override
  void getVideoInfo(int id) {
    final video = downloadVideo(id);
    print('''
    Name: ${video.name},
    Description: ${video.description ?? "None"}
    Duration: ${video.duration}
    ''');
  }

  @override
  List<Video> listVideos() {
    if (cachedVideo.isEmpty) {
      _downloadAll();
    } else {
      print('Get videos from cache');
    }
    return cachedVideo;
  }

  void _downloadAll() {
    cachedVideo.addAll(service.listVideos());
  }

  void clearCache() {
    cachedVideo.clear();
    print('Cache was cleared');
  }
}
