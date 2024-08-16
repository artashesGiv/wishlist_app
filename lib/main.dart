import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:wishlist/app/app.dart';
import 'package:wishlist/repositories/repositories.dart';

void main() {
  final dio = Dio();

  // Initialize repositories
  GetIt.I.registerLazySingleton<AbstractWishRepository>(
    () => WishRepository(dio: dio),
  );

  runApp(const App());
}
