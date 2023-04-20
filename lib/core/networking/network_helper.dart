import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';
import '../constants/constans.dart';
import 'exceptions.dart';

class NoInternetException implements Exception {
  final String message;

  NoInternetException(this.message);

  @override
  String toString() => message;
}

class NetworkHelper {
  Future<dynamic> get(String url) async {
    if (!(await InternetConnectionChecker().hasConnection)) {
      throw NoInternetException('No internet connection');
    }
    Uri uri = Uri.parse(Constants.baseUrl + url);
    dynamic responseJson;
    // api key
    Map<String, String> headers = {'X-RapidAPI-Key': Constants.apiKey};
    try {
      var response = await http
          .get(uri, headers: headers)
          .timeout(const Duration(seconds: 60));
      responseJson = _returnResponse(response);
    } catch (_) {}
    return responseJson;
  }

  dynamic _returnResponse(http.Response response) async {
    switch (response.statusCode) {
      case 200:
      case 201:
        var responseJson = json.decode(response.body.toString());
        return responseJson;
      case 400:
        throw BadRequestFailure(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedFailure(response.body.toString());
      case 500:
      default:
        throw FetchDataFailure(
            'Error occurred with the Server , StatusCode : ${response.statusCode}');
    }
  }
}
