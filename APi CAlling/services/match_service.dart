import 'package:dio/dio.dart';

class MatchService {
  final dio = Dio();
  String id_path =
      "https://api.cricapi.com/v1/players?apikey=a7233f4d-1f47-461a-92d5-899b8409091d&offset=0&search=";

  String name_path =
      "https://api.cricapi.com/v1/players_info?apikey=a7233f4d-1f47-461a-92d5-899b8409091d&id=";
  getId(String name) async {
    final response = await dio.get(id_path + name);
    return getDetails(response.data["data"][0]["id"]);
  }

  getDetails(id) async {
    final response = await dio.get(name_path + id);
    return response.data;
  }
}
