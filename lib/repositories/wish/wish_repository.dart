import 'package:dio/dio.dart';

import '../repositories.dart';

class WishRepository implements AbstractWishRepository {
  final Dio dio;

  WishRepository({required this.dio});

  @override
  Future<List<Wish>> getWishList() async {
    try {
      final response = await dio.get('http://10.0.2.2:3000/api/wish');
      List<dynamic> wishList = response.data;

      return wishList.map((item) => Wish.fromJson(item)).toList();
    } catch (error) {
      print(error);
      throw Exception(error);
    }
  }

  @override
  Future<Wish> getWish(int id) async {
    try {
      final response = await dio.get('http://10.0.2.2:3000/api/wish/$id');
      dynamic data = response.data;

      return Wish.fromJson(data);
    } catch (error) {
      throw Exception(error);
    }
  }
}
