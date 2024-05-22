import 'package:belajar_get_msib/model/place_holder_post_model.dart';
import 'package:dio/dio.dart';

class AuthService {
  static final Dio dio = Dio();

  static Future<PlaceHolderPostModel> postPlaceHolder({
    required String title,
    required String body,
  }) async {
    try {
      final response = await dio.post(
        'https://jsonplaceholder.typicode.com/posts',
        data: {
          'title': title,
          'body': body,
          'userId': 1,
        },
      );

      return PlaceHolderPostModel(
        title: response.data["title"],
        body: response.data["body"],
        id: response.data["id"],
        useRId: response.data["useRId"],
      );
    } on DioException catch (e) {
      throw '$e';
    }
  }
}
