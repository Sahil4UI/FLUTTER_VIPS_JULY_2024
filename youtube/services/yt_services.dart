
import 'package:dio/dio.dart';
class YtServices{
  String apikey="AIzaSyDTNq4jwahqCfpKqdpauhJsUNpcYPNSOHg";
  String path = "https://youtube.googleapis.com/youtube/v3/videos?part=snippet%2CcontentDetails%2Cstatistics%2Cplayer&chart=mostPopular&maxResults=20&regionCode=IN&key=";
  
  final dio = Dio();
  getHttp() async {
  final response = await dio.get(path+apikey);
      return response.data;
  }
}