import 'api.dart';
import 'video.dart';
import 'youtube_lib.dart';

class YoutubeClass implements YoutubeLib {
  final api = YoutubeApi();

  YoutubeClass();

  @override
  Video downloadVideo(int id) {
    print('Donwloading video $id');
    return api.getVideo(id);
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
    print('Get all videos from api');
    return api.getVideos();
  }
}
